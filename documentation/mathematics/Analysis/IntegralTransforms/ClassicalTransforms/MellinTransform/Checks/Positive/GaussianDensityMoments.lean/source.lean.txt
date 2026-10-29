/- Actual density-moment consumers and a complete zero-cutoff bound counterexample.
OpenAI/Mathlib Apache-2.0 notices and named individual credits retained in the library. -/
import GRWTSK.Analysis.MellinTransform.GaussianDensityMoments
import GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
namespace GRWTSK.Analysis.MellinTransform.GaussianDensityMoments.Checks
noncomputable section
open scoped FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow

noncomputable def exampleWindow : SchwartzMap ℝ ℂ := gaussianDyadicSchwartz 1 (by norm_num) 0
lemma exampleWindow_compact : HasCompactSupport (exampleWindow:ℝ→ℂ) :=
  gaussianDyadicProfile_compact 1 0

theorem actual_gaussian_nonzero : gaussianDyadicProfile 1 0 (3/4) ≠ 0 := by
  have ha : dyadicAnnulus (3/4) ≠ 0 := by
    have hpos : 0 < (dyadicAnnulus (3/4)).re := by
      change 0 < Real.smoothTransition (2-(3/4:ℝ))-Real.smoothTransition (2-2*(3/4:ℝ))
      rw [Real.smoothTransition.one_of_one_le (by norm_num : (1:ℝ) ≤ 2-3/4)]
      have h := Real.smoothTransition.lt_one_of_lt_one (by norm_num : (2-2*(3/4:ℝ)) < 1)
      linarith
    intro hz
    rw [hz, Complex.zero_re] at hpos
    norm_num at hpos
  have hc : gaussianMellinCoefficient ≠ 0 := by
    intro hz
    have h := gaussianMellinCoefficient_normalizes
    rw [hz,zero_mul] at h
    norm_num at h
  have hp : gaussianMellinProfile (3/4) ≠ 0 := by
    change gaussianMellinCoefficient * Complex.exp _ ≠ 0
    exact mul_ne_zero hc (Complex.exp_ne_zero _)
  unfold gaussianDyadicProfile
  norm_num only [pow_zero,one_mul,div_one]
  exact div_ne_zero (mul_ne_zero ha hp)
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr (by norm_num : (0:ℝ) < 3/4)).ne')


lemma exampleWindow_nonzero : exampleWindow (3/4)≠0 := actual_gaussian_nonzero


lemma exampleWindow_ne_zero : exampleWindow≠0 := by
  intro hz
  have hh := congrArg (fun f : SchwartzMap ℝ ℂ=>f (3/4)) hz
  exact exampleWindow_nonzero (by simpa only [zero_apply] using hh)

theorem actual_weighted_sum (k s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z : ℝ,0<Z→
      Summable (fun j : ℕ=>((2:ℝ)^j)^s*gaussianWeightedMoment exampleWindow exampleWindow_compact 0 k ((2:ℝ)^j/Z)) ∧
      (∑'j : ℕ,((2:ℝ)^j)^s*gaussianWeightedMoment exampleWindow exampleWindow_compact 0 k ((2:ℝ)^j/Z))≤C*Z^s :=
  gaussianWeightedMoment_summed exampleWindow exampleWindow_compact 0 k s hs

theorem actual_remote_sum (N : ℕ) (s : ℝ) (hs : 0<s) :
    ∃C : ℝ,0<C ∧ ∀Z A : ℝ,0<Z→1≤A→
      Summable (gaussianRemoteMoment exampleWindow exampleWindow_compact 0 s Z A) ∧
      (∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 s Z A j)≤C*Z^s/A^N :=
  gaussianRemoteMoment_summed exampleWindow exampleWindow_compact 0 N s hs

theorem actual_moment_integrable :
    Integrable (fun t : ℝ=>(1+‖t‖)^0*‖gaussianJointDensity exampleWindow exampleWindow_compact 1 t‖) :=
  gaussianJointMoment_integrable exampleWindow exampleWindow_compact 0 1

theorem actual_moment_pos : 0<gaussianJointMoment exampleWindow exampleWindow_compact 0 1 :=
  gaussianJointMoment_zero_pos exampleWindow exampleWindow_compact exampleWindow_ne_zero 1

theorem actual_positive_remote_summable :
    Summable (gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 2) := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteMoment_summed exampleWindow exampleWindow_compact 0 1 1 (by norm_num)
  exact (h 1 2 (by norm_num) (by norm_num)).1

theorem remote_zero_cutoff_eq (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (J : ℕ) (s Z : ℝ) (hZ : 0<Z) :
    gaussianRemoteMoment V hV J s Z 0 =
      (fun j : ℕ=>((2:ℝ)^j)^s*gaussianJointMoment V hV J ((2:ℝ)^j/Z)) := by
  funext j
  unfold gaussianRemoteMoment
  rw [if_pos (Or.inr (by positivity : (0:ℝ)≤2^j/Z))]

theorem actual_zero_cutoff_summable :
    Summable (gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0) := by
  rw [remote_zero_cutoff_eq exampleWindow exampleWindow_compact 0 1 1 (by norm_num)]
  obtain ⟨C,hC,h⟩ := gaussianJointMoment_summed exampleWindow exampleWindow_compact 0 1 (by norm_num)
  exact (h 1 (by norm_num)).1

theorem actual_zero_cutoff_term_pos :
    0<gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 0 := by
  rw [remote_zero_cutoff_eq exampleWindow exampleWindow_compact 0 1 1 (by norm_num)]
  simpa only [pow_zero,Real.one_rpow,one_mul,div_one] using actual_moment_pos

theorem actual_zero_cutoff_sum_pos :
    0<∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 j := by
  apply actual_zero_cutoff_summable.tsum_pos _ 0 actual_zero_cutoff_term_pos
  intro j
  unfold gaussianRemoteMoment
  split_ifs
  · exact mul_nonneg (Real.rpow_nonneg (by positivity) _) (gaussianJointMoment_nonneg _ _ _ _)
  · rfl

/-- The actual convergent positive density sum contradicts every proposed N1,A0 bound. -/
theorem actual_zero_cutoff_bound_false (C : ℝ) :
    ¬ ((∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 j)≤
      C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1) := by
  intro h
  have hz : (∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 j)≤0 := by simpa using h
  exact (not_le_of_gt actual_zero_cutoff_sum_pos) hz

end
end GRWTSK.Analysis.MellinTransform.GaussianDensityMoments.Checks
