import LeanImportedContracts

/-! Bounded recursor and reduction-rule quotes in the caller's environment.
AI-assisted implementation and shared mechanical review are not independent
human mathematical acceptance. Source identity, imports, custody and admission
remain caller responsibilities. -/
namespace LeanRecursorContracts
open Lean LeanCompiledTyping LeanImportedContracts

def sameRule (a b : RecursorRule) : Bool :=
  a.ctor == b.ctor && a.nfields == b.nfields && a.rhs.equal b.rhs

def sameRecursor (a b : RecursorVal) : Bool :=
  a.name == b.name && a.levelParams == b.levelParams && a.type.equal b.type &&
  a.all == b.all && a.numParams == b.numParams && a.numIndices == b.numIndices &&
  a.numMotives == b.numMotives && a.numMinors == b.numMinors &&
  a.rules.length == b.rules.length && (a.rules.zip b.rules).all (fun (x,y) => sameRule x y) &&
  a.k == b.k && a.isUnsafe == b.isUnsafe

def majorOwner? (v : RecursorVal) : Option Name := Id.run do
  let mut type := v.type
  for _ in [:v.getMajorIdx] do
    match type with
    | .forallE _ _ body _ => type := body
    | _ => return none
  match type with
  | .forallE _ domain _ _ =>
    match domain.getAppFn with
    | .const name _ => return some name
    | _ => return none
  | _ => return none

