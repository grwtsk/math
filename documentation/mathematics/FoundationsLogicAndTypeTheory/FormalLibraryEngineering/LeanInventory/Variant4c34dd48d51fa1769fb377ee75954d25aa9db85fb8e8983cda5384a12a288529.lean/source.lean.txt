-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dag.Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Dag.Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-9730d1e9/tools/state/LeanInventory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

/-! Standalone Phase 1 environment inspector. This introduces no project mathematics.
The selector follows SourceCapsule's private import and defining-module conventions;
the versioned semantic projection deliberately excludes theorem proof bodies. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dag.Variant7d97fdec84c3041b313481b5f0bffe012db3d08f70079db81694a533062cb584

open Lean

namespace Phase1Inventory

def obj := Json.mkObj
def arr := Json.arr
def str := Json.str
def num (n : Nat) : Json := toJson n

def nameJson : Name → Json
  | .anonymous => arr #[str "anonymous"]
  | .str p s => arr #[str "str", nameJson p, str s]
  | .num p n => arr #[str "num", nameJson p, num n]

def binderJson : BinderInfo → Json
  | .default => str "default"
  | .implicit => str "implicit"
  | .strictImplicit => str "strictImplicit"
  | .instImplicit => str "instImplicit"

def levelJson (params : List Name) : Level → Except String Json
  | .zero => pure <| arr #[str "zero"]
  | .succ l => return arr #[str "succ", ← levelJson params l]
  | .max a b => return arr #[str "max", ← levelJson params a, ← levelJson params b]
  | .imax a b => return arr #[str "imax", ← levelJson params a, ← levelJson params b]
  | .param n => do
    let some (_, i) := params.zipIdx.find? (fun p => p.1 == n)
      | throw "undeclared universe parameter"
    return arr #[str "param", num i]
  | .mvar _ => throw "unresolved universe metavariable"

structure Dag where
  seen : Std.HashMap ExprStructEq Nat := {}
  canonical : Std.HashMap String Nat := {}
  nodes : Array Json := #[]

def dagLevel (params : List Name) (l : Level) : StateT Dag (Except String) Json :=
  match levelJson params l with | .ok j => pure j | .error e => throw e

partial def encode (params : List Name) (e : Expr) : StateT Dag (Except String) Nat := do
  let key : ExprStructEq := ⟨e⟩
  if let some i := (← get).seen[key]? then return i
  if let .mdata _ body := e then return ← encode params body
  let j : Json ← match e with
    | .bvar n => pure <| arr #[str "bvar", num n]
    | .fvar _ => throw "free expression variable"
    | .mvar _ => throw "expression metavariable"
    | .sort l => do pure <| arr #[str "sort", ← dagLevel params l]
    | .const n ls => do pure <| arr #[str "const", nameJson n, arr (← ls.toArray.mapM (dagLevel params))]
    | .app f a => do pure <| arr #[str "app", num (← encode params f), num (← encode params a)]
    | .lam _ t b bi => do pure <| arr #[str "lam", num (← encode params t), num (← encode params b), binderJson bi]
    | .forallE _ t b bi => do pure <| arr #[str "forallE", num (← encode params t), num (← encode params b), binderJson bi]
    | .letE _ t v b nd => do pure <| arr #[str "letE", num (← encode params t), num (← encode params v), num (← encode params b), toJson nd]
    | .lit (.natVal n) => pure <| arr #[str "natVal", str (toString n)]
    | .lit (.strVal s) => pure <| arr #[str "strVal", str s]
    | .proj n i b => do pure <| arr #[str "proj", nameJson n, num i, num (← encode params b)]
    | .mdata _ _ => throw "unreachable metadata branch"
  let state ← get
  if let some i := state.canonical[j.compress]? then
    modify fun s => {s with seen := s.seen.insert key i}
    return i
  if state.nodes.size ≥ 2000000 then throw "expression node resource bound exceeded"
  let i := state.nodes.size
  set ({seen := state.seen.insert key i, canonical := state.canonical.insert j.compress i, nodes := state.nodes.push j} : Dag)
  return i

def expression (params : List Name) (e : Expr) : Except String Json := do
  if e.hasLooseBVars then throw "loose bound expression variable"
  let (root, state) ← (encode params e).run {}
  return obj [("root", num root), ("nodes", arr state.nodes)]

def names (ns : List Name) := arr (ns.toArray.map nameJson)

