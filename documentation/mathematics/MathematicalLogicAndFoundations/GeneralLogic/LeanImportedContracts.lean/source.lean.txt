import LeanCompiledTyping
import LeanExpressionDag

/-! Bounded native imported-contract quotes in the caller's exact environment.

This records supported contracts and expression structure. Source replay,
artifact/header maps, custody, rights and admission belong to the caller.
AI-assisted implementation and shared mechanical review supply no independent
human proof acceptance. -/
namespace LeanImportedContracts
open Lean LeanCompiledTyping

def hintJson : ReducibilityHints → Json
  | .opaque => obj [("tag", str "opaque")]
  | .abbrev => obj [("tag", str "abbrev")]
  | .regular height => obj [("tag", str "regular"), ("height", nat height.toNat)]

def safetyJson : DefinitionSafety → Json
  | .unsafe => str "unsafe"
  | .safe => str "safe"
  | .partial => str "partial"

def boundedName (original : Name) : Bool := Id.run do
  if original.isAnonymous then return false
  let mut n := original
  let mut depth := 0
  while !n.isAnonymous do
    depth := depth + 1
    if depth > 64 then return false
    match n with
    | .anonymous => pure ()
    | .str parent value =>
      if value.utf8ByteSize > 1024 then return false
      n := parent
    | .num parent value =>
      if value > 18446744073709551615 then return false
      n := parent
  return true

def guardNames (values : Array Name) : IO Unit := do
  for n in values do
    if !boundedName n then throw <| IO.userError "IMPORTED_NAME_PROFILE_LIMIT"

