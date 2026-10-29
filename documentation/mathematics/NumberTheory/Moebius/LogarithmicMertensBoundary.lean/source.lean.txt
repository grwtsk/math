/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.Analysis.Integration.ExponentialVolterraL2
import GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
# The logarithmic Mertens boundary return

The finite Volterra estimate is applied to the repository's literal closed
Möbius prefix and pickup.  A logarithmic Mertens estimate pays the completed
vertical-line mass at damping `σ = 1/2`, with constant `16`.

The logarithmic estimate is retained as an explicit hypothesis.  The cited
Johnston--Leong--Tudzi estimate is Theorem A.1, equation (A.5), of
arXiv:2408.04143v2.  It is published mathematics, but it is not an admitted
theorem in the pinned Lean environment; consequently this module does not
declare the boundary result unconditional.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.Integration.ExponentialVolterraL2
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

/-- The actual Mertens source after applying damping to the pickup primitive. -/
def dampedMertensSource (σ u : ℝ) : ℝ :=
  Real.exp (-σ * u) * pickupVelocity u

/-- Expansion of the damped source in the repository's literal real-cutoff
Mertens prefix. -/
theorem dampedMertensSource_eq_mertensPrefix (σ u : ℝ) :
    dampedMertensSource σ u =
      Real.exp (-(σ + 1 / 2) * u) * mertensPrefix (Real.exp u) := by
  unfold dampedMertensSource pickupVelocity
  rw [← mul_assoc, ← Real.exp_add]
  congr 1
  ring

theorem dampedMertensSource_intervalIntegrable (σ a b : ℝ) :
    IntervalIntegrable (dampedMertensSource σ) volume a b := by
  have hc : Continuous (fun u : ℝ => Real.exp (-σ * u)) := by fun_prop
  have h := (pickupVelocity_intervalIntegrable a b).mul_continuousOn
    hc.continuousOn
  have heq : (fun u : ℝ => pickupVelocity u * Real.exp (-σ * u)) =
      dampedMertensSource σ := by
    funext u
    simp only [dampedMertensSource]
    ring
  rw [← heq]
  exact h

/-- Exact source identification for the finite causal operator. -/
theorem damped_wholePickup_eq_exponentialVolterra (σ t : ℝ) :
    Real.exp (-σ * t) * wholePickup t =
      exponentialVolterra σ (dampedMertensSource σ) t := by
  rw [exponentialVolterra_eq_damped_primitive]
  congr 1
  unfold wholePickup
  apply intervalIntegral.integral_congr
  intro u _hu
  unfold dampedMertensSource
  have he : Real.exp (σ * u) * Real.exp (-σ * u) = 1 := by
    rw [← Real.exp_add]
    convert Real.exp_zero using 1
    ring
  change pickupVelocity u =
    Real.exp (σ * u) * (Real.exp (-σ * u) * pickupVelocity u)
  rw [← mul_assoc, he, one_mul]

theorem dampedMertensSource_half (u : ℝ) :
    dampedMertensSource (1 / 2) u =
      Real.exp (-u) * mertensPrefix (Real.exp u) := by
  rw [dampedMertensSource_eq_mertensPrefix]
  congr 1
  ring

theorem dampedMertensSource_half_abs_le_one (u : ℝ) :
    |dampedMertensSource (1 / 2) u| ≤ 1 := by
  rw [dampedMertensSource_half, abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-u) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-u) * Real.exp u :=
      mul_le_mul_of_nonneg_left
        (mertensPrefix_abs_le (Real.exp_pos u).le) (Real.exp_pos _).le
    _ = 1 := by
      rw [← Real.exp_add]
      convert Real.exp_zero using 1
      ring

theorem dampedMertensSource_half_sq_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable (fun u : ℝ => dampedMertensSource (1 / 2) u ^ 2)
      volume a b := by
  have hmeas : Measurable (fun u : ℝ => dampedMertensSource (1 / 2) u ^ 2) := by
    exact (((Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).measurable.mul
        pickupVelocity_measurable).pow_const 2)
  have hmajor : IntervalIntegrable
      (fun u : ℝ => Real.exp (2 * |u|)) volume a b := by
    apply Continuous.intervalIntegrable
    fun_prop
  apply hmajor.mono_fun' hmeas.aestronglyMeasurable
  filter_upwards with u
  rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
  have hm := mertensPrefix_abs_le (Real.exp_pos u).le
  have habs : |dampedMertensSource (1 / 2) u| ≤ Real.exp |u| := by
    rw [dampedMertensSource_half, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-u) * |mertensPrefix (Real.exp u)| ≤
          Real.exp (-u) * Real.exp u :=
        mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
      _ = 1 := by
        rw [← Real.exp_add]
        convert Real.exp_zero using 1
        ring
      _ ≤ Real.exp |u| := by
        rw [← Real.exp_zero]
        exact Real.exp_le_exp.mpr (abs_nonneg u)
  have hsq := (sq_le_sq₀ (abs_nonneg _) (Real.exp_pos _).le).2 habs
  rw [sq_abs] at hsq
  calc
    dampedMertensSource (1 / 2) u ^ 2 ≤ (Real.exp |u|) ^ 2 := hsq
    _ = Real.exp (2 * |u|) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring

