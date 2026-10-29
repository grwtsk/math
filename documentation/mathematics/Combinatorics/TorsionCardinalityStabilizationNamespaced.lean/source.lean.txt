-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","mathematical_subject":"Algebra.OrderTheory","original_sha256":"c84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/TorsionCardinalityStabilization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.TorsionLedger
import Mathlib.Order.Monotone.Basic

/-!
# Cardinality stabilization under a uniform finite torsion bound

This elementary result isolates the combinatorial fact from stronger claims
about group structure, generators, transition maps, or Bockstein data.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TorsionCardinalityEventuallyConstant.Variantc84d97bda827862fd712d90b4598b38451dcd61f66dec8b1ddb951ea3c3f1237

namespace Mathematics.Homology

/-- A uniformly bounded monotone sequence of finite cardinalities stabilizes. -/
theorem torsionCardinality_eventuallyConstant
    (cardinality : Nat → Nat) :
    Monotone cardinality →
    (∃ bound, ∀ stage, cardinality stage ≤ bound) →
      ∃ stableStage,
        ∀ stage, stableStage ≤ stage →
          cardinality stage = cardinality stableStage := by
  intro monotoneCardinality bounded
  obtain ⟨bound, boundedBy⟩ := bounded
  obtain ⟨value, stableStage, stable⟩ :=
    converges_of_monotone_of_bounded monotoneCardinality boundedBy
  exact ⟨stableStage, fun stage later ↦
    (stable stage later).trans (stable stableStage (le_refl _)).symm⟩

end Mathematics.Homology
