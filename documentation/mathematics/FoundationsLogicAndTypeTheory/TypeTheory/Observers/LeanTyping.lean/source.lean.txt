import Lean

/-! Candidate compiler observation producer pinned to Lean 4.33.0.
Local source is freshly elaborated. Imports use their cached objects. Context
extension inventories and proof acceptance remain explicitly incomplete. -/
open Lean Lean.Elab
namespace LeanTyping
def obj := Json.mkObj
def str (s : String) := toJson s
def nat (n : Nat) := toJson n
def names (ns : Array Name) := toJson (ns.map toString)
partial def nameJson : Name → Json
  | .anonymous => obj [("tag", str "anonymous")]
  | .str p s => obj [("tag", str "str"), ("prefix", nameJson p), ("value", str s)]
  | .num p n => obj [("tag", str "num"), ("prefix", nameJson p), ("value", nat n)]
partial def levelJson : Level → Json
  | .zero => obj [("tag", str "zero")]
  | .succ l => obj [("tag", str "succ"), ("level", levelJson l)]
  | .max a b => obj [("tag", str "max"), ("left", levelJson a), ("right", levelJson b)]
  | .imax a b => obj [("tag", str "imax"), ("left", levelJson a), ("right", levelJson b)]
  | .param n => obj [("tag", str "param"), ("name", nameJson n)]
  | .mvar n => obj [("tag", str "mvar"), ("name", nameJson n.name)]
def binderJson : BinderInfo → Json
  | .default => str "explicit"
  | .implicit => str "implicit"
  | .strictImplicit => str "strict_implicit"
  | .instImplicit => str "instance_implicit"
def dataJson : DataValue → Json
  | .ofString v => obj [("tag", str "string"), ("value", str v)]
  | .ofBool v => obj [("tag", str "bool"), ("value", toJson v)]
  | .ofName v => obj [("tag", str "name"), ("value", nameJson v)]
  | .ofNat v => obj [("tag", str "nat"), ("value", nat v)]
  | .ofInt v => obj [("tag", str "int"), ("value", toJson v)]
  | .ofSyntax v => obj [("tag", str "syntax_repr_lean_4_33_0"), ("value", str (reprStr v))]
partial def exprJson : Expr → Json
  | .bvar n => obj [("tag", str "bvar"), ("index", nat n)]
  | .fvar n => obj [("tag", str "fvar"), ("name", nameJson n.name)]
  | .mvar n => obj [("tag", str "mvar"), ("name", nameJson n.name)]
  | .sort l => obj [("tag", str "sort"), ("level", levelJson l)]
  | .const n ls => obj [("tag", str "const"), ("name", nameJson n), ("levels", toJson (ls.map levelJson))]
  | .app f a => obj [("tag", str "app"), ("function", exprJson f), ("argument", exprJson a)]
  | .lam n t b bi => obj [("tag", str "lam"), ("name", nameJson n), ("type", exprJson t), ("body", exprJson b), ("binder_info", binderJson bi)]
  | .forallE n t b bi => obj [("tag", str "forall"), ("name", nameJson n), ("type", exprJson t), ("body", exprJson b), ("binder_info", binderJson bi)]
  | .letE n t v b nd => obj [("tag", str "let"), ("name", nameJson n), ("type", exprJson t), ("value", exprJson v), ("body", exprJson b), ("non_dependent", toJson nd)]
  | .lit (.natVal n) => obj [("tag", str "literal_nat"), ("value", nat n)]
  | .lit (.strVal s) => obj [("tag", str "literal_string"), ("value", str s)]
  | .mdata m e => obj [("tag", str "metadata"), ("entries", toJson (m.entries.map fun (k,v) => obj [("key", nameJson k), ("value", dataJson v)])), ("expression", exprJson e)]
  | .proj n i e => obj [("tag", str "projection"), ("name", nameJson n), ("index", nat i), ("expression", exprJson e)]
def kind : ConstantInfo → String
  | .axiomInfo _ => "axiom" | .defnInfo _ => "definition" | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque" | .quotInfo _ => "quotient" | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor" | .recInfo _ => "recursor"
def optionJson (opts : Options) : Json := Id.run do
  let mut result : Array Json := #[]
  for (k,v) in opts do
    result := result.push (obj [("name", str k.toString), ("value", dataJson v)])
  return toJson result
def openJson : OpenDecl → Json
  | .simple n exceptions => obj [("namespace", str n.toString), ("exceptions", toJson (exceptions.map toString))]
  | .explicit n d => obj [("alias", str n.toString), ("declaration", str d.toString)]
def scopeJson (s : Command.Scope) : Json := obj [
  ("header", str s.header), ("namespace", str s.currNamespace.toString),
  ("universe_names", toJson (s.levelNames.map toString)),
  ("variables", toJson (s.varDecls.map fun v => reprStr v.raw)),
  ("variable_ids", toJson (s.varUIds.map toString)),
  ("included_variables", toJson (s.includedVars.map toString)),
  ("omitted_variables", toJson (s.omittedVars.map toString)),
  ("open_declarations", toJson (s.openDecls.map openJson)),
  ("options", optionJson s.opts),
  ("section_attributes", toJson (s.attrs.map fun a => reprStr a.raw)),
  ("noncomputable", toJson s.isNoncomputable), ("public_section", toJson s.isPublic)]
