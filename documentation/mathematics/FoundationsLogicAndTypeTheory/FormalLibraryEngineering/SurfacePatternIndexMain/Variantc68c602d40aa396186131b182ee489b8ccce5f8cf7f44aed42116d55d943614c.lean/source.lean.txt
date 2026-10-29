-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceDocument.Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SourceDocument.Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Tools/SurfacePatternIndexMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Lean.DocString
import Lean.Util.CollectAxioms
import Lean.Util.FoldConsts
import Surface
import Surface.Audit

/-!
# Deterministic Surface refactoring pattern index

This executable observes the already-built canonical `Surface` environment and
emits canonical NDJSON.  Each line is a complete record; operational timing and
host data are deliberately absent so an unchanged environment produces the
same bytes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceDocument.Variant3a1edc6d4d1deff5e4610d9002a75cf1e1d6fb9091fc4b7e7a38efb1e7509bc8

open Lean

namespace SurfacePatternIndex

open Surface.Core

def schema := "surface.refactor.pattern-index.v1"

def declarationModule (env : Environment) (name : Name) : Name :=
  match env.getModuleIdxFor? name with
  | none => env.mainModule
  | some index => env.header.moduleNames[index.toNat]!

def environmentFingerprint (env : Environment) : String :=
  toString <| digestString <| String.intercalate "\n" <|
    env.header.moduleNames.toList.map Name.toString

def moduleSourceSuffix (moduleName : Name) : String :=
  moduleName.toString.replace "." "/" ++ ".lean"

/- Logical module names remain `Surface.*`, while canonical ownership is now
   physically partitioned across three exact Lake source roots.  Keep this
   resolver independent of the process search path: the emitted path is a
   repository-relative fact and must identify the file whose bytes were read. -/