/-- Finite-window return for the literal pickup and completed vertical-line
mass.  No half-line integrability is assumed. -/
theorem verticalLineMass_le_dampedSource {σ T : ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hF2 : IntervalIntegrable
      (fun u : ℝ => dampedMertensSource σ u ^ 2) volume 0 T) :
    verticalLineMass σ T ≤
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := by
  have hbound := exponentialVolterra_sq_integral_le hσ hT
    (dampedMertensSource_intervalIntegrable σ 0 T) hF2
  calc
    verticalLineMass σ T =
        ∫ u in (0 : ℝ)..T,
          (Real.exp (-σ * u) * wholePickup u) ^ 2 := by
      rw [verticalLineMass_eq_weightedWindow hT,
        intervalIntegral.integral_of_le hT, ← integral_Icc_eq_integral_Ioc]
      apply setIntegral_congr_fun measurableSet_Icc
      intro u _hu
      change Real.exp (-2 * σ * u) * wholePickup u ^ 2 =
        (Real.exp (-σ * u) * wholePickup u) ^ 2
      rw [mul_pow]
      congr 1
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    _ = ∫ u in (0 : ℝ)..T,
          exponentialVolterra σ (dampedMertensSource σ) u ^ 2 := by
      apply intervalIntegral.integral_congr
      intro u _hu
      change (Real.exp (-σ * u) * wholePickup u) ^ 2 =
        exponentialVolterra σ (dampedMertensSource σ) u ^ 2
      rw [damped_wholePickup_eq_exponentialVolterra]
    _ ≤ (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := hbound

/-- A pointwise exponential envelope for the exact damped Mertens source
returns an explicit finite-horizon bound for the completed vertical-line
mass. -/
theorem verticalLineMass_le_of_source_exp_bound {C a σ T : ℝ}
    (hC : 0 ≤ C) (ha : 0 < a) (hσ : 0 < σ)
    (hsource : ∀ {u : ℝ}, 0 ≤ u →
      |dampedMertensSource σ u| ≤ C * Real.exp (-a * u))
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤ C ^ 2 / (2 * σ ^ 2 * a) := by
  have hsourceSq : ∀ {u : ℝ}, 0 ≤ u →
      dampedMertensSource σ u ^ 2 ≤
        C ^ 2 * Real.exp ((-2 * a) * u) := by
    intro u hu
    have habs := hsource hu
    have hright : 0 ≤ C * Real.exp (-a * u) :=
      mul_nonneg hC (Real.exp_pos _).le
    have hsq := (sq_le_sq₀ (abs_nonneg _) hright).2 habs
    rw [sq_abs] at hsq
    calc
      dampedMertensSource σ u ^ 2 ≤
          (C * Real.exp (-a * u)) ^ 2 := hsq
      _ = C ^ 2 * Real.exp ((-2 * a) * u) := by
        rw [mul_pow]
        congr 1
        rw [pow_two, ← Real.exp_add]
        congr 1
        ring
  have hmeas :
      Measurable (fun u : ℝ => dampedMertensSource σ u ^ 2) := by
    exact (((Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).measurable.mul
        pickupVelocity_measurable).pow_const 2)
  have hg : IntervalIntegrable
      (fun u : ℝ => C ^ 2 * Real.exp ((-2 * a) * u))
      volume 0 T := by
    apply Continuous.intervalIntegrable
    fun_prop
  have hF2 : IntervalIntegrable
      (fun u : ℝ => dampedMertensSource σ u ^ 2) volume 0 T := by
    apply hg.mono_fun' hmeas.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_uIoc] with u hu
    rw [uIoc_of_le hT] at hu
    rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
    exact hsourceSq hu.1.le
  have hfinite :
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) ≤
        ∫ u in (0 : ℝ)..T,
          C ^ 2 * Real.exp ((-2 * a) * u) := by
    apply intervalIntegral.integral_mono_on hT hF2 hg
    intro u hu
    exact hsourceSq hu.1
  have hgIoi : IntegrableOn
      (fun u : ℝ => C ^ 2 * Real.exp ((-2 * a) * u)) (Ioi 0) :=
    (integrableOn_exp_mul_Ioi (by linarith : -2 * a < 0) 0).const_mul
      (C ^ 2)
  have htail :
      (∫ u in (0 : ℝ)..T, C ^ 2 * Real.exp ((-2 * a) * u)) ≤
        ∫ u in Ioi (0 : ℝ),
          C ^ 2 * Real.exp ((-2 * a) * u) := by
    rw [intervalIntegral.integral_of_le hT]
    apply setIntegral_mono_set hgIoi
    · exact ae_of_all _ (fun u =>
        mul_nonneg (sq_nonneg C) (Real.exp_pos _).le)
    · exact ae_of_all _ (fun _ hu => hu.1)
  have htailValue :
      (∫ u in Ioi (0 : ℝ),
        C ^ 2 * Real.exp ((-2 * a) * u)) = C ^ 2 / (2 * a) := by
    rw [integral_const_mul,
      integral_exp_mul_Ioi (by linarith : -2 * a < 0) 0]
    simp only [mul_zero, Real.exp_zero]
    field_simp [ha.ne']
  have hsourceIntegral :
      (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) ≤
        C ^ 2 / (2 * a) := by
    rw [← htailValue]
    exact hfinite.trans htail
  have hV := verticalLineMass_le_dampedSource hσ hT hF2
  calc
    verticalLineMass σ T ≤
        (∫ u in (0 : ℝ)..T, dampedMertensSource σ u ^ 2) / σ ^ 2 := hV
    _ ≤ (C ^ 2 / (2 * a)) / σ ^ 2 :=
      div_le_div_of_nonneg_right hsourceIntegral (sq_nonneg σ)
    _ = C ^ 2 / (2 * σ ^ 2 * a) := by
      field_simp [hσ.ne', ha.ne']

/-- A real-cutoff Mertens power estimate transfers to every damping whose
shifted rate exceeds the supplied exponent.  This theorem transfers the
arithmetic exponent; it does not prove one. -/
theorem verticalLineMass_le_of_real_mertens_power_bound {C β σ T : ℝ}
    (hC : 0 ≤ C) (hσ : 0 < σ) (hgap : β < σ + 1 / 2)
    (hM : ∀ x : ℝ, 1 ≤ x →
      |mertensPrefix x| ≤ C * x ^ β)
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤
      C ^ 2 / (2 * σ ^ 2 * (σ + 1 / 2 - β)) := by
  have ha : 0 < σ + 1 / 2 - β := by linarith
  apply verticalLineMass_le_of_source_exp_bound hC ha hσ ?_ hT
  intro u hu
  have hMexp := hM (Real.exp u) (by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr hu)
  rw [dampedMertensSource_eq_mertensPrefix, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-(σ + 1 / 2) * u) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-(σ + 1 / 2) * u) *
          (C * (Real.exp u) ^ β) :=
      mul_le_mul_of_nonneg_left hMexp (Real.exp_pos _).le
    _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
      rw [Real.rpow_def_of_pos (Real.exp_pos u), Real.log_exp]
      calc
        Real.exp (-(σ + 1 / 2) * u) * (C * Real.exp (u * β)) =
            C * (Real.exp (-(σ + 1 / 2) * u) *
              Real.exp (u * β)) := by ring
        _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
          rw [← Real.exp_add]
          congr 1
          ring