def metadata (ci : ConstantInfo) : Except String (String × Json × Json) := do
  let expr := expression ci.levelParams
  match ci with
  | .axiomInfo v => return ("axiom", Json.null, obj [("is_unsafe", toJson v.isUnsafe)])
  | .defnInfo v =>
    let safety := match v.safety with | .safe => "safe" | .unsafe => "unsafe" | .partial => "partial"
    let hints := match v.hints with
      | .opaque => arr #[str "opaque"]
      | .abbrev => arr #[str "abbrev"]
      | .regular h => arr #[str "regular", num h.toNat]
    return ("definition", ← expr v.value, obj [("safety", str safety), ("reducibility_hints", hints), ("all", names v.all)])
  | .thmInfo _ => return ("theorem", Json.null, obj [])
  | .opaqueInfo v => return ("opaque", ← expr v.value, obj [("is_unsafe", toJson v.isUnsafe), ("all", names v.all)])
  | .quotInfo v =>
    let kind := match v.kind with | .type => "type" | .ctor => "ctor" | .lift => "lift" | .ind => "ind"
    return ("quotient", Json.null, obj [("quot_kind", str kind)])
  | .inductInfo v => return ("inductive", Json.null, obj [
      ("num_params", num v.numParams), ("num_indices", num v.numIndices), ("all", names v.all),
      ("constructors", names v.ctors), ("num_nested", num v.numNested), ("is_recursive", toJson v.isRec),
      ("is_unsafe", toJson v.isUnsafe), ("is_reflexive", toJson v.isReflexive)])
  | .ctorInfo v => return ("constructor", Json.null, obj [("inductive", nameJson v.induct),
      ("constructor_index", num v.cidx), ("num_params", num v.numParams),
      ("num_fields", num v.numFields), ("is_unsafe", toJson v.isUnsafe)])
  | .recInfo v =>
    let rules ← v.rules.toArray.mapM fun r => do
      return obj [("constructor", nameJson r.ctor), ("num_fields", num r.nfields), ("rhs", ← expr r.rhs)]
    return ("recursor", Json.null, obj [("all", names v.all), ("num_params", num v.numParams),
      ("num_indices", num v.numIndices), ("num_motives", num v.numMotives), ("num_minors", num v.numMinors),
      ("rules", arr rules), ("k", toJson v.k), ("is_unsafe", toJson v.isUnsafe)])

def liftExcept (x : Except String α) : CoreM α :=
  match x with | .ok a => pure a | .error e => throwError "{e}"

def declarationKind (env : Environment) (ci : ConstantInfo) : String :=
  if Meta.isInstanceCore env ci.name then "instance"
  else if isClass env ci.name then "class"
  else if isStructure env ci.name then "structure"
  else match ci with
    | .thmInfo _ => "theorem"
    | .defnInfo _ => "definition"
    | .opaqueInfo _ => "opaque"
    | .axiomInfo _ => "axiom"
    | .inductInfo _ => "inductive"
    | .ctorInfo _ => "definition"
    | .recInfo _ => "definition"
    | .quotInfo _ => "definition"