def contextJson (s : Command.State) : Json := obj [
  ("status", str "KNOWN_PARTIAL"), ("scopes", toJson (s.scopes.map scopeJson)),
  ("unavailable", toJson (["local_notation_extension_inventory", "local_instance_priorities", "open_scopes_extension_inventory", "custom_command_effects", "imported_macro_tactic_inventory", "lake_build_options_not_loaded"] : List String))]
def emit (h : IO.FS.Handle) (j : Json) : IO Unit := h.putStrLn j.compress
def artifact (dir : System.FilePath) (index : Nat) (suffix : String) (e : Expr) : IO String := do
  let path := s!"artifacts/{index}-{suffix}.json"
  IO.FS.writeFile (dir / path) ((obj [("schema_version", nat 1), ("format", str "lean-expr-json-v1"), ("lean_version", str "4.33.0"), ("expression", exprJson e)]).compress ++ "\n")
  return path
partial def extract (dir : System.FilePath) (h : IO.FS.Handle) : Frontend.FrontendM Unit := do
  let mut index := 1
  let mut declCount := 0
  let mut done := false
  let mut anyErrors := false
  let mut allMessages : Array String := #[]
  while !done do
    Frontend.updateCmdPos
    let before ← get
    let start := before.parserState.pos.byteIdx
    let ictx ← Frontend.getInputContext
    let scope := before.commandState.scopes.head!
    let pmctx := { env := before.commandState.env, options := scope.opts, currNamespace := scope.currNamespace, openDecls := scope.openDecls }
    let (stx, ps, parseMessages) := Parser.parseCommand ictx pmctx before.parserState {}
    modify fun s => { s with commands := s.commands.push stx }
    Frontend.setParserState ps
    Frontend.setMessages parseMessages
    Frontend.elabCommandAtFrontend stx
    let terminal := Parser.isTerminalCommand stx
    let after ← get
    let finish := after.parserState.pos.byteIdx
    let newConstants := after.commandState.env.checked.get.constants.fold (fun acc n ci =>
      if (before.commandState.env.find? n).isNone then acc.push (n,ci) else acc) (#[] : Array (Name × ConstantInfo))
      |>.qsort (fun a b => Name.lt a.1 b.1)
    let commandMessages := parseMessages ++ after.commandState.messages
    let errors := commandMessages.hasErrors
    anyErrors := anyErrors || errors
    let mut diagnostics : Array String := #[]
    for msg in commandMessages.toList do
      let text ← liftM msg.toString
      diagnostics := diagnostics.push text
      allMessages := allMessages.push text
    liftM <| emit h <| obj [
      ("schema_version", nat 1), ("record_type", str "LeanCommand"),
      ("provenance_origin", str "compiler_observation"), ("status", str "KNOWN_PARTIAL"),
      ("command_index", nat index), ("start_byte", nat start), ("end_byte", nat finish),
      ("syntax_kind", str stx.getKind.toString), ("terminal", toJson terminal),
      ("context_before", contextJson before.commandState), ("context_after", contextJson after.commandState),
      ("declarations", names (newConstants.map Prod.fst)),
      ("elaboration_failed", toJson errors), ("diagnostics", toJson diagnostics),
      ("unsupported_effects_status", str "UNKNOWN")]
    for (n,ci) in newConstants do
      let ti ← liftM <| artifact dir declCount "type" ci.type
      let bi ← match ci.value? true with
        | some e => liftM <| artifact dir declCount "body" e
        | none => pure ""
      let axs ← Frontend.runCommandElabM (Lean.collectAxioms n)
      let tref := ci.type.getUsedConstants |>.qsort Name.lt
      let bref := (ci.value? true).map Expr.getUsedConstants |>.getD #[] |>.qsort Name.lt
      let family := match ci with
        | .ctorInfo v => obj [("status", str "KNOWN"), ("owner", str v.induct.toString), ("role", str "constructor")]
        | .recInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("role", str "recursor")]
        | .inductInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("constructors", toJson (v.ctors.map toString)), ("role", str "inductive")]
        | _ => obj [("status", str "KNOWN_PARTIAL"), ("role_status", str "UNKNOWN"), ("owner_command_index", nat index)]
      liftM <| emit h <| obj [
        ("schema_version", nat 1), ("record_type", str "DeclarationObservation"),
        ("provenance_origin", str "compiler_observation"), ("status", str "KNOWN_PARTIAL"),
        ("name", str n.toString), ("name_structure", nameJson n), ("declaration_kind", str (kind ci)),
        ("visibility", str (if isPrivateName n then "private" else "public")),
        ("universe_parameters", toJson (ci.levelParams.map toString)),
        ("owning_command_index", nat index), ("ownership_status", str "KNOWN"),
        ("start_byte", nat start), ("end_byte", nat finish),
        ("generated_family", family), ("type_artifact", str ti), ("type_status", str "KNOWN"),
        ("contract_complete", toJson true), ("contract_format", str "lean-expr-json-v1"),
        ("body_artifact", if bi.isEmpty then Json.null else str bi),
        ("body_status", str (if bi.isEmpty then "NOT_APPLICABLE" else "KNOWN")),
        ("type_references", names tref), ("body_references", names bref),
        ("proof_references", if kind ci == "theorem" then names bref else Json.null),
        ("axioms", names axs), ("contains_sorry_ax", toJson (axs.contains ``sorryAx)),
        ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
        ("source_elaboration", str (if errors then "KNOWN_PARTIAL" else "KNOWN")),
        ("observation_freshness", str "fresh_local_elaboration_cached_imports"),
        ("independent_replay", str "NOT_RUN"), ("proof_mechanism", str "UNKNOWN"),
        ("classification_status", str "UNKNOWN"), ("provenance_status", str "UNKNOWN")]
      declCount := declCount + 1
    index := index + 1
    done := terminal
    if finish <= start && !terminal then
      throw <| IO.userError "parser made no progress; retained preceding observations"
  liftM <| emit h <| obj [("schema_version", nat 1), ("record_type", str "ModuleObservation"),
    ("provenance_origin", str "compiler_observation"),
    ("status", str (if anyErrors then "KNOWN_PARTIAL" else "KNOWN")),
    ("commands_total", nat (index-1)), ("declarations_total", nat declCount),
    ("elaboration_failed", toJson anyErrors),
    ("diagnostics", toJson allMessages), ("context_coverage", str "KNOWN_PARTIAL"),
    ("module_build", str "NOT_RUN"), ("independent_replay", str "NOT_RUN")]
