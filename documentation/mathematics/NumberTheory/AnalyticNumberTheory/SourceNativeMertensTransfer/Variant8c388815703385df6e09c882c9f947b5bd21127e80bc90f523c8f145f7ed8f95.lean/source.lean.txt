-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.MertensResidualEqAngularContour.Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.MertensResidualEqAngularContour.Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/scratch/rh16-followthrough-20261006-mellin/SourceNativeMertensTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeDirichletFubini
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# Native Mellin tail transfer to the unchanged residual

The original residual is identified by the maintained closed-prime-power theorem.
All-real scale coverage and the exact initial-line head are retained.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.MertensResidualEqAngularContour.Variant05638535b449ff98e94d9a6f1a47a73448e170e38c9f24048cf5bb7b42d58ca8

namespace FormalResearch.RiemannHypothesis.SourceNativeMertensTransfer

open SourceNativeAngularTail SourceNativeDirichletFubini
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- Exact native initial-line readout of the source's original residual. -/
theorem mertensResidual_eq_angularContour (A : ℝ) (hA : 1 ≤ A) :
    (mertensResidual A : ℂ) = angularContour A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, angularContour_eq_closedPrimeMoment A hA]

/-- Actual fixed-line analytic tail contract for the original residual. -/
theorem mertensResidual_sub_head_norm_bound (A T : ℝ) (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖(mertensResidual A : ℂ) - angularHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [mertensResidual_eq_angularContour A hA]
  exact angularContour_sub_head_norm_bound A T hA hT

/-- Actual growing-height tail contract for the original residual on every real scale. -/
theorem mertensResidual_growing_tail_bound (A : ℝ) (hA : 1 ≤ A) :
    ‖(mertensResidual A : ℂ) - angularHead A (growingHeight A)‖ ≤
      twoLineTailConstant / A ^ 9 := by
  rw [mertensResidual_eq_angularContour A hA]
  exact angularContour_growing_tail_bound A hA

/-- The original residual retains the actual signed head and the analytic tail budget. -/
theorem mertensResidual_le_head_add_tail (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A ≤ (angularHead A (growingHeight A)).re + twoLineTailConstant / A ^ 9 := by
  have hr := angularContour_re_le_head_add_tail A hA
  rw [← mertensResidual_eq_angularContour A hA, Complex.ofReal_re] at hr
  exact hr

/-- The single signed native head witness needed by the maintained residual consumer. -/
def SignedNativeHeadTailUpperBound : Prop :=
  ∃ K : ℝ, ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K

private theorem twoLineTailConstant_nonneg : 0 ≤ twoLineTailConstant := by
  unfold twoLineTailConstant
  have hD := SourceNativeDirichlet.rightLineMajorant_nonneg 2
  positivity

/-- The source residual receives the signed head budget, with its exact validity radius. -/
theorem mertensResidual_upper_of_signed_head {K R : ℝ} (hR : 1 ≤ R)
    (hhead : ∀ A : ℝ, R ≤ A → (angularHead A (growingHeight A)).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ K + twoLineTailConstant / R ^ 9 := by
  have hAone : 1 ≤ A := le_trans hR hA
  have hRp : 0 < R := by linarith
  have hpow : R ^ 9 ≤ A ^ 9 := pow_le_pow_left₀ hRp.le hA 9
  have ht : twoLineTailConstant / A ^ 9 ≤ twoLineTailConstant / R ^ 9 :=
    div_le_div_of_nonneg_left twoLineTailConstant_nonneg (by positivity) hpow
  exact le_trans (mertensResidual_le_head_add_tail A hAone) (add_le_add (hhead A hA) ht)

/-- Exact signed-head instantiation of the maintained eventual residual target. -/
theorem mertens_residual_tail_of_signed_native_head (h : SignedNativeHeadTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨max 0 (K + twoLineTailConstant / R ^ 9), le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact le_trans (mertensResidual_upper_of_signed_head hR hhead A hA) (le_max_right _ _)

/-- The existing eventual-to-all-real consumer gives the unchanged estimate obligation. -/
theorem estimate_of_signed_native_head (h : SignedNativeHeadTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (mertens_residual_tail_of_signed_native_head h)

end
end FormalResearch.RiemannHypothesis.SourceNativeMertensTransfer