def inventory (modules : Array String) (requested : Option String := none)
    (namespaceRoots : Array String := #["FormalResearch"]) : MetaM Json := do
  let env ← getEnv
  let mut selected : Array (Name × ConstantInfo × String) := #[]
  let mut displayed : Std.HashSet String := {}
  for (n, ci) in env.constants.toList do
    if let some index := env.getModuleIdxFor? n then
      let owner := env.header.moduleNames[index.toNat]!.toString
      if (namespaceRoots.any fun root => owner == root || owner.startsWith (root ++ ".")) &&
          (requested.isNone || requested == some n.toString) then
        unless modules.contains owner do throwError "project owner absent from exact Git source: {owner}"
        if displayed.contains n.toString then throwError "ambiguous declaration name display: {n}"
        displayed := displayed.insert n.toString
        selected := selected.push (n, ci, owner)
  let sorted := selected.qsort fun a b => a.1.toString < b.1.toString
  let rows ← sorted.mapM fun (n, ci, owner) => do
    let type ← liftExcept (expression ci.levelParams ci.type)
    let (rawKind, value, metadataValue) ← liftExcept (metadata ci)
    let axioms ← collectAxioms n
    return obj [("name", str n.toString), ("name_parts", nameJson n), ("module", str owner),
      ("kind", str (declarationKind env ci)), ("raw_kind", str rawKind), ("universe_arity", num ci.levelParams.length),
      ("type", type), ("value", value), ("metadata", metadataValue),
      ("is_proposition", toJson (← Meta.isProp ci.type)), ("axioms", toJson (axioms.map Name.toString))]
  return obj [("generator", str "lean-declaration-export-v1"), ("declarations", arr rows)]

def findDisplay (s : String) : CoreM ConstantInfo := do
  let found := (← getEnv).constants.toList.filter fun (n, _) => n.toString == s
  match found with
  | [(_, ci)] => pure ci
  | _ => throwError "missing or ambiguous exact declaration: {s}"

def checkedBridge (request : Json) : MetaM Json := do
  let getString (k : String) := liftExcept (request.getObjValAs? String k)
  let source ← findDisplay (← getString "source")
  let target ← findDisplay (← getString "target")
  let proof ← findDisplay (← getString "proof")
  for ci in [source, target, proof] do
    unless ci.isTheorem && ci.levelParams.isEmpty && (← Meta.isProp ci.type) do
      throwError "bridge requires closed zero-universe theorem statements"
  let kind ← getString "kind"
  let expected ← if kind == "implication" then
      pure <| Expr.forallE .anonymous source.type target.type .default
    else if kind == "logical-equivalence" then
      pure <| mkApp2 (mkConst ``Iff) source.type target.type
    else throwError "unsupported bridge kind"
  unless ← Meta.isDefEq proof.type expected do throwError "bridge proof has the wrong typed endpoints"
  let encoded ← liftExcept (expression [] expected)
  return obj [("universe_arity", num 0), ("type", encoded)]

def astFixtures : Except String Json := do
  let explicit := Expr.lam `x (.sort .zero) (.bvar 0) .default
  let alpha := Expr.lam `renamed (.sort .zero) (.bvar 0) .default
  let implicit := Expr.lam `x (.sort .zero) (.bvar 0) .implicit
  let forallExplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let forallImplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let errorOf (e : Expr) := match expression [] e with
    | .error message => str message
    | .ok _ => str "ERROR: unsafe expression was accepted"
  let universeA ← expression [`u] (.sort (.succ (.param `u)))
  let universeB ← expression [`v] (.sort (.succ (.param `v)))
  let layout := Expr.letE `local (.const `Nat []) (.lit (.natVal 9007199254740993))
    (.app (.const `Nat.succ []) (.bvar 0)) true
  return obj [("schema_version", num 1), ("descriptor", str "formal-research-lean-ast-fixtures-v1"),
    ("binder_explicit", ← expression [] explicit), ("binder_alpha", ← expression [] alpha),
    ("metadata_omitted", ← expression [] (.mdata {} explicit)),
    ("binder_implicit", ← expression [] implicit), ("binder_pair", ← expression [] (.app explicit implicit)),
    ("forall_pair", ← expression [] (.app forallExplicit forallImplicit)),
    ("universe_a", universeA), ("universe_b", universeB),
    ("level_constructors", ← expression [`u] (.const (.num `Fixture 42)
      [.zero, .succ .zero, .max .zero (.param `u), .imax (.param `u) .zero])),
    ("let_literal", ← expression [] layout),
    ("projection_string", ← expression [] (.proj `Prod 1 (.lit (.strVal "λé é\n")))),
    ("free_variable", errorOf (.fvar ⟨`free⟩)),
    ("metavariable", errorOf (.mvar ⟨`unknown⟩)),
    ("loose_bound_variable", errorOf (.bvar 0)),
    ("undeclared_universe", errorOf (.sort (.param `unknown))),
    ("universe_metavariable", errorOf (.sort (.mvar ⟨`unknown⟩)))]

end Phase1Inventory

unsafe def main (args : List String) : IO UInt32 := do
  initSearchPath (← findSysroot)
  if args.length == 2 && args[0]! == "ast-fixtures" then
    let fixtures ← IO.ofExcept Phase1Inventory.astFixtures
    IO.FS.writeFile args[1]! fixtures.compress
    return 0
  if args.length == 3 && args[0]! == "imports" then
    let paths ← IO.FS.lines args[1]!
    let rows ← paths.mapM fun (path : String) => do
      let (imports, _, messages) ← Elab.parseImports (← IO.FS.readFile path) (some path)
      if messages.hasErrors then throw <| IO.userError s!"invalid Lean import header: {path}"
      pure <| Json.mkObj [("path", toJson path), ("imports", toJson (imports.map (·.module.toString)))]
    IO.FS.writeFile args[2]! (toJson rows).compress
    return 0
  unless args.length == 3 && (args[0]! == "inventory" || args[0]! == "declaration" || args[0]! == "bridge") do
    throw <| IO.userError "usage: LeanInventory.lean imports|inventory|declaration|bridge INPUT OUTPUT"
  enableInitializersExecution
  let input ← IO.FS.readFile args[1]!
  let parsed ← IO.ofExcept (Json.parse input)
  let modules ← IO.ofExcept (parsed.getObjValAs? (Array String) "modules")
  let imports ← if args[0]! == "inventory" then do
      let root ← IO.ofExcept (parsed.getObjValAs? String "root_module")
      pure #[({module := root.toName, importAll := true} : Import)]
    else pure <| modules.map fun n => ({module := n.toName, importAll := true} : Import)
  let env ← importModules imports {} (trustLevel := 0) (loadExts := true) (level := .private)
  let env := env.setExporting false
  let action := if args[0]! == "inventory" then do
      let roots ← Phase1Inventory.liftExcept (parsed.getObjValAs? (Array String) "namespace_roots")
      Phase1Inventory.inventory modules none roots
    else if args[0]! == "declaration" then do
      let name ← Phase1Inventory.liftExcept (parsed.getObjValAs? String "declaration_name")
      Phase1Inventory.inventory modules (some name)
    else Phase1Inventory.checkedBridge parsed
  let options := ({} : Options) |>.set `maxRecDepth (16384 : Nat) |>.set `maxHeartbeats (0 : Nat)
  let context : Core.Context := {fileName := "phase1-inventory", fileMap := default, options}
  let (result, _) ← action.toIO context {env} {} {}
  IO.FS.writeFile args[2]! result.compress
  return 0