/-- Natural-cutoff form of the same transfer.  The nonnegative-exponent
hypothesis is precisely the cost of lifting the natural estimate through the
real-floor source adapter. -/
theorem verticalLineMass_le_of_nat_mertens_power_bound {C β σ T : ℝ}
    (hC : 0 ≤ C) (hβ : 0 ≤ β)
    (hσ : 0 < σ) (hgap : β < σ + 1 / 2)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β)
    (hT : 0 ≤ T) :
    verticalLineMass σ T ≤
      C ^ 2 / (2 * σ ^ 2 * (σ + 1 / 2 - β)) := by
  have ha : 0 < σ + 1 / 2 - β := by linarith
  apply verticalLineMass_le_of_source_exp_bound hC ha hσ ?_ hT
  intro u hu
  have hMexp := mertensPrefix_exp_le_of_powerBound hC hβ hM hu
  rw [dampedMertensSource_eq_mertensPrefix, abs_mul,
    abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-(σ + 1 / 2) * u) * |mertensPrefix (Real.exp u)| ≤
        Real.exp (-(σ + 1 / 2) * u) * (C * Real.exp (β * u)) :=
      mul_le_mul_of_nonneg_left hMexp (Real.exp_pos _).le
    _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
      calc
        Real.exp (-(σ + 1 / 2) * u) * (C * Real.exp (β * u)) =
            C * (Real.exp (-(σ + 1 / 2) * u) *
              Real.exp (β * u)) := by ring
        _ = C * Real.exp (-(σ + 1 / 2 - β) * u) := by
          rw [← Real.exp_add]
          congr 1
          ring