end LeanTyping

unsafe def main (args : List String) : IO UInt32 := do
  if Lean.versionString != "4.33.0" then
    IO.eprintln "BLOCKED_TOOLCHAIN: helper requires Lean 4.33.0"
    return 3
  let source :: output :: tail := args | do
    IO.eprintln "usage: lake env lean --run LeanTyping.lean SOURCE_PATH OUTPUT_DIR [ORIGINAL_MODULE]"
    return 2
  Lean.initSearchPath (← Lean.findSysroot)
  Lean.enableInitializersExecution
  let input ← IO.FS.readFile source
  let inputCtx := Lean.Parser.mkInputContext input source
  let (header, parserState, messages) ← Lean.Parser.parseHeader inputCtx
  let module ← match tail with
    | [m] => pure m.toName
    | [] => Lean.moduleNameOfFileName source none
    | _ => throw <| IO.userError "unexpected arguments"
  let opts := ({} : Lean.Options).setBool `Elab.async false
  let (env, messages) ← Lean.Elab.processHeader header opts messages inputCtx (mainModule := module)
  let dir : System.FilePath := output
  IO.FS.createDirAll (dir / "artifacts")
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  if messages.hasErrors then
    let mut diagnostics : Array String := #[]
    for message in messages.toList do
      diagnostics := diagnostics.push (← message.toString)
    LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
      ("record_type", LeanTyping.str "FailureObservation"), ("status", LeanTyping.str "UNAVAILABLE"),
      ("reason", LeanTyping.str "BLOCKED_ENVIRONMENT_IMPORT"), ("diagnostics", toJson diagnostics),
      ("mathematical_refutation", toJson false)]
    h.flush
    return 1
  LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
    ("record_type", LeanTyping.str "LeanCommand"), ("status", LeanTyping.str "KNOWN_PARTIAL"),
    ("provenance_origin", LeanTyping.str "compiler_observation"),
    ("command_index", LeanTyping.nat 0), ("start_byte", LeanTyping.nat 0),
    ("end_byte", LeanTyping.nat parserState.pos.byteIdx), ("syntax_kind", LeanTyping.str "module_header"),
    ("declarations", toJson (#[] : Array String)),
    ("imports", toJson (Lean.Elab.headerToImports header |>.map fun i => i.module.toString)),
    ("loaded_modules", toJson (env.header.moduleNames.map toString)),
    ("import_observation", LeanTyping.str "cached_imports"), ("module", LeanTyping.str module.toString)]
  let st : Lean.Elab.Frontend.State := {
    commandState := Lean.Elab.Command.mkState env messages opts
    parserState := parserState
    cmdPos := parserState.pos }
  try
    let (_, _) ← (LeanTyping.extract dir h).run { inputCtx } |>.run st
    h.flush
    return 0
  catch e =>
    LeanTyping.emit h <| LeanTyping.obj [("schema_version", LeanTyping.nat 1),
      ("record_type", LeanTyping.str "FailureObservation"), ("status", LeanTyping.str "UNAVAILABLE"),
      ("reason", LeanTyping.str e.toString), ("mathematical_refutation", toJson false)]
    h.flush
    return 1
