/- Actual entire-flow consumers and an exact failed zero-scale profile identity.
OpenAI/Mathlib Apache-2.0 notices and named individual credits retained in the library. -/
import GRWTSK.Analysis.MellinTransform.GaussianLogFlow
namespace GRWTSK.Analysis.MellinTransform.GaussianLogFlow.Checks
noncomputable section
open scoped ContDiff
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian

theorem actual_zero_entire (z : ℂ) : AnalyticAt ℂ (gaussianFlow 0) z :=
  gaussianFlow_analytic 0 z

theorem positive_profile_identity (R : ℝ) (hR : 0<R) (s : ℝ) :
    gaussianFlow R (s:ℂ)=gaussianMellinProfile (R*Real.exp s) :=
  gaussianFlow_real R hR s

theorem actual_one_identity : gaussianFlow 1 (1:ℂ)=gaussianMellinProfile (Real.exp 1) := by
  simpa only [one_mul,Complex.ofReal_one] using gaussianFlow_real 1 (by norm_num) 1

theorem actual_derivative_bound (a L : ℝ) (hL : 0≤L) (n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→∀y : ℝ,|y|≤L→
      ‖iteratedDeriv n (fun s : ℝ=>gaussianFlow R (s:ℂ)) y‖≤C*R^(-a) :=
  gaussianFlow_derivative_bound a L hL n

lemma coefficient_nonzero : gaussianMellinCoefficient≠0 := by
  intro hz
  have h := gaussianMellinCoefficient_normalizes
  rw [hz,zero_mul] at h
  norm_num at h

lemma actual_zero_flow_value :
    gaussianFlow 0 (1:ℂ)=gaussianMellinCoefficient*(Real.exp (-1/4:ℝ):ℂ) := by
  change gaussianMellinCoefficient*Complex.exp (-((Real.log 0:ℂ)+(1:ℂ))^2/4)=_
  rw [Complex.ofReal_exp]
  congr 2
  norm_num

lemma actual_zero_profile_value :
    gaussianMellinProfile (0*Real.exp 1)=gaussianMellinCoefficient := by
  simp [gaussianMellinProfile,gaussianMellinCoefficient]

/-- Entirety at zero does not pay the positive-R profile identity. -/
theorem actual_zero_identity_false :
    gaussianFlow 0 (1:ℂ)≠gaussianMellinProfile (0*Real.exp 1) := by
  intro h
  rw [actual_zero_flow_value,actual_zero_profile_value] at h
  have he : (Real.exp (-1/4:ℝ):ℂ)=1 := by
    apply mul_left_cancel₀ coefficient_nonzero
    simpa only [mul_one] using h
  have her : Real.exp (-1/4:ℝ)=1 := by exact_mod_cast he
  exact (ne_of_lt (Real.exp_lt_one_iff.mpr (by norm_num : (-1/4:ℝ)<0))) her

end
end GRWTSK.Analysis.MellinTransform.GaussianLogFlow.Checks
