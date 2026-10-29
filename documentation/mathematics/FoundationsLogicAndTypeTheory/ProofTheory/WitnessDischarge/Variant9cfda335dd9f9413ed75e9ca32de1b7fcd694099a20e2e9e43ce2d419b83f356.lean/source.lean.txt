-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.AcceptedSeedRegistry.Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.AcceptedSeedRegistry.Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8","mathematical_subject":"Logic.ProofTheory","original_sha256":"3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ProofStrategy/WitnessDischarge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.CertifiedRoute

/-!
# Witness-bearing least discharge

`Derivation` is an inductive proof tree.  A seedless cycle cannot construct a
value because every finite branch must terminate in an accepted seed.  Seed
acceptance is explicitly sound for the represented proposition, and every
route node applies a proposition-level implication.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.AcceptedSeedRegistry.Variant3f5975130a00f92ec8a98791e8ca4b72b0d0563b40b132080df5afdfdfad10f8

namespace Mathematics.ProofStrategy

open Mathematics.Projection

universe u v

/-- Accepted seeds together with the proof that acceptance is mathematically sound. -/
structure AcceptedSeedRegistry
    (Obligation : Type u)
    (Statement : Obligation → Prop) where
  accepted : Obligation → Prop
  sound :
    ∀ {obligation}, accepted obligation → Statement obligation

inductive Derivation
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop) :
    Obligation → Type (max u v)
  | seed
      {obligation : Obligation}
      (accepted : Seeds.accepted obligation) :
      Derivation Statement Seeds Usable obligation
  | apply
      (route : CertifiedRoute Obligation Certificate Statement snapshot)
      (usable : Usable route)
      (premises :
        ∀ premise, premise ∈ route.premises →
          Derivation Statement Seeds Usable premise) :
      Derivation Statement Seeds Usable route.conclusion

namespace Derivation

/-- Every derivation exposes the proposition it proves. -/
theorem proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (derivation : Derivation Statement Seeds Usable obligation) :
    Statement obligation := by
  induction derivation with
  | seed accepted =>
      exact Seeds.sound accepted
  | apply route _ _ premiseProofs =>
      exact route.proves premiseProofs

end Derivation

def Discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (obligation : Obligation) : Prop :=
  Nonempty (Derivation Statement Seeds Usable obligation)

theorem acceptedSeed_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (accepted : Seeds.accepted obligation) :
    Discharged Statement Seeds Usable obligation :=
  ⟨.seed accepted⟩

theorem usableRoute_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    (route : CertifiedRoute Obligation Certificate Statement snapshot)
    (usable : Usable route)
    (premises :
      ∀ premise, premise ∈ route.premises →
        Discharged Statement Seeds Usable premise) :
    Discharged Statement Seeds Usable route.conclusion := by
  refine ⟨.apply route usable ?_⟩
  intro premise member
  exact (premises premise member).some

/-- Discharge is sound; it cannot be manufactured from digests alone. -/
theorem discharged_proves
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (discharged : Discharged Statement Seeds Usable obligation) :
    Statement obligation :=
  discharged.some.proves

/-- A false represented statement is excluded from the discharge relation. -/
theorem rejectedStatement_not_discharged
    {Obligation : Type u}
    {Certificate : Type v}
    [DecidableEq Obligation]
    {snapshot : ProjectionSnapshot}
    {Statement : Obligation → Prop}
    {Seeds : AcceptedSeedRegistry Obligation Statement}
    {Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop}
    {obligation : Obligation}
    (rejected : ¬ Statement obligation) :
    ¬ Discharged Statement Seeds Usable obligation := by
  intro discharged
  exact rejected (discharged_proves discharged)

end Mathematics.ProofStrategy
