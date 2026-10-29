-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfExponentialPeriodicCutoffLowerColumn.Variantc46491695c783e5666eb400eb4289a8fe6f10b4e73b6ec5d54adc94d67cc6181","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c46491695c783e5666eb400eb4289a8fe6f10b4e73b6ec5d54adc94d67cc6181","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualHalfExponentialPeriodicCutoffLowerColumn.Variantc46491695c783e5666eb400eb4289a8fe6f10b4e73b6ec5d54adc94d67cc6181","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c46491695c783e5666eb400eb4289a8fe6f10b4e73b6ec5d54adc94d67cc6181","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualHalfExponentialStrongWindow.attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPeriodicHalfExponentialFar
import RootActualFullPhysicalPeriodicInterior

/-!
The actual smaller exponential far cutoff lies beyond U plus one.
This stronger guard is proved separately from the valid U-based far budget;
the literal full periodic row then splits without losing either component.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualHalfExponentialPeriodicCutoffLowerColumn.Variantc46491695c783e5666eb400eb4289a8fe6f10b4e73b6ec5d54adc94d67cc6181

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualHalfExponentialStrongWindow
open ActualPeriodicHalfExponentialFar RootActualFullPhysicalPeriodicInterior
open SourceActualFarPeriodicBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel Realization
noncomputable section

/-- The true closed natural lower column lies below exp(A/2) at every real source scale. -/
theorem actualHalfExponentialPeriodicCutoff_lower_column {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hscaled := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  have hpoly : A ^ 2 + 1 ≤ (A / 2) ^ 3 / 6 := by nlinarith
  have he := Real.pow_div_factorial_le_exp (A / 2) (by linarith : 0 ≤ A / 2) 3
  norm_num only [Nat.factorial, Nat.cast_ofNat] at he
  unfold actualHalfExponentialPeriodicCutoff
  simp only [Nat.cast_add, Nat.cast_one]
  exact (add_le_add_right hU 1).trans (hpoly.trans he)

/-- The stronger actual source orders retain both the closed lower column and true NAT quotient. -/
theorem actualHalfExponentialPeriodicCutoff_strong_orders {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A ∧
      actualHalfExponentialPeriodicCutoff A ≤
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) :=
  ⟨actualHalfExponentialPeriodicCutoff_lower_column hA,
    (actualHalfExponentialPeriodicCutoff_orders hA).2.2⟩

/-- The exact full actual physical row keeps both pieces at the smaller proved cutoff. -/
theorem actualFullPhysicalPeriodicRow_eq_half_near_add_far {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t =
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (actualHalfExponentialPeriodicCutoff A) +
      actualPhysicalPeriodicPrefixRow A t (actualHalfExponentialPeriodicCutoff A)
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  obtain ⟨hl, hk⟩ := actualHalfExponentialPeriodicCutoff_strong_orders hA
  exact actualFullPhysicalPeriodicRow_eq_near_add_far (by linarith : 1 ≤ A) hl hk t

end
end FormalResearch.RiemannHypothesis.ActualHalfExponentialStrongWindow
