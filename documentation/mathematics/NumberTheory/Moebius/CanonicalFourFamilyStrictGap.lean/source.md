# Complete source: GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyStrictGap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16ccf57a581b3835d7b8f0756f23243d7b9511dc` · SHA-256 `1219a6ebab12ccd29bae96684d66b30ecc591ea82cd5b964ab16365138261758`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyFullAdjointReconstruction
import GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap

/-! # Strictness on the genuine finite restriction family
At each fixed scale qualitative kernel exclusion suffices for a strict damped
adjoint estimate. Kernel exclusion is an unresolved arithmetic hypothesis,
and is false at scale three. No RH-scale uniform gap is asserted. -/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.RiemannHypothesis

theorem restrictionDifferenceSet_finite (X : ℕ) :
    (CanonicalFourFamilyRestrictionDifferenceSet X).Finite := by
  classical
  have hf : {S : Finset (CanonicalFourFamily × ℕ) | S ⊆ canonicalFourFamilyCells X}.Finite := by
    apply (canonicalFourFamilyCells X).powerset.finite_toSet.subset
    intro S hS
    exact Finset.mem_powerset.mpr hS
  have := hf.fintype
  have hr := Set.finite_range (fun p : CanonicalFourFamilyRestrictionConfig X ×
      CanonicalFourFamilyRestrictionConfig X =>
    canonicalFourFamilyRestrictionPacket X p.1 - canonicalFourFamilyRestrictionPacket X p.2)
  apply hr.subset
  rintro v ⟨S,T,rfl⟩
  exact ⟨(S,T),rfl⟩

theorem restriction_strict_adjoint_of_kernel_exclusion (X : ℕ)
    (hker : ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      0 < canonicalFourFamilyAmbientSourceEnergy X v →
      0 < canonicalFourFamilyWindowOutputEnergy X v) :
    ∃ q : ℝ, 0 ≤ q ∧ q < 1 ∧
      ∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet X,
      canonicalFourFamilyAmbientSourceEnergy X
        (fun F c => v F c - fullAdjointReconstruction X
          (fun n => canonicalFourFamilyGreenMatrixApply X n v) F c) ≤
      q * canonicalFourFamilyAmbientSourceEnergy X v := by
  have hE (v : CanonicalFourFamilyRealPacket) : 0 ≤ canonicalFourFamilyAmbientSourceEnergy X v :=
    Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hO (v : CanonicalFourFamilyRealPacket) : 0 ≤ canonicalFourFamilyWindowOutputEnergy X v :=
    Finset.sum_nonneg (fun _ _ => sq_nonneg _)
  obtain ⟨a, ha, hab⟩ := GRWTSK.LinearAlgebra.Matrix.FiniteObservationGap.finite_gap
    (restrictionDifferenceSet_finite X) _ _ hE hO hker
  let d := min (fullAdjointDamping X * a) (1 / 2)
  have hd : 0 < d := lt_min (mul_pos (fullAdjointDamping_pos X) ha) (by norm_num)
  refine ⟨1-d, by have := min_le_right (fullAdjointDamping X*a) (1/2:ℝ); dsimp [d]; linarith,
    by linarith, ?_⟩
  intro v hv
  have h1 := fullAdjointResidual_descent X v
  have h2 := mul_le_mul_of_nonneg_left (hab v hv) (fullAdjointDamping_pos X).le
  have h3 := mul_le_mul_of_nonneg_right (min_le_left (fullAdjointDamping X*a) (1/2:ℝ)) (hE v)
  change d * canonicalFourFamilyAmbientSourceEnergy X v ≤ _ at h3
  nlinarith only [h1,h2,h3]

theorem restriction_kernel_exclusion_false_three :
    ¬ (∀ v ∈ CanonicalFourFamilyRestrictionDifferenceSet 3,
      0 < canonicalFourFamilyAmbientSourceEnergy 3 v →
      0 < canonicalFourFamilyWindowOutputEnergy 3 v) := by
  intro h
  obtain ⟨v,hv,he,ho⟩ := restriction_three_realizable_kernel
  have hp := h v hv (by rw [he]; norm_num)
  rw [ho] at hp
  exact lt_irrefl 0 hp
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=062bb945c8acf65042a0c4bdac38b2f6b32fe07d3d766fc582d5552b3faadb1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyStrictGap.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
