import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OccurrenceCertificateProjection
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedJsonRecordDecoding

/-!
Independent projection of the decoded wire records into the finite transport
interface. The original JSON decoder retains duplicate names until rejection.
Occurrence identities come from plan positions; no root lookup chooses a raw
batch. The concrete replay checks both projection and the finite admission gates.
-/
namespace GRWTSK.CertificateCorrespondence.Json
open FrontendCorrespondence

def rustArea : String → Option RustArea
  | "taxonomy" => some .taxonomy
  | "archive" => some .archive
  | _ => none

def rustOrigin : String → Option RustOrigin
  | "source" => some .source
  | "destination" => some .destination
  | "preservation" => some .preservation
  | _ => none

def rustReadSet (value : Value) : Option RustReadSet := do
  let set ← FrontendCorrespondence.readSet value
  pure ⟨set.root, set.present, set.directories, set.files⟩

def rustOccurrence (value : Value) : Option RustOccurrence := do
  let origin ← getString "origin" value >>= rustOrigin
  let root ← getString "source_root" value
  let source ← getString "source_path" value
  let area ← getString "target_area" value >>= rustArea
  let target ← getString "target" value
  let object ← getNat "object" value
  pure ⟨origin, root, source, area, target, object⟩

def rustOutput (value : Value) : Option RustOutput := do
  let area ← getString "area" value >>= rustArea
  let path ← getString "path" value
  let object ← getNat "object" value
  pure ⟨area, path, object⟩

def rustCertificate (value : Value) : Option RustCertificate := do
  if certificateGrammar value then pure () else none
  let schema ← getString "schema" value
  let label ← getString "plan_digest" value
  let objects ← FrontendCorrespondence.objects value
  let source ← field "source" value >>= rustReadSet
  let destination ← field "destination" value >>= rustReadSet
  let archive ← field "archive" value >>= rustReadSet
  let preservation ← field "preservation" value >>= rustReadSet
  let raws ← getArray "raw_sources" value >>= allSome rustReadSet
  let entries ← getArray "occurrences" value >>= allSome rustOccurrence
  let outputs ← getArray "outputs" value >>= allSome rustOutput
  pure ⟨schema, label, objects, source, destination, archive, preservation, raws, entries, outputs⟩

def rawRoutes (plan : Value) : Option (List CertificateProducer.RawRoute) := do
  let input ← field "input" plan
  let raws ← getArray "raw_sources" input
  let batches ← allSome (fun (raw, index) => do
    let digest ← getString "inventory_digest" raw
    let files ← field "files" raw >>= asObject
    allSome (fun (path, record) => do
      let retained ← getString "sha256" record
      pure (CertificateProducer.RawRoute.mk
        ⟨index + 4, path, 1, "raw/" ++ digest ++ "/" ++ path⟩ retained))
      (sortBy (fun a b => a.1 ≤ b.1) files)) raws.zipIdx
  pure batches.flatten

def preparedBindings (plan : Value) : Option (List SourceRefinement.Binding) := do
  let input ← field "input" plan
  let mappings ← getArray "mappings" input
  allSome (fun mapping => do
    let origin ← getString "origin" mapping
    if origin = "source" then pure () else none
    let source ← getString "source" mapping
    let area ← getString "target_area" mapping >>= rustArea
    let target ← getString "target" mapping
    pure ⟨0, source, areaCode area, target⟩) mappings

def placeholderPaths (plan : Value) : Option (List String) := do
  let placeholders ← getArray "placeholders" plan
  let paths ← allSome (fun value => do
    let kind ← getString "kind" value
    let path ← getString "path" value
    if kind = "remove" then some none
    else if kind = "write" ∨ kind = "existing" then some (some path)
    else none) placeholders
  pure (paths.filterMap id)

def emptyIndex : List SourceRefinement.Bytes → Option Nat
  | [] => none
  | bytes :: rest => if bytes = [] then some 0 else (emptyIndex rest).map (· + 1)

def frozen (plan expected : Value) : Option Frozen := do
  let certificate ← rustCertificate expected
  let raw ← rawRoutes plan
  let prepared ← preparedBindings plan
  let placeholders ← placeholderPaths plan
  let empty ← emptyIndex certificate.objects
  pure ⟨certificate.planLabel, certificate.objects, certificate.source,
    certificate.destination, certificate.archive, certificate.preservation,
    certificate.rawSources, raw, prepared, placeholders, empty⟩

def project (plan expected observed : Value) : Option (Frozen × RustCertificate) := do
  let _ ← contextCheck plan expected observed
  let input ← frozen plan expected
  let certificate ← rustCertificate observed
  pure (input, certificate)

def rawProject (plan expected observed : Raw) : Option (Frozen × RustCertificate) := do
  let plan ← decode plan
  let expected ← decode expected
  let observed ← decode observed
  project plan expected observed

theorem rustArea_taxonomy : rustArea "taxonomy" = some .taxonomy := rfl
theorem rustArea_archive : rustArea "archive" = some .archive := rfl
theorem rustOrigin_source : rustOrigin "source" = some .source := rfl
theorem rustOrigin_preservation : rustOrigin "preservation" = some .preservation := rfl
theorem unknown_area_rejects (value : String) (first : value ≠ "taxonomy")
    (second : value ≠ "archive") : rustArea value = none := by
  simp_all [rustArea]

theorem rawProject_exact {rawPlan rawExpected rawObserved : Raw}
    {plan expected observed : Value} {input : Frozen} {certificate : RustCertificate}
    (planDecoded : decode rawPlan = some plan)
    (expectedDecoded : decode rawExpected = some expected)
    (observedDecoded : decode rawObserved = some observed)
    (projected : project plan expected observed = some (input, certificate)) :
    rawProject rawPlan rawExpected rawObserved = some (input, certificate) := by
  simp [rawProject, planDecoded, expectedDecoded, observedDecoded, projected]

theorem rawProject_certificate_check {rawPlan rawExpected rawObserved : Raw}
    {input : Frozen} {certificate : RustCertificate}
    (_projected : rawProject rawPlan rawExpected rawObserved = some (input, certificate))
    (admitted : InputAdmission input) (contract : SourceContract input certificate) :
    SourceRefinement.certificateCheck input.objects (readSets input) (readSets input) (bindings input)
      (projectedEntries input certificate) (projectedOutputs certificate) = true :=
  source_contract_certificate_check admitted contract

end GRWTSK.CertificateCorrespondence.Json