/-- The compact part of the boundary source costs at most one. -/
theorem dampedMertensSource_half_sq_integral_zero_one_le :
    (∫ u in (0 : ℝ)..1, dampedMertensSource (1 / 2) u ^ 2) ≤ 1 := by
  have hF2 := dampedMertensSource_half_sq_intervalIntegrable 0 1
  calc
    (∫ u in (0 : ℝ)..1, dampedMertensSource (1 / 2) u ^ 2) ≤
        ∫ _u in (0 : ℝ)..1, (1 : ℝ) := by
      apply intervalIntegral.integral_mono_on (by norm_num) hF2 intervalIntegrable_const
      intro u hu
      have habs := dampedMertensSource_half_abs_le_one u
      have hsq := (sq_le_sq₀ (abs_nonneg _) zero_le_one).2 habs
      simpa only [sq_abs, one_pow] using hsq
    _ = 1 := by norm_num

/-- The paper-shaped logarithmic Mertens premise.  It remains explicit until
an actual theorem supplying it is admitted in the pinned environment. -/
def MertensLogSquareBound : Prop :=
  ∀ x : ℝ, 1 < x →
    |mertensPrefix x| ≤ 3 * x / Real.log x ^ 2

theorem dampedMertensSource_half_sq_le_tail
    (hM : MertensLogSquareBound) {u : ℝ} (hu : 1 ≤ u) :
    dampedMertensSource (1 / 2) u ^ 2 ≤
      9 * u ^ (-(4 : ℝ)) := by
  have hu0 : 0 < u := zero_lt_one.trans_le hu
  have hm := hM (Real.exp u) (by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr hu0)
  rw [Real.log_exp] at hm
  have habs : |dampedMertensSource (1 / 2) u| ≤ 3 / u ^ 2 := by
    rw [dampedMertensSource_half, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-u) * |mertensPrefix (Real.exp u)| ≤
          Real.exp (-u) * (3 * Real.exp u / u ^ 2) :=
        mul_le_mul_of_nonneg_left hm (Real.exp_pos _).le
      _ = 3 / u ^ 2 := by
        have he : Real.exp (-u) * Real.exp u = 1 := by
          rw [← Real.exp_add]
          convert Real.exp_zero using 1
          ring
        calc
          Real.exp (-u) * (3 * Real.exp u / u ^ 2) =
              3 * (Real.exp (-u) * Real.exp u) / u ^ 2 := by ring
          _ = 3 / u ^ 2 := by rw [he, mul_one]
  have hnonneg : 0 ≤ 3 / u ^ 2 := div_nonneg (by norm_num) (sq_nonneg _)
  have hsq := (sq_le_sq₀ (abs_nonneg _) hnonneg).2 habs
  rw [sq_abs] at hsq
  calc
    dampedMertensSource (1 / 2) u ^ 2 ≤ (3 / u ^ 2) ^ 2 := hsq
    _ = 9 * u ^ (-(4 : ℝ)) := by
      rw [Real.rpow_neg hu0.le]
      field_simp [hu0.ne']
      norm_num [mul_comm]

/-- The logarithmic tail costs at most three. -/
theorem dampedMertensSource_half_sq_tail_le_three
    (hM : MertensLogSquareBound) {T : ℝ} (hT : 1 ≤ T) :
    (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤ 3 := by
  have hF2 := dampedMertensSource_half_sq_intervalIntegrable 1 T
  have hg : IntervalIntegrable (fun u : ℝ => 9 * u ^ (-(4 : ℝ))) volume 1 T := by
    apply ContinuousOn.intervalIntegrable_of_Icc hT
    intro u hu
    exact (continuousAt_const.mul
      (Real.continuousAt_rpow_const u (-(4 : ℝ))
        (Or.inl (by linarith [hu.1] : u ≠ 0)))).continuousWithinAt
  have hfinite :
      (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
        ∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ)) := by
    apply intervalIntegral.integral_mono_on hT hF2 hg
    intro u hu
    exact dampedMertensSource_half_sq_le_tail hM hu.1
  have htailInt : IntegrableOn (fun u : ℝ => 9 * u ^ (-(4 : ℝ))) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) (by norm_num)).const_mul 9
  have htail : (∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ))) ≤
      ∫ u in Ioi (1 : ℝ), 9 * u ^ (-(4 : ℝ)) := by
    rw [intervalIntegral.integral_of_le hT]
    apply setIntegral_mono_set htailInt
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
      exact mul_nonneg (by norm_num)
        (Real.rpow_nonneg (zero_lt_one.trans hu).le _)
    exact ae_of_all _ (fun _ hu => hu.1)
  calc
    (∫ u in (1 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
        ∫ u in (1 : ℝ)..T, 9 * u ^ (-(4 : ℝ)) := hfinite
    _ ≤ ∫ u in Ioi (1 : ℝ), 9 * u ^ (-(4 : ℝ)) := htail
    _ = 3 := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt (by norm_num) (by norm_num)]
      norm_num

/-- The complete finite boundary source has uniform squared mass at most four. -/
theorem dampedMertensSource_half_sq_integral_le_four
    (hM : MertensLogSquareBound) {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤ 4 := by
  by_cases hT1 : T ≤ 1
  · have hF2 := dampedMertensSource_half_sq_intervalIntegrable 0 T
    calc
      (∫ u in (0 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
          ∫ _u in (0 : ℝ)..T, (1 : ℝ) := by
        apply intervalIntegral.integral_mono_on hT hF2 intervalIntegrable_const
        intro u hu
        have habs := dampedMertensSource_half_abs_le_one u
        have hsq := (sq_le_sq₀ (abs_nonneg _) zero_le_one).2 habs
        simpa only [sq_abs, one_pow] using hsq
      _ = T := by simp
      _ ≤ 4 := by linarith
  · have h1T : 1 ≤ T := le_of_not_ge hT1
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (dampedMertensSource_half_sq_intervalIntegrable 0 1)
      (dampedMertensSource_half_sq_intervalIntegrable 1 T)
    rw [← hadd]
    linarith [dampedMertensSource_half_sq_integral_zero_one_le,
      dampedMertensSource_half_sq_tail_le_three hM h1T]

/-- Conditional formal boundary payment.  The only non-native premise is the
displayed logarithmic Mertens estimate. -/
theorem verticalLineMass_half_le_of_mertens_log_sq_bound
    (hM : MertensLogSquareBound) {T : ℝ} (hT : 0 ≤ T) :
    verticalLineMass (1 / 2) T ≤ 16 := by
  have hV := verticalLineMass_le_dampedSource (σ := (1 / 2 : ℝ))
    (by norm_num) hT (dampedMertensSource_half_sq_intervalIntegrable 0 T)
  have hsource := dampedMertensSource_half_sq_integral_le_four hM hT
  norm_num at hV
  linarith

theorem criticalBoundaryVerticalLineUniform_of_mertens_log_sq_bound
    (hM : MertensLogSquareBound) : CriticalBoundaryVerticalLineUniform := by
  exact ⟨16, by norm_num, fun _T hT =>
    verticalLineMass_half_le_of_mertens_log_sq_bound hM hT⟩

/-- The same boundary constant controls every larger damping. -/
theorem verticalLineMass_le_sixteen_of_half_le {σ T : ℝ}
    (hσ : 1 / 2 ≤ σ) (hT : 0 ≤ T)
    (hhalf : verticalLineMass (1 / 2) T ≤ 16) :
    verticalLineMass σ T ≤ 16 :=
  (verticalLineMass_antitone hσ hT).trans hhalf

/-- The logarithmic Mertens premise controls every damping at or to the right
of the boundary `σ = 1/2`, with the same horizon-independent constant. -/
theorem verticalLineMass_le_sixteen_of_mertens_log_sq_bound
    (hM : MertensLogSquareBound) {σ T : ℝ}
    (hσ : 1 / 2 ≤ σ) (hT : 0 ≤ T) :
    verticalLineMass σ T ≤ 16 :=
  verticalLineMass_le_sixteen_of_half_le hσ hT
    (verticalLineMass_half_le_of_mertens_log_sq_bound hM hT)

end GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary

#print axioms GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary.verticalLineMass_half_le_of_mertens_log_sq_bound
#print axioms GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary.criticalBoundaryVerticalLineUniform_of_mertens_log_sq_bound
#print axioms GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary.verticalLineMass_le_of_source_exp_bound
#print axioms GRWTSK.NumberTheory.Moebius.LogarithmicMertensBoundary.verticalLineMass_le_of_nat_mertens_power_bound