def guardRecursor (v : RecursorVal) : IO Unit := do
  if v.levelParams.length > 64 || v.all.length > 64 || v.rules.length > 64 then
    throw <| IO.userError "RECURSOR_ARRAY_LIMIT_64"
  guardNames (#[v.name] ++ v.levelParams.toArray ++ v.all.toArray ++ v.rules.toArray.map (·.ctor))
  for value in [v.numParams,v.numIndices,v.numMotives,v.numMinors] ++ v.rules.map (·.nfields) do
    if value > 65535 then throw <| IO.userError "RECURSOR_METADATA_NAT_LIMIT_65535"

def association (env : Environment) (owner : Name) (v : RecursorVal) : Except String (InductiveVal × List ConstructorVal) := do
  let some (.inductInfo iv) := env.find? owner | throw "RECURSOR_OWNER_NOT_INDUCTIVE"
  if iv.all != [owner] || v.all != [owner] then throw "RECURSOR_SINGLE_OWNER_PROFILE_REQUIRED"
  if iv.ctors.isEmpty || iv.ctors.length > 64 then throw "RECURSOR_CONSTRUCTOR_LIMIT_64"
  if v.numParams != iv.numParams || v.numIndices != iv.numIndices then throw "RECURSOR_OWNER_PARAMETER_INDEX_MISMATCH"
  if v.numMotives != 1 || v.numMinors != iv.ctors.length then throw "RECURSOR_MOTIVE_MINOR_COUNT_MISMATCH"
  if majorOwner? v != some owner then throw "RECURSOR_MAJOR_OWNER_MISMATCH"
  if v.rules.map (·.ctor) != iv.ctors then throw "RECURSOR_RULE_CONSTRUCTOR_ORDER_MISMATCH"
  let mut ctors := []
  for i in [:iv.ctors.length] do
    let some (.ctorInfo cv) := env.find? iv.ctors[i]! | throw "RECURSOR_CONSTRUCTOR_UNAVAILABLE"
    let rule := v.rules[i]!
    if cv.induct != owner || cv.cidx != i || cv.numParams != iv.numParams || cv.numFields != rule.nfields then
      throw "RECURSOR_CONSTRUCTOR_ASSOCIATION_MISMATCH"
    ctors := ctors ++ [cv]
  return (iv,ctors)

def metadata (v : RecursorVal) (type : String) (rules : List Json) : Json :=
  obj [("name",nameJson v.name),("levelParams",toJson (v.levelParams.map nameJson)),("type",str type),
    ("all",toJson (v.all.map nameJson)),("numParams",nat v.numParams),("numIndices",nat v.numIndices),
    ("numMotives",nat v.numMotives),("numMinors",nat v.numMinors),("rules",toJson rules),
    ("k",toJson v.k),("isUnsafe",toJson v.isUnsafe)]

def observe (output : System.FilePath) (contextName owner : Name) (selectors : Array Name) : CoreM Unit := do
  if selectors.isEmpty || selectors.size > 64 then throwError "RECURSOR_SELECTOR_LIMIT_1_TO_64"
  if selectors.toList.eraseDups.length != selectors.size then throwError "RECURSOR_DUPLICATE_SELECTOR"
  liftM <| guardRequest output contextName owner selectors
  let before ← getEnv
  let some (.defnInfo context) := before.find? contextName | throwError "RECURSOR_CONTEXT_NOT_CURRENT_DEFINITION"
  if (before.getModuleIdxFor? contextName).isSome then throwError "RECURSOR_CONTEXT_MUST_BE_CURRENT_SOURCE"
  if before.header.moduleNames.size > 4096 then throwError "RECURSOR_HEADER_LIMIT_4096"
  liftM <| guardNames before.header.moduleNames
  let mut selected : Array (RecursorVal × InductiveVal × List ConstructorVal) := #[]
  for selector in selectors do
    let some (.recInfo rv) := before.find? selector | throwError "RECURSOR_SELECTOR_NOT_RECINFO"
    liftM <| guardRecursor rv
    let (iv,ctors) ← IO.ofExcept (association before owner rv)
    liftM <| guardConstant (.inductInfo iv)
    for ctor in ctors do liftM <| guardConstant (.ctorInfo ctor)
    selected := selected.push (rv,iv,ctors)
  -- Every selector and association is checked before serializing artifacts.
  liftM <| IO.FS.createDir (output / "artifacts")
  let handle ← liftM <| IO.FS.Handle.mk (output / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := boundedEmit handle total
  let contextType ← liftM <| LeanImportedContracts.artifact output 0 "context-type" context.type
  let contextBody ← liftM <| LeanImportedContracts.artifact output 0 "context-body" context.value
  let contextRefs := context.value.getUsedConstants.qsort Name.lt
  if contextRefs.size > 4096 then throwError "RECURSOR_CONTEXT_REFERENCE_LIMIT_4096"
  liftM <| guardNames contextRefs
  liftM <| quote <| obj [("record_type",str "RecursorContext"),("name",nameJson contextName),
    ("type",str contextType),("body",str contextBody),("native_body_references",toJson (contextRefs.map nameJson)),
    ("selector_origin",str "CALLER_EXACT_NAMES_NOT_SOURCE_OWNER_OR_DEPENDENCY_INFERENCE"),
    ("semantic_source_owner",str "UNAVAILABLE"),("kernel_admission",str "NOT_CLAIMED")]
  for i in [:selected.size] do
    let (rv,iv,ctors) := selected[i]!
    let type ← liftM <| LeanImportedContracts.artifact output (i+1) "recursor-type" rv.type
    let ownerType ← liftM <| LeanImportedContracts.artifact output (i+1) "owner-type" iv.type
    let ownerMetadata ← IO.ofExcept (fullMetadata (.inductInfo iv) ownerType "")
    let mut ruleRows : List Json := []
    let mut ctorRows : List Json := []
    let mut ruleDependencies : List Json := []
    for j in [:rv.rules.length] do
      let rule := rv.rules[j]!
      let rhs ← liftM <| LeanImportedContracts.artifact output (i*64+j+100) "rule-rhs" rule.rhs
      let ctorType ← liftM <| LeanImportedContracts.artifact output (i*64+j+100) "ctor-type" ctors[j]!.type
      let ctorMetadata ← IO.ofExcept (fullMetadata (.ctorInfo ctors[j]!) ctorType "")
      ruleRows := ruleRows ++ [obj [("ctor",nameJson rule.ctor),("nfields",nat rule.nfields),("rhs",str rhs)]]
      ctorRows := ctorRows ++ [ctorMetadata]
      let refs := rule.rhs.getUsedConstants.qsort Name.lt
      if refs.size > 4096 then throwError "RECURSOR_RULE_REFERENCE_LIMIT_4096"
      liftM <| guardNames refs
      let mut dependencyRows : Array Json := #[]
      for name in refs do
        let available := before.find? name |>.isSome
        if !available then throwError "RECURSOR_RULE_REFERENCE_UNAVAILABLE"
        let referenceAxioms ← Lean.collectAxioms name
        if referenceAxioms.size > 64 then throwError "RECURSOR_RULE_REFERENCE_AXIOM_LIMIT_64"
        liftM <| guardNames referenceAxioms
        dependencyRows := dependencyRows.push (obj [("name",nameJson name),("available",toJson available),
          ("cached_reference_axioms",toJson (referenceAxioms.map nameJson)),
          ("module_binding",← IO.ofExcept (moduleBinding before name))])
      ruleDependencies := ruleDependencies ++ [obj [("rule_index",nat j),("ctor",nameJson rule.ctor),
        ("rhs_constant_references",toJson (refs.map nameJson)),("reference_axiom_observations",toJson dependencyRows),
        ("scope",str "RHS_CONST_REFERENCES_AND_CACHED_PER_REFERENCE_AXIOMS_NOT_FRESH_TRANSITIVE_RULE_CLOSURE")]]
    let axioms ← Lean.collectAxioms rv.name
    if axioms.size > 64 then throwError "RECURSOR_AXIOM_LIMIT_64"
    liftM <| guardNames axioms
    let after ← getEnv
    let some (.recInfo repeated) := after.find? rv.name | throwError "RECURSOR_REPEAT_UNAVAILABLE"
    liftM <| quote <| obj [("record_type",str "RecursorDeclaration"),("name",nameJson rv.name),
      ("full_recursor",metadata rv type ruleRows),("owner",ownerMetadata),("constructors",toJson ctorRows),
      ("rule_dependencies",toJson ruleDependencies),
      ("module_binding",← IO.ofExcept (moduleBinding before rv.name)),
      ("isImportedConst",toJson (before.isImportedConst rv.name)),
      ("major_index",nat rv.getMajorIdx),("first_index_index",nat rv.getFirstIndexIdx),
      ("first_minor_index",nat rv.getFirstMinorIdx),("major_owner",(majorOwner? rv).map nameJson |>.getD Json.null),
      ("axioms",toJson (axioms.map nameJson)),("contains_sorry_ax",toJson (axioms.contains ``sorryAx)),
      ("axiom_scope",str "COLLECT_AXIOMS_RECINFO_TYPE_ONLY_NOT_RULE_RHS_OR_FRESH_KERNEL_REPLAY"),
      ("full_recursor_repeat_same",toJson (sameRecursor rv repeated)),
      ("import_binding_repeat_same",toJson (before.getModuleIdxFor? rv.name == after.getModuleIdxFor? rv.name && before.header.moduleNames == after.header.moduleNames)),
      ("recursor_body_status",str "NOT_APPLICABLE_RULE_RHS_RECORDED_SEPARATELY"),
      ("proof_dependency_status",str "NOT_INFERRED_FROM_TYPE_OR_REDUCTION_RULE"),
      ("semantic_source_owner",str "UNAVAILABLE"),("kernel_admission",str "NOT_CLAIMED")]
  let after ← getEnv
  let added := after.checked.get.constants.foldStage2 (fun acc name _ =>
    if (before.find? name).isNone then acc.push name else acc) (#[] : Array Name)
  if !added.isEmpty then throwError "RECURSOR_OBSERVATION_ADDED_CONSTANTS"
  liftM <| quote <| obj [("record_type",str "RecursorTerminal"),("profile",str "PRIVATE-NATIVE-RECURSOR-CONTRACTS/v1"),
    ("selectors",nat selectors.size),("lean_version",str "4.33.0"),
    ("expression_fields",str "COMPLETE_TYPE_AND_EVERY_RULE_RHS_NO_TYPE_ONLY_SUBSTITUTION"),
    ("new_constants",toJson (added.map nameJson)),
    ("whole_generated_family",str "UNAVAILABLE_WRAPPERS_OTHER_GENERATORS_NOT_ENUMERATED"),
    ("complete_context",str "UNAVAILABLE"),("original_build_source_custody",str "UNAVAILABLE"),
    ("M4",str "NOT_RUN"),("M7",str "NOT_ADMITTED")]
  liftM handle.flush

end LeanRecursorContracts
