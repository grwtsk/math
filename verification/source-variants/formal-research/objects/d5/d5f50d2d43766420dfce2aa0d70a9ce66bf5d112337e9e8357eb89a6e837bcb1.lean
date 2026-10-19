import SourceActualPhysicalPeriodicPrimitive
import RootActualPeriodicPhysicalCell

/-!
The genuine physical periodic Abel estimate uses the full positive-column
decay moment. Both finite endpoints are retained; no independent main sector
or signed period mean is replaced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
open MeasureTheory Set ArithmeticFunction
open scoped Interval
open SourceActualPhysicalPeriodicPrimitive SourceActualPeriodicColumnPrimitive
open RootActualPeriodicPhysicalCell
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
noncomputable section

private theorem physical_decay_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun x : ℝ => (-2 / 3 : ℝ) * Real.exp (-3 * Real.log x / 2))
      (Real.exp (-5 * Real.log x / 2)) x := by
  have hlog := (Real.hasDerivAt_log hx.ne').const_mul (-3)
  have hd := ((hlog.div_const 2).exp).const_mul (-2 / 3 : ℝ)
  have he : Real.exp (-5 * Real.log x / 2) =
      Real.exp (-3 * Real.log x / 2) * x⁻¹ := by
    have hei : Real.exp (-Real.log x) = x⁻¹ := by
      rw [Real.exp_neg, Real.exp_log hx]
    rw [← hei, ← Real.exp_add]
    congr 1
    ring
  rw [he]
  convert hd using 1 <;> try rfl
  ring

private theorem physical_decay_integral {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) =
      (2 / 3 : ℝ) * (Real.exp (-3 * Real.log l / 2) -
        Real.exp (-3 * Real.log b / 2)) := by
  have hp (x : ℝ) (hx : x ∈ uIcc l b) : 0 < x := by
    rw [uIcc_of_le hlb] at hx
    exact hl.trans_le hx.1
  have hlog : ContinuousOn Real.log (uIcc l b) :=
    Real.continuousOn_log.mono (fun x hx => (hp x hx).ne')
  have hc : ContinuousOn (fun x : ℝ => Real.exp (-5 * Real.log x / 2)) (uIcc l b) :=
    Real.continuous_exp.comp_continuousOn ((hlog.const_mul (-5)).div_const 2)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => physical_decay_hasDerivAt (hp x hx)) hc.intervalIntegrable
  rw [he]
  ring

private theorem physical_decay_integral_le {l b : ℝ} (hl : 0 < l) (hlb : l ≤ b) :
    (∫ x in l..b, Real.exp (-5 * Real.log x / 2)) ≤
      (2 / 3 : ℝ) * Real.exp (-3 * Real.log l / 2) := by
  rw [physical_decay_integral hl hlb]
  nlinarith [Real.exp_pos (-3 * Real.log b / 2)]

/-- The literal actual periodic prefix is tested against the original physical source profile. -/
def actualPhysicalPeriodicPrefixRow (A t l b : ℝ) : ℝ :=
  ∫ x in l..b,
    ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
      centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
        actualPeriodicPhysicalCellProfile A t x

/-- Genuine physical Abel yields decay while retaining both source endpoint traces. -/
theorem actualPhysicalPeriodicPrefixRow_abs_le {A t l b : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (hl : (vaughanCutoff A : ℝ) ≤ l) (hlb : l ≤ b) :
    |actualPhysicalPeriodicPrefixRow A t l b| ≤
      (32 / (3 * A)) * ((vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16) *
        Real.exp (t / 2) * Real.exp (-3 * Real.log l / 2) := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA1
  have hU1 : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by exact_mod_cast hU
  have hl1 : 1 ≤ l := hU1.trans hl
  have hl0 : 0 < l := by linarith
  have hp (x : ℝ) (hx : x ∈ Icc l b) : 0 < x := hl0.trans_le hx.1
  have hz (x : ℝ) (hx : x ∈ Icc l b) : 0 ≤ t + Real.log x :=
    add_nonneg ht (Real.log_nonneg (hl1.trans hx.1))
  have hF : ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (uIcc l b) := by
    rw [uIcc_of_le hlb]
    exact actualPeriodicPhysicalCellProfile_contDiffOn hAp hl0 b t
  let C : ℝ := Real.exp (t / 2) * (4 / A)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hFl : |actualPeriodicPhysicalCellProfile A t l| ≤
      C * Real.exp (-3 * Real.log l / 2) := by
    have h := actualPeriodicPhysicalCellProfile_abs_le hA hl0
      (hz l ⟨le_rfl, hlb⟩)
    dsimp [C]
    nlinarith
  have hFb : |actualPeriodicPhysicalCellProfile A t b| ≤
      C * Real.exp (-3 * Real.log l / 2) := by
    have h := actualPeriodicPhysicalCellProfile_abs_le hA (hl0.trans_le hlb)
      (hz b ⟨hlb, le_rfl⟩)
    have he : Real.exp (-3 * Real.log b / 2) ≤ Real.exp (-3 * Real.log l / 2) := by
      apply Real.exp_le_exp.mpr
      linarith [Real.log_le_log hl0 hlb]
    calc
      _ ≤ C * Real.exp (-3 * Real.log b / 2) := by dsimp [C]; nlinarith
      _ ≤ _ := mul_le_mul_of_nonneg_left he hC
  have hc : ContinuousOn (fun x : ℝ => C * Real.exp (-5 * Real.log x / 2)) (uIcc l b) := by
    have hlog : ContinuousOn Real.log (uIcc l b) :=
      Real.continuousOn_log.mono (fun x hx => by
        rw [uIcc_of_le hlb] at hx
        exact (hp x hx).ne')
    have he := Real.continuous_exp.comp_continuousOn ((hlog.const_mul (-5)).div_const 2)
    exact he.const_mul C
  have hD : IntervalIntegrable (fun x => |deriv (actualPeriodicPhysicalCellProfile A t) x|)
      volume l b := by
    simpa only [Real.norm_eq_abs] using
      hF.absolutelyContinuousOnInterval.intervalIntegrable_deriv.norm
  have hDi : (∫ x in l..b, |deriv (actualPeriodicPhysicalCellProfile A t) x|) ≤
      C * ((2 / 3 : ℝ) * Real.exp (-3 * Real.log l / 2)) := by
    calc
      _ ≤ ∫ x in l..b, C * Real.exp (-5 * Real.log x / 2) := by
        apply intervalIntegral.integral_mono_on hlb hD hc.intervalIntegrable
        intro x hx
        have h := actualPeriodicPhysicalCellProfile_deriv_abs_le hA (hp x hx) (hz x hx)
        dsimp [C]
        nlinarith
      _ = C * ∫ x in l..b, Real.exp (-5 * Real.log x / 2) :=
        intervalIntegral.integral_const_mul _ _
      _ ≤ _ := mul_le_mul_of_nonneg_left (physical_decay_integral_le hl0 hlb) hC
  have he := actual_physical_prefix_abel_abs_le (vaughanCutoff A) hU hl hlb
    (actualPeriodicPhysicalCellProfile A t) hF
  change |actualPhysicalPeriodicPrefixRow A t l b| ≤ _ at he
  apply he.trans
  have hb : |actualPeriodicPhysicalCellProfile A t b| + |actualPeriodicPhysicalCellProfile A t l| +
      (∫ x in l..b, |deriv (actualPeriodicPhysicalCellProfile A t) x|) ≤
      (8 / 3 : ℝ) * C * Real.exp (-3 * Real.log l / 2) := by nlinarith
  calc
    _ ≤ (vaughanCutoff A : ℝ) * ((vaughanCutoff A : ℝ) + 1) / 16 *
        ((8 / 3 : ℝ) * C * Real.exp (-3 * Real.log l / 2)) :=
      mul_le_mul_of_nonneg_left hb (by positivity)
    _ = _ := by dsimp [C]; field_simp; ring

/-- This entire actual periodic row vanishes only beyond its genuine closed time seam. -/
theorem actualPhysicalPeriodicPrefixRow_zero_right {A t l b : ℝ} (hA : 1 ≤ A)
    (hl : 0 < l) (hlb : l ≤ b) (ht : 2 * A - Real.log l ≤ t) :
    actualPhysicalPeriodicPrefixRow A t l b = 0 := by
  unfold actualPhysicalPeriodicPrefixRow
  calc
    _ = ∫ _x in l..b, (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro x hx
      rw [uIcc_of_le hlb] at hx
      have hs : 2 * A ≤ t + Real.log x := by linarith [Real.log_le_log hl hx.1]
      rw [actualPeriodicPhysicalCellProfile_zero_right hA hs, mul_zero]
    _ = 0 := by simp

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicBudget
