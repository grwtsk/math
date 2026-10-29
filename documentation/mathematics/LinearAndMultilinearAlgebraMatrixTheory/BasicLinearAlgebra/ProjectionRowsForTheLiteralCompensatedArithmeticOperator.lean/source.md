# Projection Rows For The Literal Compensated Arithmetic Operator — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46857484cfc631da0f2b95a1314343fb72088574` · SHA-256 `425180ec8497478b61c1b137ea53733f81f8c5d04b1f559952c3e48cba035409`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCompensatedFourier
import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import FormalResearch.RiemannHypothesis.SourceKapitzaQuadratureCurvature

/-!
# Projection rows for the literal compensated arithmetic operator

This adapter uses the complete all-integer operator on every projected state. Its real signed
coefficients establish self-adjointness without substituting a scalar compensation that agrees
only on the original source. The combined rows retain diagonal and cross terms. The uniform
source-generated row-square budget remains an explicit, unpaid premise of issue 443.

grwtsk contributors supplied the research direction and source-preservation requirements. OpenAI
Codex supplied this adapter and its direct application to the existing all-real estimate return.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCompensatedProjection

open scoped InnerProductSpace BigOperators
open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open SourceCompensatedFourier SourceProjectionReadout SourceKapitzaCompensatedReadout
open CompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Every coefficient is real, including every negative integer compensation. -/
theorem compensatedInteraction_inner_symmetric (A : ℝ) (f g : ComplexL2) :
    ⟪compensatedInteraction A f, g⟫_ℂ = ⟪f, compensatedInteraction A g⟫_ℂ := by
  simp only [compensatedInteraction_apply, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, Complex.conj_ofReal, symmetricTranslation_inner_symmetric]

/-- Self-adjointness holds on arbitrary intermediate states, not only on the unit source. -/
theorem compensatedInteraction_selfAdjoint (A : ℝ) :
    IsSelfAdjoint (compensatedInteraction A) :=
  ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
    (compensatedInteraction_inner_symmetric A)

variable (V : ℕ → Submodule ℂ ComplexL2) [∀ j, (V j).HasOrthogonalProjection]

/-- The existing full-row consumer now applies to the actual compensated operator. -/
theorem compensated_abs_le_of_projection_rows (hV : Monotone V) (hzero : V 0 = ⊥)
    (A : ℝ) (hA : 0 < A) (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (compensatedInteraction A)
        (originalSourceState A) j‖ ^ 2) ≤ B) :
    |compensatedSourceSum A| ≤ Real.sqrt B := by
  have h := full_readout_abs_le_of_projection_rows V hV hzero (compensatedInteraction A)
    (compensatedInteraction_selfAdjoint A) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm hA, one_mul] at h
  simpa only [compensatedSourceSum_eq_quadratic hA, quadraticReadout] using h

/-- Scale-specific refinements with a uniform full-row budget return the original estimate. -/
theorem estimate_of_uniform_projection_rows
    (W : ℝ → ℕ → Submodule ℂ ComplexL2) [∀ A j, (W A j).HasOrthogonalProjection]
    (hW : ∀ A, Monotone (W A)) (hzero : ∀ A, W A 0 = ⊥)
    (R B : ℝ) (hR : 1 ≤ R)
    (hrows : ∀ A : ℝ, R ≤ A → ∃ n : ℕ,
      originalSourceState A ∈ W A n ∧
      (∑ j ∈ Finset.range n,
        ‖combinedProjectionRow (W A) (compensatedInteraction A)
          (originalSourceState A) j‖ ^ 2) ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  apply SourceKapitzaQuadratureCurvature.estimate_of_compensated_cap R (Real.sqrt B) hR
  intro A hA
  obtain ⟨n, hq, hB⟩ := hrows A hA
  exact (le_abs_self _).trans
    (compensated_abs_le_of_projection_rows (W A) (hW A) (hzero A) A (by linarith) n hq B hB)

end FormalResearch.RiemannHypothesis.SourceCompensatedProjection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31b6964c6e2bdd3dff29b3330a046407ee7e50f931c593cacd6b94c2ab641b85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompensatedProjection/Variant425180ec8497478b61c1b137ea53733f81f8c5d04b1f559952c3e48cba035409.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
