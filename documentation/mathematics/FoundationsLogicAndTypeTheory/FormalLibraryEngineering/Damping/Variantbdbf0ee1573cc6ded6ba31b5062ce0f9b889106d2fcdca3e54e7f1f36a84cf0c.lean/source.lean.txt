-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DampingLaw.Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DampingLaw.Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be","mathematical_subject":"Foundations.Unclassified","original_sha256":"b765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/Damping.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.PeriodicOrbit

/-! # Semantics-preserving damping -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DampingLaw.Variantb765050c419260da34cf2dfca3bc5c460d96ea52c0eded36c76687e211c796be

namespace Mathematics.Stability

/-!
`blend_eq_left_iff` is the abstract nonzero-weight law corresponding to
`(1-α)x + αy = x ↔ y = x`.  It makes the reverse fixed-point implication
explicit instead of silently dividing by an unrecorded scalar.
-/
structure DampingLaw (X : Type) where
  blend : X → X → X
  blendSelf : ∀ x, blend x x = x
  blendEqLeftIff : ∀ x y, blend x y = x ↔ y = x

def dampedMap
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (x : X) : X :=
  law.blend x (construction x)

theorem damping_preserves_fixed_points
    {X : Type}
    (law : DampingLaw X)
    (construction : X → X)
    (point : X) :
    IsFixedPoint (dampedMap law construction) point ↔
      IsFixedPoint construction point := by
  constructor
  · intro dampedFixed
    change law.blend point (construction point) = point at dampedFixed
    exact (law.blendEqLeftIff point (construction point)).mp
      dampedFixed
  · intro fixed
    change law.blend point (construction point) = point
    exact (law.blendEqLeftIff point (construction point)).mpr fixed

structure DampingAdmissionCertificate
    {X Observation : Type}
    (law : DampingLaw X)
    (construction : X → X) where
  protectedObservation : X → Observation
  preservesProtectedObservation :
    ∀ x,
      protectedObservation (dampedMap law construction x) =
      protectedObservation (construction x)
  contractivityStatement : Prop
  contractivityStatus : ProofDisposition
  rollbackAvailable : Bool
  ownerAdmissionRef : Option StableId

structure AdmittedDamping
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    (certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction) where
  contractivityProved :
    certificate.contractivityStatus = .proved
  contractivityEvidence :
    certificate.contractivityStatement
  rollbackCertified :
    certificate.rollbackAvailable = true
  ownerAdmission : StableId
  ownerAdmissionExact :
    certificate.ownerAdmissionRef = some ownerAdmission

theorem admitted_damping_has_separate_contractivity_evidence
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    {certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction}
    (admitted : AdmittedDamping certificate) :
    certificate.contractivityStatement :=
  admitted.contractivityEvidence

theorem admitted_damping_requires_owner_reference
    {X Observation : Type}
    {law : DampingLaw X}
    {construction : X → X}
    {certificate :
      DampingAdmissionCertificate
        (Observation := Observation) law construction}
    (admitted : AdmittedDamping certificate) :
    ∃ owner, certificate.ownerAdmissionRef = some owner :=
  ⟨admitted.ownerAdmission, admitted.ownerAdmissionExact⟩

end Mathematics.Stability
