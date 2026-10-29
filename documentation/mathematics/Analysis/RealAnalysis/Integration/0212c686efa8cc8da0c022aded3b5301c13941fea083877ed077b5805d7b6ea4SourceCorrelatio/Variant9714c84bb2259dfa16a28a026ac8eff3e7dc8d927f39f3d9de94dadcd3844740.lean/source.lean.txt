import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Finite geometric cell transport for the actual source correlation

The checked curvature-five bound controls the original correlation on every
closed cell `[n,n+1]`. A physical-coordinate majorant has the explicit primitive
`-2 (log x + 2) / sqrt x`; finite interval additivity gives the uniform
`40 / A²` price for every natural upper inventory.

Constants cancel exactly, but the first moment is retained. Its exact linear
compensation and the actual second-moment remainder are proved separately.
No arithmetic discrepancy, infinite-depth budget, or Riemann Hypothesis bound
is inferred from this local geometric estimate.

Research direction and selection: grwtsk contributors.
Formal construction: OpenAI Codex; independent review is a separate gate.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport
open Set MeasureTheory
open scoped BigOperators
open SourcePairing SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- The actual signed geometric correction on one full physical lattice cell. -/
def cellCorrection (A : ℝ) (n : ℕ) : ℝ :=
  ∫ x in (n : ℝ)..((n : ℝ) + 1),
    (sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x

/-- Positive integrable majorant in the original physical coordinate. -/
def cellMajorant (x : ℝ) : ℝ := Real.log x / (x * Real.sqrt x)

/-- The primitive retains its upper endpoint term. -/
def majorantPrimitive (x : ℝ) : ℝ := -2 * (Real.log x + 2) / Real.sqrt x

theorem majorantPrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt majorantPrimitive (cellMajorant x) x := by
  have hs : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).div
    (Real.hasDerivAt_sqrt hx.ne') hs
  convert hd using 1 <;> first
  | rfl
  | (dsimp [cellMajorant]; field_simp [hx.ne', hs];
      simp only [Real.sq_sqrt hx.le]; ring)

theorem cellMajorant_continuousOn : ContinuousOn cellMajorant (Ioi 0) := by
  intro x hx
  exact ((Real.continuousAt_log hx.ne').div
    (continuousAt_id.mul Real.continuous_sqrt.continuousAt)
    (mul_ne_zero hx.ne' (Real.sqrt_pos.2 hx).ne')).continuousWithinAt

theorem cellMajorant_intervalIntegrable {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable cellMajorant volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  exact cellMajorant_continuousOn.mono (fun x hx => ha.trans_le hx.1)

theorem cellMajorant_integral_eq {b : ℝ} (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant x) = 4 - 2 * (Real.log b + 2) / Real.sqrt b := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (f := majorantPrimitive) ?_
    (cellMajorant_intervalIntegrable zero_lt_one hb)]
  · simp [majorantPrimitive]
    ring
  · intro x hx
    rw [uIcc_of_le hb] at hx
    exact majorantPrimitive_hasDerivAt (zero_lt_one.trans_le hx.1)

theorem cellMajorant_integral_le_four {b : ℝ} (hb : 1 ≤ b) :
    (∫ x in (1 : ℝ)..b, cellMajorant x) ≤ 4 := by
  rw [cellMajorant_integral_eq hb]
  apply sub_le_self
  exact div_nonneg (mul_nonneg (by norm_num) (by linarith [Real.log_nonneg hb]))
    (Real.sqrt_nonneg b)

theorem sourceCorrelation_log_increment_bound {A a b : ℝ} (hA : 200 ≤ A)
    (ha : 1 ≤ a) (hab : a ≤ b) :
    |sourceCorrelation explicitSecondDerivative A (Real.log a) -
      sourceCorrelation explicitSecondDerivative A (Real.log b)| ≤
      (5 / A ^ 2) * Real.log b * (Real.log b - Real.log a) := by
  have hp : 0 < A := by linarith
  have ha0 : 0 < a := by linarith
  have hb0 : 0 < b := ha0.trans_le hab
  have hlogab : Real.log a ≤ Real.log b := Real.log_le_log ha0 hab
  have hloga : 0 ≤ Real.log a := Real.log_nonneg ha
  have hlogb : 0 ≤ Real.log b := hloga.trans hlogab
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Icc (Real.log a) (Real.log b))
    (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hp).differentiable (by norm_num) x)
    (C := (5 / A ^ 2) * Real.log b)
    (fun x hx => by
      rw [Real.norm_eq_abs]
      apply (sourceCorrelation_deriv_abs_le_scaled_distance hA x).trans
      rw [abs_of_nonneg (hloga.trans hx.1)]
      exact mul_le_mul_of_nonneg_left hx.2 (by positivity))
    (convex_Icc _ _) (left_mem_Icc.mpr hlogab) (right_mem_Icc.mpr hlogab)
  simpa only [Real.norm_eq_abs, abs_sub_comm,
    abs_of_nonneg (sub_nonneg.mpr hlogab)] using h

theorem log_cell_increment_le {n : ℕ} (hn : 1 ≤ n) {x : ℝ}
    (hx : x ∈ Icc (n : ℝ) ((n : ℝ) + 1)) :
    Real.log x - Real.log n ≤ 2 / x := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hn0 : 0 < (n : ℝ) := by linarith
  have hx0 : 0 < x := hn0.trans_le hx.1
  calc
    Real.log x - Real.log n = Real.log (x / n) :=
      (Real.log_div hx0.ne' hn0.ne').symm
    _ ≤ x / n - 1 := Real.log_le_sub_one_of_pos (div_pos hx0 hn0)
    _ ≤ 1 / n := by apply (le_div_iff₀ hn0).2; field_simp; nlinarith [hx.2]
    _ ≤ 2 / x := by apply (div_le_div_iff₀ hn0 hx0).2; nlinarith [hx.2]

theorem cell_integrand_abs_le {A : ℝ} (hA : 200 ≤ A) {n : ℕ} (hn : 1 ≤ n)
    {x : ℝ} (hx : x ∈ Icc (n : ℝ) ((n : ℝ) + 1)) :
    |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x| ≤
      (10 / A ^ 2) * cellMajorant x := by
  have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hx1 : 1 ≤ x := hn1.trans hx.1
  have hx0 : 0 < x := by linarith
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx1
  have h := sourceCorrelation_log_increment_bound hA hn1 hx.1
  have h' := mul_le_mul_of_nonneg_left (log_cell_increment_le hn hx)
    (by positivity : 0 ≤ (5 / A ^ 2) * Real.log x)
  rw [abs_div, abs_of_pos hs]
  calc
    _ ≤ ((5 / A ^ 2) * Real.log x * (2 / x)) / Real.sqrt x :=
      div_le_div_of_nonneg_right (h.trans h') hs.le
    _ = (10 / A ^ 2) * cellMajorant x := by
      simp only [cellMajorant, div_eq_mul_inv, mul_inv_rev]
      ring

private theorem div_sqrt_continuousOn {f : ℝ → ℝ}
    (hf : ContinuousOn f (Ioi 0)) :
    ContinuousOn (fun x => f x / Real.sqrt x) (Ioi 0) := by
  intro x hx
  exact (hf x hx).div Real.continuous_sqrt.continuousWithinAt
    (Real.sqrt_pos.2 hx).ne'

theorem cellIntegrand_intervalIntegrable {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    IntervalIntegrable (fun x =>
      (sourceCorrelation explicitSecondDerivative A (Real.log n) -
        sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x)
      volume (n : ℝ) ((n : ℝ) + 1) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
  apply (div_sqrt_continuousOn ?_).mono (fun x hx => hn0.trans_le hx.1)
  intro x hx
  exact (continuousAt_const.sub
    ((sourceCorrelation_contDiff A hA).continuous.continuousAt.comp
      (Real.continuousAt_log hx.ne'))).continuousWithinAt

theorem cellCorrection_abs_le_majorant {A : ℝ} (hA : 200 ≤ A)
    {n : ℕ} (hn : 1 ≤ n) :
    |cellCorrection A n| ≤ (10 / A ^ 2) *
      ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  have hf := cellIntegrand_intervalIntegrable hp hn
  have hg := (cellMajorant_intervalIntegrable (a := (n : ℝ)) (b := (n : ℝ) + 1)
    hn0 (by linarith)).const_mul (10 / A ^ 2)
  calc
    |cellCorrection A n| ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1),
        |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1), (10 / A ^ 2) * cellMajorant x :=
      intervalIntegral.integral_mono_on (by linarith) hf.abs hg
        (fun x hx => cell_integrand_abs_le hA hn hx)
    _ = _ := intervalIntegral.integral_const_mul _ _

theorem sum_cellMajorant_integrals (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x) =
      ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant x := by
  have h := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun k : ℕ => (k : ℝ)) (m := 1) (n := N + 1) (by omega)
    (f := cellMajorant) (μ := volume) (fun k hk => by
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (Nat.zero_lt_of_lt hk.1)
      apply cellMajorant_intervalIntegrable hk0
      simp only [Nat.cast_add, Nat.cast_one]
      linarith)
  simpa only [Finset.Ico_add_one_right_eq_Icc, Nat.cast_add, Nat.cast_one] using h

/-- The sum covers every full cell without an infinite-series or depth hypothesis. -/
theorem sum_cellCorrection_abs_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, |cellCorrection A n|) ≤ 40 / A ^ 2 := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 N, (10 / A ^ 2) *
        ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x :=
      Finset.sum_le_sum (fun n hn => cellCorrection_abs_le_majorant hA
        (Finset.mem_Icc.mp hn).1)
    _ = (10 / A ^ 2) *
        ∑ n ∈ Finset.Icc 1 N, ∫ x in (n : ℝ)..((n : ℝ) + 1), cellMajorant x := by
      rw [Finset.mul_sum]
    _ = (10 / A ^ 2) * ∫ x in (1 : ℝ)..((N : ℝ) + 1), cellMajorant x := by
      rw [sum_cellMajorant_integrals]
    _ ≤ (10 / A ^ 2) * 4 := mul_le_mul_of_nonneg_left
      (cellMajorant_integral_le_four (by
        have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
        linarith)) (by positivity)
    _ = 40 / A ^ 2 := by ring

/-- Literal actual-source readout, with the closed natural cell inventory retained. -/
theorem sum_sourceCorrelation_cell_transport_le {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      |∫ x in (n : ℝ)..((n : ℝ) + 1),
        (sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x|) ≤
      40 / A ^ 2 :=
  sum_cellCorrection_abs_le hA N

/-- Constants cancel exactly: this geometric cell transport has zero total mass. -/
theorem constant_cell_transport_zero (n : ℕ) (c : ℝ) :
    (∫ x in (n : ℝ)..((n : ℝ) + 1), (c - c) / Real.sqrt x) = 0 := by simp

/-- The actual first moment is retained instead of being set to zero. -/
def cellFirstMoment (n : ℕ) : ℝ :=
  ∫ x in (n : ℝ)..((n : ℝ) + 1), (Real.log x - Real.log n) / Real.sqrt x

/-- The actual second moment controls the compensated local remainder. -/
def cellSecondMoment (n : ℕ) : ℝ :=
  ∫ x in (n : ℝ)..((n : ℝ) + 1), (Real.log x - Real.log n) ^ 2 / Real.sqrt x

/-- Both the original cell and its first-moment compensation remain explicit. -/
def cellTaylorRemainder (A : ℝ) (n : ℕ) : ℝ :=
  ∫ x in (n : ℝ)..((n : ℝ) + 1),
    (sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        (Real.log x - Real.log n)) / Real.sqrt x

theorem cellFirstMoment_integrand_intervalIntegrable {n : ℕ} (hn : 1 ≤ n) :
    IntervalIntegrable (fun x => (Real.log x - Real.log n) / Real.sqrt x)
      volume (n : ℝ) ((n : ℝ) + 1) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
  apply (div_sqrt_continuousOn ?_).mono (fun x hx => hn0.trans_le hx.1)
  intro x hx
  exact ((Real.continuousAt_log hx.ne').sub continuousAt_const).continuousWithinAt

theorem cellSecondMoment_integrand_intervalIntegrable {n : ℕ} (hn : 1 ≤ n) :
    IntervalIntegrable (fun x => (Real.log x - Real.log n) ^ 2 / Real.sqrt x)
      volume (n : ℝ) ((n : ℝ) + 1) := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply ContinuousOn.intervalIntegrable_of_Icc (by linarith)
  apply (div_sqrt_continuousOn ?_).mono (fun x hx => hn0.trans_le hx.1)
  intro x hx
  exact (((Real.continuousAt_log hx.ne').sub continuousAt_const).pow 2).continuousWithinAt

theorem cellFirstMoment_nonneg {n : ℕ} (hn : 1 ≤ n) : 0 ≤ cellFirstMoment n := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  apply intervalIntegral.integral_nonneg (by linarith)
  intro x hx
  exact div_nonneg (sub_nonneg.mpr (Real.log_le_log hn0 hx.1)) (Real.sqrt_nonneg x)

private theorem remainder_integrand_eq (A : ℝ) (n : ℕ) :
    (fun x => (sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        (Real.log x - Real.log n)) / Real.sqrt x) =
      fun x => (sourceCorrelation explicitSecondDerivative A (Real.log n) -
        sourceCorrelation explicitSecondDerivative A (Real.log x)) / Real.sqrt x +
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          ((Real.log x - Real.log n) / Real.sqrt x) := by
  funext x
  ring

theorem cellTaylorRemainder_eq {A : ℝ} (hA : 0 < A) {n : ℕ} (hn : 1 ≤ n) :
    cellTaylorRemainder A n = cellCorrection A n +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        cellFirstMoment n := by
  unfold cellTaylorRemainder
  rw [remainder_integrand_eq, intervalIntegral.integral_add
    (cellIntegrand_intervalIntegrable hA hn)
    ((cellFirstMoment_integrand_intervalIntegrable hn).const_mul _),
    intervalIntegral.integral_const_mul]
  rfl

/-- The first moment is paid exactly; it is not erased by zero total mass. -/
theorem cellCorrection_eq_firstMoment_add_remainder {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    cellCorrection A n =
      -deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        cellFirstMoment n + cellTaylorRemainder A n := by
  rw [cellTaylorRemainder_eq hA hn]
  ring

private theorem remainder_integrand_abs_le {A : ℝ} (hA : 200 ≤ A)
    (n : ℕ) {x : ℝ} (hx : 0 < x) :
    |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        (Real.log x - Real.log n)) / Real.sqrt x| ≤
      (5 / (2 * A ^ 2)) * ((Real.log x - Real.log n) ^ 2 / Real.sqrt x) := by
  have ht := sourceCorrelation_linear_taylor_bound_five hA
    (Real.log n) (Real.log x - Real.log n)
  have heq : sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) +
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
        (Real.log x - Real.log n) =
      -(sourceCorrelation explicitSecondDerivative A
          (Real.log n + (Real.log x - Real.log n)) -
        sourceCorrelation explicitSecondDerivative A (Real.log n) -
        (Real.log x - Real.log n) *
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n)) := by
    rw [add_sub_cancel]
    ring
  rw [heq, abs_div, abs_neg, abs_of_pos (Real.sqrt_pos.2 hx)]
  calc
    _ ≤ (5 / A ^ 2 * (Real.log x - Real.log n) ^ 2 / 2) / Real.sqrt x :=
      div_le_div_of_nonneg_right ht (Real.sqrt_nonneg x)
    _ = _ := by simp only [div_eq_mul_inv, mul_inv_rev]; ring

/-- The compensated remainder pays its actual second moment with source curvature five. -/
theorem cellTaylorRemainder_abs_le {A : ℝ} (hA : 200 ≤ A)
    {n : ℕ} (hn : 1 ≤ n) :
    |cellTaylorRemainder A n| ≤ (5 / (2 * A ^ 2)) * cellSecondMoment n := by
  have hp : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (Nat.zero_lt_of_lt hn)
  have hf : IntervalIntegrable (fun x =>
      (sourceCorrelation explicitSecondDerivative A (Real.log n) -
        sourceCorrelation explicitSecondDerivative A (Real.log x) +
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
          (Real.log x - Real.log n)) / Real.sqrt x)
      volume (n : ℝ) ((n : ℝ) + 1) := by
    rw [remainder_integrand_eq]
    exact (cellIntegrand_intervalIntegrable hp hn).add
      ((cellFirstMoment_integrand_intervalIntegrable hn).const_mul _)
  have hg := (cellSecondMoment_integrand_intervalIntegrable hn).const_mul
    (5 / (2 * A ^ 2))
  calc
    |cellTaylorRemainder A n| ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1),
        |(sourceCorrelation explicitSecondDerivative A (Real.log n) -
          sourceCorrelation explicitSecondDerivative A (Real.log x) +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) *
            (Real.log x - Real.log n)) / Real.sqrt x| :=
      intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ x in (n : ℝ)..((n : ℝ) + 1), (5 / (2 * A ^ 2)) *
        ((Real.log x - Real.log n) ^ 2 / Real.sqrt x) :=
      intervalIntegral.integral_mono_on (by linarith) hf.abs hg
        (fun x hx => remainder_integrand_abs_le hA n (hn0.trans_le hx.1))
    _ = _ := intervalIntegral.integral_const_mul _ _

end FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport
