import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic

/-!
Real-variable calculus for the actual strict zero-tail Stieltjes adapter.
The cumulative indicator is closed (gamma <= x), the tail indicator is strict
(T < gamma), and equality at the cutoff cancels against the endpoint term.
No zero-count, literature estimate, or arithmetic witness is assumed.
Originating mathematical direction, theorem selection, corrections, evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory Set

/-- The derivative magnitude of x^-6 on the positive half-line. -/
def ordinateKernel (x : ℝ) : ℝ := 6/x^7

theorem ordinate_kernel_nonnegative {x : ℝ} (hx : 0 ≤ x) :
    0 ≤ ordinateKernel x := by
  unfold ordinateKernel
  positivity

private theorem negative_seven_real_power {x : ℝ} (hx : 0 < x) :
    x^(-7 : ℝ) = 1/x^7 := by
  rw [show (-7 : ℝ) = -(7 : ℝ) by norm_num, Real.rpow_neg hx.le,
    one_div]
  simp only [Real.rpow_ofNat]

/-- Genuine integrability precedes the improper integral identity. -/
theorem ordinate_kernel_integrable {a : ℝ} (ha : 0 < a) :
    IntegrableOn ordinateKernel (Ioi a) := by
  have h : IntegrableOn (fun x : ℝ => 6*x^(-7 : ℝ)) (Ioi a) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-7 : ℝ) < -1) ha).const_mul 6
  apply h.congr_fun _ measurableSet_Ioi
  intro x hx
  change 6*x^(-7 : ℝ) = 6/x^7
  rw [negative_seven_real_power (ha.trans hx)]
  ring

/-- Accepted real-power improper integration, with a positive lower endpoint. -/
theorem ordinate_kernel_integral {a : ℝ} (ha : 0 < a) :
    (∫ x : ℝ in Ioi a, ordinateKernel x) = 1/a^6 := by
  have he : (∫ x : ℝ in Ioi a, ordinateKernel x) =
      6 * ∫ x : ℝ in Ioi a, x^(-7 : ℝ) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    change 6/x^7 = 6*x^(-7 : ℝ)
    rw [negative_seven_real_power (ha.trans hx)]
    ring
  rw [he, integral_Ioi_rpow_of_lt (by norm_num : (-7 : ℝ) < -1) ha]
  norm_num only
  rw [Real.rpow_neg ha.le]
  simp only [Real.rpow_ofNat]
  ring

/-- The lower limit is the maximum of the scale cutoff and actual ordinate. -/
theorem ordinate_kernel_integral_max (T gamma : ℝ) (hT : 0 < T)
    (_hgamma : 0 < gamma) :
    (∫ x : ℝ in Ioi (max T gamma), 6/x^7) = 1/(max T gamma)^6 := by
  exact ordinate_kernel_integral (hT.trans_le (le_max_left T gamma))

/-- A closed cumulative occurrence contributes an integrable kernel. -/
theorem closed_ordinate_kernel_integrable (T gamma : ℝ) (hT : 0 < T) :
    IntegrableOn ((Ici gamma).indicator ordinateKernel) (Ioi T) :=
  (ordinate_kernel_integrable hT).indicator measurableSet_Ici

/-- The closed count kernel keeps the gamma=T case. The singleton boundary
has zero Lebesgue measure but the separate count endpoint retains its atom. -/
theorem closed_ordinate_kernel_integral (T gamma : ℝ) (hT : 0 < T)
    (hgamma : 0 < gamma) :
    (∫ x : ℝ in Ioi T, (Ici gamma).indicator ordinateKernel x) =
      1/(max T gamma)^6 := by
  rw [setIntegral_indicator measurableSet_Ici]
  by_cases h : gamma ≤ T
  · have hi : Ioi T ∩ Ici gamma = Ioi T := by
      ext x
      simp only [mem_inter_iff, mem_Ioi, mem_Ici]
      constructor
      · exact And.left
      · intro hx
        exact ⟨hx, h.trans hx.le⟩
    rw [hi, max_eq_left h]
    exact ordinate_kernel_integral hT
  · have hg : T < gamma := lt_of_not_ge h
    have hi : Ioi T ∩ Ici gamma = Ici gamma := by
      ext x
      simp only [mem_inter_iff, mem_Ioi, mem_Ici]
      constructor
      · exact And.right
      · intro hx
        exact ⟨hg.trans_le hx, hx⟩
    rw [hi, integral_Ici_eq_integral_Ioi, max_eq_right hg.le]
    exact ordinate_kernel_integral hgamma

/-- Exact per-occurrence Stieltjes subtraction for the closed count and
strict omitted tail. No simplicity assumption is made or needed. -/
theorem strict_ordinate_weight_eq_closed_integral_sub_endpoint
    (T gamma : ℝ) (hT : 0 < T) (hgamma : 0 < gamma) :
    (if T < gamma then 1/gamma^6 else 0) =
      (∫ x : ℝ in Ioi T, (Ici gamma).indicator ordinateKernel x) -
        (if gamma ≤ T then 1/T^6 else 0) := by
  rw [closed_ordinate_kernel_integral T gamma hT hgamma]
  by_cases h : gamma ≤ T
  · simp [h, not_lt.mpr h]
  · have hg : T < gamma := lt_of_not_ge h
    simp [h, hg, max_eq_right hg.le]

/-- At a touching ordinate the two contributions cancel exactly. -/
theorem touching_ordinate_endpoint_cancels (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, (Ici T).indicator ordinateKernel x) - 1/T^6 = 0 := by
  rw [closed_ordinate_kernel_integral T T hT hT, max_self, sub_self]

end CommonMeanStieltjes