def guardRequest (output : System.FilePath) (context owner : Name) (missing : Array Name) : IO Unit := do
  if Lean.versionString != "4.33.0" then throw <| IO.userError "IMPORTED_TOOLCHAIN_4_33_REQUIRED"
  guardNames (#[context, owner] ++ missing)
  if missing.size > 64 then throw <| IO.userError "IMPORTED_MISSING_CONTROL_LIMIT_64"
  if ← output.pathExists then throw <| IO.userError "IMPORTED_CREATE_ONLY_OUTPUT_REQUIRED"
  -- Exclusive mkdir acquires the output even if another creator wins the race.
  IO.FS.createDir output

def guardConstant (ci : ConstantInfo) : IO Unit := do
  guardNames (#[ci.name] ++ ci.levelParams.toArray)
  if ci.levelParams.length > 64 then throw <| IO.userError "IMPORTED_LEVEL_PARAMETER_LIMIT_64"
  let values : Except String (List Nat × Array Name) := match ci with
    | .inductInfo v => do
      if v.all.length > 64 || v.ctors.length > 64 then throw "IMPORTED_NAME_ARRAY_LIMIT_64"
      pure ([v.numParams, v.numIndices, v.numNested], (v.all ++ v.ctors).toArray)
    | .ctorInfo v => pure ([v.cidx, v.numParams, v.numFields], #[v.induct])
    | .defnInfo v => do
      if v.all.length > 64 then throw "IMPORTED_NAME_ARRAY_LIMIT_64"
      pure ([], v.all.toArray)
    | _ => throw "UNSUPPORTED_IMPORTED_CONSTANTINFO_VARIANT"
  let naturals ← IO.ofExcept values
  for value in naturals.1 do
    if value > 65535 then throw <| IO.userError "IMPORTED_METADATA_NAT_LIMIT_65535"
  guardNames naturals.2

def boundedEmit (handle : IO.FS.Handle) (total : IO.Ref Nat) (record : Json) : IO Unit := do
  let raw := record.compress
  if raw.utf8ByteSize > 1048576 then throw <| IO.userError "IMPORTED_ROW_BYTES_1_MIB"
  let next := (← total.get) + raw.utf8ByteSize + 1
  if next > 8388608 then throw <| IO.userError "IMPORTED_STREAM_BYTES_8_MIB"
  total.set next
  handle.putStrLn raw
  handle.flush

def artifact (dir : System.FilePath) (index : Nat) (suffix : String) (e : Expr) : IO String := do
  let nodes := s!"artifacts/{index}-{suffix}.jsonl"
  let result ← LeanExpressionDag.writeDag exprJson e (dir / nodes)
  let path := s!"artifacts/{index}-{suffix}.json"
  let descriptor := obj [("schema", str "SOURCE-EXPRESSION-DAG-DESCRIPTOR/v1"),
    ("profile", str "LEAN-EXPR-POSTORDER-DAG/v1"), ("lean_version", str "4.33.0"),
    ("node_stream", str nodes), ("root", nat result.root), ("nodes", nat result.nodes),
    ("depth", nat result.depth), ("bytes", nat result.bytes), ("kernel_admission", str "NOT_CLAIMED")]
  IO.FS.writeFile (dir / path) (descriptor.compress ++ "\n")
  return path

def moduleBinding (env : Environment) (n : Name) : Except String Json := do
  match env.getModuleIdxFor? n with
  | none => return obj [("status", str "NOT_IMPORTED_OR_UNAVAILABLE"), ("index", Json.null), ("module", Json.null)]
  | some idx =>
    if idx.toNat >= env.header.moduleNames.size then throw "IMPORTED_MODULE_INDEX_OUT_OF_BOUNDS"
    return obj [("status", str "KNOWN_IMPORTED_INDEX"), ("index", nat idx.toNat),
      ("module", nameJson env.header.moduleNames[idx.toNat]!)]

def sameConstantInfo (a b : ConstantInfo) : Bool :=
  match a, b with
  | .inductInfo x, .inductInfo y => x.name == y.name && x.levelParams == y.levelParams && x.type.equal y.type &&
      x.numParams == y.numParams && x.numIndices == y.numIndices && x.all == y.all && x.ctors == y.ctors &&
      x.numNested == y.numNested && x.isRec == y.isRec && x.isUnsafe == y.isUnsafe && x.isReflexive == y.isReflexive
  | .ctorInfo x, .ctorInfo y => x.name == y.name && x.levelParams == y.levelParams && x.type.equal y.type &&
      x.induct == y.induct && x.cidx == y.cidx && x.numParams == y.numParams && x.numFields == y.numFields && x.isUnsafe == y.isUnsafe
  | .defnInfo x, .defnInfo y => x.name == y.name && x.levelParams == y.levelParams && x.type.equal y.type &&
      x.value.equal y.value && x.hints == y.hints && x.safety == y.safety && x.all == y.all
  | _, _ => false

def fullMetadata (ci : ConstantInfo) (ti bi : String) : Except String Json := do
  let base := [("name", nameJson ci.name), ("levelParams", toJson (ci.levelParams.map nameJson)), ("type", str ti)]
  match ci with
  | .inductInfo v => return obj (base ++ [("numParams", nat v.numParams), ("numIndices", nat v.numIndices),
      ("all", toJson (v.all.map nameJson)), ("ctors", toJson (v.ctors.map nameJson)), ("numNested", nat v.numNested),
      ("isRec", toJson v.isRec), ("isUnsafe", toJson v.isUnsafe), ("isReflexive", toJson v.isReflexive)])
  | .ctorInfo v => return obj (base ++ [("induct", nameJson v.induct), ("cidx", nat v.cidx),
      ("numParams", nat v.numParams), ("numFields", nat v.numFields), ("isUnsafe", toJson v.isUnsafe)])
  | .defnInfo v => return obj (base ++ [("value", str bi), ("hints", hintJson v.hints),
      ("safety", safetyJson v.safety), ("all", toJson (v.all.map nameJson))])
  | _ => throw "UNSUPPORTED_IMPORTED_CONSTANTINFO_VARIANT"

def observe (output : System.FilePath) (contextName owner : Name)
    (controls : Array Name) : CoreM Unit := do
  liftM <| guardRequest output contextName owner controls
  liftM <| IO.FS.createDirAll (output / "artifacts")
  let h ← liftM <| IO.FS.Handle.mk (output / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := boundedEmit h total
  let before := (← getEnv)
  let some context := before.find? contextName | throwError "PROJECTION_CONTEXT_UNAVAILABLE"
  let .defnInfo contextDef := context | throwError "CONTEXT_NOT_DEFINITION_VALUE"
  let contextBody := contextDef.value
  if (before.getModuleIdxFor? contextName).isSome then throwError "CONTEXT_MUST_BE_CURRENT_SOURCE_ENVIRONMENT"
  if before.header.moduleNames.size > 4096 then throwError "IMPORTED_HEADER_LIMIT_4096"
  liftM <| guardNames before.header.moduleNames
  let ct ← liftM <| artifact output 0 "type" context.type
  let cb ← liftM <| artifact output 0 "body" contextBody
  let contextReferences := contextBody.getUsedConstants.qsort Name.lt
  if contextReferences.size > 4096 then throwError "IMPORTED_CONTEXT_REFERENCE_LIMIT_4096"
  liftM <| guardNames contextReferences
  liftM <| quote <| obj [("record_type", str "ProjectionReferenceContext"), ("name", nameJson contextName),
    ("field_role", str "ACTUAL_CONSTANTINFO_VALUE_BODY"), ("type_artifact", str ct), ("body_artifact", str cb),
    ("module_binding", ← IO.ofExcept (moduleBinding before contextName)),
    ("query_selector_origin", str "CALLER_EXACT_CONTEXT_NAME_NOT_SOURCE_OWNER_INFERENCE"),
    ("native_constant_references", toJson (contextReferences.map nameJson)),
    ("native_constant_scope", str "CONST_ONLY_PROJECTION_OWNER_SEPARATE_DAG_OBSERVATION"),
    ("semantic_source_owner", str "UNAVAILABLE"), ("kernel_admission", str "NOT_CLAIMED")]
  let some ownerCi := before.find? owner | throwError "PROJECTION_OWNER_UNAVAILABLE"
  let .inductInfo iv := ownerCi | throwError "PROJECTION_OWNER_NOT_INDUCTINFO"
  liftM <| guardConstant ownerCi
  let some structureInfo := getStructureInfo? before owner | throwError "STRUCTURE_INFO_UNAVAILABLE"
  let ctor := getStructureCtor before owner
  if structureInfo.fieldNames.size == 0 || structureInfo.fieldNames.size > 63 ||
      structureInfo.fieldInfo.size > 63 || structureInfo.parentInfo.size > 64 then
    throwError "IMPORTED_STRUCTURE_FIELD_OR_PARENT_LIMIT"
  liftM <| guardNames structureInfo.fieldNames
  liftM <| guardNames iv.ctors.toArray
  let mut fields : Array Json := #[]
  for i in [:structureInfo.fieldInfo.size] do
    let f := structureInfo.fieldInfo[i]!
    liftM <| guardNames #[f.fieldName, f.projFn]
    if let some subobject := f.subobject? then liftM <| guardNames #[subobject]
    let ap ← match f.autoParam? with
      | none => pure Json.null
      | some e => do
        let path ← liftM <| artifact output (100 + i) "autoParam" e
        pure (str path)
    fields := fields.push (obj [("fieldName", nameJson f.fieldName), ("projFn", nameJson f.projFn),
      ("subobject?", f.subobject?.map nameJson |>.getD Json.null), ("binderInfo", binderJson f.binderInfo), ("autoParam?", ap)])
  for p in structureInfo.parentInfo do liftM <| guardNames #[p.structName, p.projFn]
  let parents := structureInfo.parentInfo.map fun p => obj [("structName", nameJson p.structName),
    ("subobject", toJson p.subobject), ("projFn", nameJson p.projFn)]
  let mut projections : List Name := []
  for i in [:structureInfo.fieldNames.size] do
    let some projection := structureInfo.getProjFn? i | throwError "IMPORTED_PROJECTION_INDEX_UNAVAILABLE"
    projections := projections ++ [projection]
  liftM <| guardNames projections.toArray
  liftM <| quote <| obj [("record_type", str "ProjectionStructureRelation"), ("owner", nameJson owner),
    ("structure_info", obj [("structName", nameJson structureInfo.structName),
      ("fieldNames", toJson (structureInfo.fieldNames.map nameJson)), ("fieldInfo", toJson fields), ("parentInfo", toJson parents)]),
    ("constructor", nameJson ctor.name), ("all", toJson (iv.all.map nameJson)), ("constructors", toJson (iv.ctors.map nameJson)),
    ("projection_functions", toJson (projections.map nameJson)),
    ("projection_index_zero", (structureInfo.getProjFn? 0).map nameJson |>.getD Json.null),
    ("invalid_projection_index", nat structureInfo.fieldNames.size),
    ("invalid_projection_result", (structureInfo.getProjFn? structureInfo.fieldNames.size).map nameJson |>.getD Json.null),
    ("relation_scope", str "EXACT_STRUCTURE_AND_INDUCTIVE_APIS_NOT_WHOLE_GENERATED_FAMILY"),
    ("whole_generated_family", str "UNAVAILABLE_OTHER_GENERATORS_AND_RECURSOR_NOT_OBSERVED")]
  let members := ([owner] ++ iv.ctors ++ projections).toArray
  if members.size > 64 then throwError "IMPORTED_MEMBER_LIMIT_64"
  liftM <| guardNames members
  for i in [:members.size] do
    let n := members[i]!
    let current := (← getEnv)
    let some ci := current.find? n | throwError "IMPORTED_MEMBER_UNAVAILABLE"
    liftM <| guardConstant ci
    let ti ← liftM <| artifact output (i+1) "type" ci.type
    let bi ← match ci.value? true with
      | none => pure ""
      | some e => liftM <| artifact output (i+1) "body" e
    let metadata ← IO.ofExcept (fullMetadata ci ti bi)
    let projectionInfo := current.getProjectionFnInfo? n |>.map fun p => obj [
      ("ctorName", nameJson p.ctorName), ("numParams", nat p.numParams), ("i", nat p.i), ("fromClass", toJson p.fromClass)]
    let projectionStructure := current.getProjectionStructureName? n
    let axioms ← Lean.collectAxioms n
    if axioms.size > 64 then throwError "IMPORTED_AXIOM_NAME_LIMIT_64"
    liftM <| guardNames axioms
    let after := (← getEnv)
    let some repeated := after.find? n | throwError "IMPORTED_REPEAT_UNAVAILABLE"
    liftM <| quote <| obj [("record_type", str "ImportedProjectionDeclaration"), ("name", nameJson n),
      ("declaration_kind", str (kind ci)), ("module_binding", ← IO.ofExcept (moduleBinding current n)),
      ("full_constantinfo", metadata), ("isImportedConst", toJson (current.isImportedConst n)),
      ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
      ("projection_info", projectionInfo.getD Json.null), ("projection_structure", projectionStructure.map nameJson |>.getD Json.null),
      ("body_status", str (if bi.isEmpty then "NOT_APPLICABLE_VARIANT_HAS_NO_VALUE" else "KNOWN")),
      ("axioms", toJson (axioms.map nameJson)), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_scope", str "COLLECT_AXIOMS_IMPORTED_PRECOMPUTED_EXTENSION_MAY_BE_USED_NOT_FRESH_KERNEL_REPLAY"),
      ("full_constantinfo_repeat_same", toJson (sameConstantInfo ci repeated)),
      ("import_binding_repeat_same", toJson (current.getModuleIdxFor? n == after.getModuleIdxFor? n && current.header.moduleNames == after.header.moduleNames)),
      ("semantic_source_owner", str "UNAVAILABLE"), ("independent_replay", str "NOT_RUN"), ("kernel_admission", str "NOT_CLAIMED")]
  for n in controls do
    let current := (← getEnv)
    liftM <| quote <| obj [("record_type", str "ImportedProjectionMissingControl"), ("name", nameJson n),
      ("lookup_available", toJson (current.find? n).isSome),
      ("projection_metadata_available", toJson (current.getProjectionFnInfo? n).isSome),
      ("module_binding", ← IO.ofExcept (moduleBinding current n))]
  let some (.defnInfo dv) := before.find? projections[0]! | throwError "CONTROL_DEFINITION_UNAVAILABLE"
  let x := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let renamed := Expr.forallE `y (.sort .zero) (.bvar 0) .default
  let annotated := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let lx := Expr.lam `x (.sort .zero) (.bvar 0) .default
  let ly := Expr.lam `y (.sort .zero) (.bvar 0) .default
  let li := Expr.lam `x (.sort .zero) (.bvar 0) .implicit
  let cases : Array (String × ConstantInfo × ConstantInfo × Bool) := #[
    ("inductive_type_binder_name", .inductInfo {iv with type := x}, .inductInfo {iv with type := renamed}, x == renamed),
    ("constructor_type_binder_annotation", .ctorInfo {ctor with type := x}, .ctorInfo {ctor with type := annotated}, x == annotated),
    ("definition_type_binder_name", .defnInfo {dv with type := x}, .defnInfo {dv with type := renamed}, x == renamed),
    ("definition_value_binder_name", .defnInfo {dv with value := lx}, .defnInfo {dv with value := ly}, lx == ly),
    ("definition_value_binder_annotation", .defnInfo {dv with value := lx}, .defnInfo {dv with value := li}, lx == li)]
  let controlRows := cases.map fun (label, left, right, alphaSame) => obj [("id", str label),
    ("ordinary_expr_BEq", toJson alphaSame), ("full_structural_repeat_same", toJson (sameConstantInfo left right)),
    ("kernel_validation", str "NOT_RUN_SYNTHETIC_METADATA_COMPARISON_ONLY")]
  liftM <| quote <| obj [("record_type", str "ProjectionEqualityControls"), ("cases", toJson controlRows),
    ("scope", str "EXPR_EQUAL_RETAINS_BINDER_NAMES_AND_ANNOTATIONS_NOT_KERNEL_ACCEPTANCE")]
  let finalEnv := (← getEnv)
  liftM <| guardNames #[finalEnv.mainModule]
  let added := finalEnv.checked.get.constants.foldStage2 (fun acc n _ =>
    if (before.find? n).isNone then acc.push n else acc) (#[] : Array Name) |>.qsort Name.lt
  liftM <| quote <| obj [("record_type", str "ProjectionImportTerminal"),
    ("profile", str "PRIVATE-IMPORTED-PROJECTION-IDENTITY/v1"), ("members", nat members.size),
    ("missing_controls", nat controls.size), ("equality_controls", nat cases.size), ("new_constants", toJson (added.map nameJson)),
    ("source_module", nameJson finalEnv.mainModule), ("loaded_modules", toJson (finalEnv.header.moduleNames.map nameJson)),
    ("whole_generated_family", str "UNAVAILABLE"), ("complete_context", str "UNAVAILABLE"),
    ("semantic_source_owner", str "UNAVAILABLE"), ("M4", str "NOT_RUN"), ("M7", str "NOT_ADMITTED")]
  liftM h.flush

end LeanImportedContracts