def sourceRelativePathCandidates (moduleName : Name) : List String :=
  if moduleName == `Surface then
    ["lib/Surface.lean"]
  else if (`Surface.Core).isPrefixOf moduleName || (`Surface.Rotation).isPrefixOf moduleName then
    ["lib/SurfaceCore/" ++ moduleSourceSuffix moduleName]
  else if (`Surface.Refactor).isPrefixOf moduleName then
    ["lib/SurfaceRefactor/" ++ moduleSourceSuffix moduleName]
  else if (`Surface.Audit).isPrefixOf moduleName then
    ["lib/SurfaceAudit/" ++ moduleSourceSuffix moduleName]
  else
    []

example : sourceRelativePathCandidates `Surface = ["lib/Surface.lean"] := rfl
example : sourceRelativePathCandidates `Surface.Core =
    ["lib/SurfaceCore/Surface/Core.lean"] := by native_decide
example : sourceRelativePathCandidates `Surface.Rotation.Rodrigues =
    ["lib/SurfaceCore/Surface/Rotation/Rodrigues.lean"] := by native_decide
example : sourceRelativePathCandidates `Surface.Refactor.Authority =
    ["lib/SurfaceRefactor/Surface/Refactor/Authority.lean"] := by native_decide
example : sourceRelativePathCandidates `Surface.Audit.Quarantine =
    ["lib/SurfaceAudit/Surface/Audit/Quarantine.lean"] := by native_decide

structure SourceDocument where
  relativePath : String
  contents : String

def readSource? (moduleName : Name) : IO (Option SourceDocument) := do
  for relativePath in sourceRelativePathCandidates moduleName do
    let path : System.FilePath := relativePath
    if ← path.pathExists then
      return some { relativePath, contents := ← IO.FS.readFile path }
  return none

def readCanonicalSource (moduleName : Name) : IO SourceDocument := do
  if let some source ← readSource? moduleName then
    return source
  throw <| IO.userError <|
    "canonical Surface source is missing for module " ++ moduleName.toString ++
      "; checked: " ++ String.intercalate ", " (sourceRelativePathCandidates moduleName)

def classificationTags (env : Environment) (name : Name) : List String :=
  (if surfaceAdapterAttr.hasTag env name then ["surface_adapter"] else []) ++
  (if surfaceNovelAttr.hasTag env name then ["surface_novel"] else []) ++
  (if surfaceCandidateAttr.hasTag env name then ["surface_candidate"] else []) ++
  (if surfacePublishedAttr.hasTag env name then ["surface_published"] else []) ++
  (if surfaceCertificateAttr.hasTag env name then ["surface_certificate"] else []) ++
  (if surfaceInterfaceAttr.hasTag env name then ["surface_interface"] else [])

def constantKind : ConstantInfo → String
  | .axiomInfo _ => "axiom"
  | .defnInfo _ => "definition"
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .quotInfo _ => "quotient"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "constructor"
  | .recInfo _ => "recursor"

def positionJson (position : Position) : Json :=
  Json.mkObj [
    ("line", toJson position.line),
    ("column", toJson position.column)
  ]

def byteOffset (source : String) (position : Position) : Nat :=
  let lines := source.splitOn "\n"
  let prior := lines.take (position.line - 1)
  let priorBytes := prior.foldl (fun total line => total + line.toUTF8.size + 1) 0
  let current := lines[position.line - 1]?.getD ""
  priorBytes + (current.take position.column).toString.toUTF8.size

def rangeJson (source : Option String) : Option DeclarationRanges → Json
  | none => Json.null
  | some ranges =>
      let byteRange := match source with
        | none => Json.null
        | some text => Json.mkObj [
            ("start", toJson (byteOffset text ranges.range.pos)),
            ("end", toJson (byteOffset text ranges.range.endPos)),
            ("selectionStart", toJson (byteOffset text ranges.selectionRange.pos)),
            ("selectionEnd", toJson (byteOffset text ranges.selectionRange.endPos))
          ]
      Json.mkObj [
        ("start", positionJson ranges.range.pos),
        ("end", positionJson ranges.range.endPos),
        ("selectionStart", positionJson ranges.selectionRange.pos),
        ("selectionEnd", positionJson ranges.selectionRange.endPos),
        ("bytes", byteRange)
      ]

def sourceExcerpt? (source : Option String) (ranges : Option DeclarationRanges) : Option String := do
  let text ← source
  let observed ← ranges
  let start := byteOffset text observed.range.pos
  let stop := byteOffset text observed.range.endPos
  String.fromUTF8? (text.toUTF8.extract start stop)

def sourceImports (source : Option String) : List String :=
  match source with
  | none => []
  | some text => text.splitOn "\n" |>.filterMap fun line =>
      let trimmed := line.trimAscii
      if trimmed.startsWith "public import " then
        some (trimmed.drop 14).toString.trimAscii.toString
      else if trimmed.startsWith "import " then
        some (trimmed.drop 7).toString.trimAscii.toString
      else
        none

structure AxiomCache where
  entries : NameMap (Array Name) := {}

abbrev AxiomCacheM := StateM AxiomCache

/- A shared traversal is essential here. Calling `Lean.collectAxioms` once per
   declaration recreates its cache each time and repeatedly walks the same
   imported proof graph. This finite traversal follows the same constant-info
   cases while memoizing across the entire project index. -/
partial def collectAxiomsShared
    (env : Environment)
    (name : Name) : AxiomCacheM (Array Name) := do
  if let some cached := (← get).entries.find? name then
    return cached
  modify fun state => { state with entries := state.entries.insert name #[] }
  let some info := env.checked.get.find? name | return #[]
  let (isAxiom, dependencies) : Bool × Array Name := match info with
    | .axiomInfo value => (true, value.type.getUsedConstants)
    | .defnInfo value =>
        (false, value.type.getUsedConstants ++ value.value.getUsedConstants)
    | .thmInfo value =>
        (false, value.type.getUsedConstants ++ value.value.getUsedConstants)
    | .opaqueInfo value =>
        (false, value.type.getUsedConstants ++ value.value.getUsedConstants)
    | .quotInfo _ => (false, #[])
    | .ctorInfo value => (false, value.type.getUsedConstants)
    | .recInfo value => (false, value.type.getUsedConstants)
    | .inductInfo value =>
        (false, value.type.getUsedConstants ++ value.ctors)
  let mut axioms : NameSet := if isAxiom then ({} : NameSet).insert name else {}
  for dependency in dependencies do
    for axiomName in ← collectAxiomsShared env dependency do
      axioms := axioms.insert axiomName
  let result := axioms.toArray.qsort Name.lt
  modify fun state => { state with entries := state.entries.insert name result }
  return result

def projectAxiomCache
    (env : Environment)
    (declarations : List ConstantInfo) : NameMap (Array Name) :=
  let action : AxiomCacheM Unit := do
    for info in declarations do
      let _ ← collectAxiomsShared env info.name
  (action.run {}).2.entries

def inspectDeclaration
    (env : Environment)
    (axiomCache : NameMap (Array Name))
    (info : ConstantInfo) : IO Json := do
  let name := info.name
  let moduleName := declarationModule env name
  let sourceDocument ← readCanonicalSource moduleName
  let path := sourceDocument.relativePath
  let source := some sourceDocument.contents
  /- The raw environment docstring is the indexed fact. Resolving manual links
     is presentation work and repeatedly loads documentation metadata. -/
  let docstring ← Lean.findSimpleDocString? env name (includeBuiltin := false)
  let action : CoreM (String × Array Name × Option DeclarationRanges) := do
    /- `Expr.toString` is the stable structural normalization used by the
       existing Surface index. Pretty-printing every declaration through Meta
       is presentation work and makes a project index unnecessarily costly. -/
    let normalizedType := toString info.type
    let ranges ← Lean.findDeclarationRanges? name
    pure (normalizedType, axiomCache.find? name |>.getD #[], ranges)
  let (normalizedType, axioms, ranges) ← action.toIO'
    { fileName := "<surface_pattern_index>", fileMap := default }
    { env := env }
  /- Traversing every opaque proof value here duplicates axiom collection and
     makes indexing scale with the total proof-term graph. Type-level direct
     constants remain deterministic retrieval features; theorem proof closure
     is represented separately by `axiomClosure`. -/
  let usedConstants := info.type.getUsedConstantsAsSet.toArray
    |>.toList
    |>.map Name.toString
    |>.mergeSort (· < ·)
  let tags := classificationTags env name
  let sourceHash := source.map (fun text => toString (digestString text))
  let excerptHash := sourceExcerpt? source ranges |>.map (fun text => toString (digestString text))
  let proofStatus :=
    if info.isTheorem then "kernel_checked_theorem"
    else if info.isAxiom then "axiom"
    else "not_a_theorem"
  let observedRanges := rangeJson source ranges
  pure <| Json.mkObj [
    ("schema", toJson schema),
    ("recordKind", toJson "declaration"),
    ("name", toJson name.toString),
    ("module", toJson moduleName.toString),
    ("sourceFile", toJson path),
    ("declarationRange", observedRanges),
    ("selectionRange", observedRanges),
    ("declarationKind", toJson (constantKind info)),
    ("normalizedType", toJson normalizedType),
    ("structuralExpressionDigest", toJson (toString (digestString (toString info.type)))),
    ("typeHash", toJson (toString (digestString normalizedType))),
    ("sourceFileHash", sourceHash.map toJson |>.getD Json.null),
    ("sourceExcerptHash", excerptHash.map toJson |>.getD Json.null),
    ("proofStatus", toJson proofStatus),
    ("classificationTags", toJson tags),
    ("directConstantsUsed", toJson usedConstants),
    ("projectDependencies", toJson usedConstants),
    ("importedDependencies", toJson usedConstants),
    ("axiomClosure", toJson (axioms.toList.map Name.toString |>.mergeSort (· < ·))),
    ("docstring", docstring.map toJson |>.getD Json.null),
    ("proofExpressionSkeleton", toJson usedConstants),
    ("proofShapeClassification", toJson (if info.isTheorem then "custom" else "exact")),
    ("kernelReceiptHash", toJson (toString (digestString <|
      name.toString ++ "\n" ++ normalizedType ++ "\n" ++
        String.intercalate "," (axioms.toList.map Name.toString)))),
    ("public", toJson true),
    ("proofBoundaryClass", toJson (if info.isTheorem then "checked" else "data")),
    ("environmentFingerprint", toJson (environmentFingerprint env))
  ]

def moduleRecords (env : Environment) : IO (List Json) := do
  let modules := env.header.moduleNames.toList
    |>.filter (fun name => name.toString.startsWith "Surface")
    |>.mergeSort Name.quickLt
  modules.mapM fun moduleName => do
    let sourceDocument ← readCanonicalSource moduleName
    let source := some sourceDocument.contents
    pure <| Json.mkObj [
      ("schema", toJson schema),
      ("recordKind", toJson "module"),
      ("module", toJson moduleName.toString),
      ("sourcePath", toJson sourceDocument.relativePath),
      ("imports", toJson (sourceImports source)),
      ("sourceHash", source.map (fun text => toJson (toString (digestString text))) |>.getD Json.null),
      ("moduleFingerprint", toJson (toString (digestString moduleName.toString))),
      ("classification", toJson "canonical")
    ]

def canonicalDeclarations (env : Environment) : List ConstantInfo :=
  env.constants.fold (init := #[]) (fun declarations name info =>
      if (`Surface).isPrefixOf name then declarations.push info
      else declarations)
    |>.toList
    |>.mergeSort (fun left right => Name.quickLt left.name right.name)

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_pattern_index"
    return 64
  initSearchPath (← findSysroot) [".lake/build/lib/lean"]
  let env ← importModules #[{ module := `Surface }] {}
  let declarations := canonicalDeclarations env
  let axiomCache := projectAxiomCache env declarations
  let header := Json.mkObj [
    ("schema", toJson schema),
    ("recordKind", toJson "index"),
    ("entryModule", toJson "Surface"),
    ("environmentFingerprint", toJson (environmentFingerprint env))
  ]
  IO.println header.compress
  for record in ← moduleRecords env do
    IO.println record.compress
  for info in declarations do
    IO.println (← inspectDeclaration env axiomCache info).compress
  pure 0

end SurfacePatternIndex

def main (args : List String) : IO UInt32 :=
  SurfacePatternIndex.main args
