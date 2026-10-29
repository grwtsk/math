/- Actual weighted Gaussian-window consumers and the omitted-positive-parameter obstruction.
OpenAI/Mathlib notices and Apache-2.0 terms are retained in the library. -/
import GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation
import Mathlib.Topology.Algebra.InfiniteSum.Group
namespace GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation.Checks
noncomputable section
open scoped SchwartzMap
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow

theorem gaussian_weighted_generic (s : ℝ) (hs : 0<s) (S : Finset (ℕ×ℕ)) :
    ∃ C : ℝ, 0<C ∧ ∀ Z : ℝ, ∀ hZ : 0<Z,
      Summable (fun j : ℕ => ((2:ℝ)^j)^s*S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)) ∧
      (∑' j : ℕ, ((2:ℝ)^j)^s*S.sup (schwartzSeminormFamily ℝ ℝ ℂ) (gaussianDyadicSchwartz Z hZ j)) ≤ C*Z^s :=
  gaussianDyadicSchwartz_summed s hs S

theorem gaussian_values_one :
    Summable (fun j : ℕ => ((2:ℝ)^j)*‖gaussianDyadicProfile 1 j 1‖) := by
  obtain ⟨C,hC,h⟩ := gaussianDyadicProfile_values_summed 1 (by norm_num)
  simpa only [Real.rpow_one] using (h 1 (by norm_num) 1).1

theorem gaussian_zero_scale_nonzero : gaussianDyadicProfile 0 0 (3/4) ≠ 0 := by
  have ha : dyadicAnnulus (3/4) ≠ 0 := by
    have hpos : 0 < (dyadicAnnulus (3/4)).re := by
      change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
      rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
      have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
      linarith
    intro hz
    rw [hz, Complex.zero_re] at hpos
    norm_num at hpos
  have hp : gaussianMellinProfile 0 ≠ 0 := by
    have he : gaussianMellinProfile 0 = gaussianMellinCoefficient := by simp [gaussianMellinProfile,gaussianMellinCoefficient]
    rw [he]
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz,zero_mul] at h
    norm_num at h
  unfold gaussianDyadicProfile
  simp only [div_zero]
  exact div_ne_zero (mul_ne_zero ha hp)
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne')

/-- Actual weighted values at zero scale are not summable; no zero-scale Schwartz map is used. -/
theorem gaussian_zero_scale_values_not_summable :
    ¬ Summable (fun j : ℕ => ((2:ℝ)^j)^(1:ℝ)*‖gaussianDyadicProfile 0 j (3/4)‖) := by
  intro h
  have he (j : ℕ) : gaussianDyadicProfile 0 j (3/4) = gaussianDyadicProfile 0 0 (3/4) := by
    simp only [gaussianDyadicProfile,div_zero]
  have hc : Summable (fun _ : ℕ => ‖gaussianDyadicProfile 0 0 (3/4)‖) := by
    apply h.of_nonneg_of_le (fun _ => norm_nonneg _)
    intro j
    simp only [he, Real.rpow_one]
    exact le_mul_of_one_le_left (norm_nonneg _) (one_le_pow₀ (by norm_num : (1:ℝ) ≤ 2))
  have hz : ‖gaussianDyadicProfile 0 0 (3/4)‖ = 0 := (summable_const_iff ‖gaussianDyadicProfile 0 0 (3/4)‖).mp hc
  exact gaussian_zero_scale_nonzero (norm_eq_zero.mp hz)

end
end GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation.Checks
