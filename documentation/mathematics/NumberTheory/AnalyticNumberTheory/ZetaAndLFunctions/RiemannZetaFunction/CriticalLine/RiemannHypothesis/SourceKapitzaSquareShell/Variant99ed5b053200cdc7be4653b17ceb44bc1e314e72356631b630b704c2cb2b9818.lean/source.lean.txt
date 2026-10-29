-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShellEndpoint.Variant1d2fa1258f56298b23c4ec01ffc970f773f1efc34d403c272441d57b61e02e82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d2fa1258f56298b23c4ec01ffc970f773f1efc34d403c272441d57b61e02e82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShellEndpoint.Variant1d2fa1258f56298b23c4ec01ffc970f773f1efc34d403c272441d57b61e02e82","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1d2fa1258f56298b23c4ec01ffc970f773f1efc34d403c272441d57b61e02e82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceKapitzaSquareShell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Data.Nat.Sqrt
import Mathlib.Analysis.Complex.ExponentialBounds
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
import FormalResearch.RiemannHypothesis.SourceKapitzaStorage
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect

/-!
# Actual finite square-shell tangent transfer

RH16-KAPITZA-20261007 / K-C5 / KAP-SQUARE-SHELL-TWO-MOMENT-01.
grwtsk contributors retains originating direction, theorem selection,
corrections and evaluation. Codex prepared the original finite candidates;
CSE-RH16-20261007 repairs and replays those same propositions.
The original ignored candidate remains intact at its original location.
Both signed moments and the closed natural inventory are retained.
The uniform arithmetic signed tangent cap remains OPEN.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShellEndpoint.Variant1d2fa1258f56298b23c4ec01ffc970f773f1efc34d403c272441d57b61e02e82

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell

open MeasureTheory SourcePairing SourceCorrelationCurvatureFive SourceKapitzaStorage
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

/-- Closed right endpoint of the unique nonempty square shell containing n. -/
def shellEndpoint (N n : ℕ) : ℕ := min ((Nat.sqrt (n - 1) + 1) ^ 2) N

/-- Actual weighted compensated finite readout, including every natural. -/
def finiteCompensatedReadout (A : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
    sourceCorrelation explicitSecondDerivative A (Real.log n)

/-- The all-natural baseline with exactly the same closed inventory. -/
def allNaturalBaseline (A : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N,
    sourceCorrelation explicitSecondDerivative A (Real.log n) / Real.sqrt n

/-- Per-event linear tangent keeps both signed shell moments. -/
def tangentReadout (A : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
    (sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) +
      (Real.log n - Real.log (shellEndpoint N n)) *
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (shellEndpoint N n)))

/-- The exact large-scale Taylor error coefficient. -/
def tangentErrorConstant : ℝ := 5 * (quadraticConstant + 6)

/-- The paper K-C5 coefficient is returned with a native rational upper bound. -/
theorem tangentErrorConstant_lt_1429_tenth : tangentErrorConstant < (1429 / 10 : ℝ) := by
  have hl : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have hu : Real.log 2 < (7 / 10 : ℝ) := by linarith [Real.log_two_lt_d9]
  have hs : (Real.log 2) ^ 2 < (7 / 10 : ℝ) ^ 2 :=
    (sq_lt_sq₀ hl (by norm_num)).2 hu
  unfold tangentErrorConstant quadraticConstant
  nlinarith

/-- Elementary finite compensation costs no endpoint approximation. -/
theorem finiteCompensatedReadout_eq_prime_sub_baseline (A : ℝ) (N : ℕ) :
    finiteCompensatedReadout A N =
      (∑ n ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n)) -
      allNaturalBaseline A N := by
  unfold finiteCompensatedReadout allNaturalBaseline
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The literal original closed prime moment remains the native source. -/
theorem finiteCompensatedReadout_actual_eq (A : ℝ) :
    finiteCompensatedReadout A ⌊Real.exp (2 * A)⌋₊ =
      EstimatePrimeSmoothDefect.closedPrimeMoment A -
        allNaturalBaseline A ⌊Real.exp (2 * A)⌋₊ := by
  rw [finiteCompensatedReadout_eq_prime_sub_baseline]
  unfold EstimatePrimeSmoothDefect.closedPrimeMoment PrimePowerDescent.primePowerInventory
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
  rw [PrimePowerDescent.exponentialTest_log _ n hn0]
  ring

/-- The closed endpoint lies above its event and below the next square. -/
theorem shellEndpoint_bounds {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    n ≤ shellEndpoint N n ∧ shellEndpoint N n ≤ (Nat.sqrt (n - 1) + 1) ^ 2 := by
  have hu := Nat.lt_succ_sqrt' (n - 1)
  have hnsub : n - 1 + 1 = n := by omega
  have hnupper : n ≤ (Nat.sqrt (n - 1) + 1) ^ 2 := by
    simpa only [Nat.succ_eq_add_one, hnsub] using Nat.succ_le_of_lt hu
  exact ⟨le_min hnupper hnN, min_le_left _ _⟩

/-- The event is strictly above its shell's lower square. -/
theorem shell_lower_strict {n : ℕ} (hn : 2 ≤ n) :
    (Nat.sqrt (n - 1)) ^ 2 < n := by
  have h := Nat.sqrt_le' (n - 1)
  have hl : n - 1 < n := by omega
  exact h.trans_lt hl

/-- The square shell's geometric diameter is strictly below one. -/
theorem shell_sqrt_gap_lt_one {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    Real.sqrt (shellEndpoint N n : ℝ) - Real.sqrt (n : ℝ) < 1 := by
  have hlo : (Nat.sqrt (n - 1) : ℝ) ^ 2 < (n : ℝ) := by
    exact_mod_cast shell_lower_strict hn
  have hhi : (shellEndpoint N n : ℝ) ≤ (Nat.sqrt (n - 1) + 1 : ℝ) ^ 2 := by
    exact_mod_cast (shellEndpoint_bounds hn hnN).2
  have hl := (Real.lt_sqrt (Nat.cast_nonneg _)).2 hlo
  have hh := (Real.sqrt_le_left (by positivity : (0 : ℝ) ≤ Nat.sqrt (n - 1) + 1)).2 hhi
  linarith

/-- Exact logarithmic shell geometry retains a truncated upper endpoint. -/
theorem shell_log_squared_le {N n : ℕ} (hn : 2 ≤ n) (hnN : n ≤ N) :
    (Real.log n - Real.log (shellEndpoint N n)) ^ 2 ≤ 4 / (n : ℝ) := by
  have hnm := (shellEndpoint_bounds hn hnN).1
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hM0 : (0 : ℝ) < shellEndpoint N n := by exact_mod_cast (by omega : 0 < shellEndpoint N n)
  have hnS : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hn0
  have hMS : 0 < Real.sqrt (shellEndpoint N n : ℝ) := Real.sqrt_pos.2 hM0
  have hgap := shell_sqrt_gap_lt_one hn hnN
  have hl := Real.log_le_sub_one_of_pos (div_pos hMS hnS)
  have heq : Real.log (Real.sqrt (shellEndpoint N n : ℝ) / Real.sqrt (n : ℝ)) =
      (Real.log (shellEndpoint N n) - Real.log n) / 2 := by
    rw [Real.log_div hMS.ne' hnS.ne', Real.log_sqrt hM0.le, Real.log_sqrt hn0.le]
    ring
  rw [heq] at hl
  have hbound : Real.sqrt (n : ℝ) *
      (Real.log (shellEndpoint N n) - Real.log n) ≤ 2 := by
    have hm := mul_le_mul_of_nonneg_left hl (by positivity : 0 ≤ 2 * Real.sqrt (n : ℝ))
    field_simp [hnS.ne'] at hm
    nlinarith
  have hnonneg : 0 ≤ Real.log (shellEndpoint N n) - Real.log n := by
    exact sub_nonneg.mpr (Real.log_le_log hn0 (by exact_mod_cast hnm))
  have hprod0 : 0 ≤ Real.sqrt (n : ℝ) *
      (Real.log (shellEndpoint N n) - Real.log n) := mul_nonneg hnS.le hnonneg
  have hsq := (sq_le_sq₀ hprod0 (by norm_num : (0 : ℝ) ≤ 2)).2 hbound
  rw [mul_pow, Real.sq_sqrt hn0.le] at hsq
  apply (le_div_iff₀ hn0).2
  nlinarith [hsq]

/-- Taylor five gives the pointwise geometric remainder without arithmetic input. -/
theorem event_taylor_error {A : ℝ} (hA : 200 ≤ A) {N n : ℕ}
    (hn : 2 ≤ n) (hnN : n ≤ N) :
    |sourceCorrelation explicitSecondDerivative A (Real.log n) -
      sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) -
      (Real.log n - Real.log (shellEndpoint N n)) *
        deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (shellEndpoint N n))|
      ≤ 10 / (A ^ 2 * (n : ℝ)) := by
  have h := sourceCorrelation_linear_taylor_bound_five hA
    (Real.log (shellEndpoint N n)) (Real.log n - Real.log (shellEndpoint N n))
  rw [show Real.log (shellEndpoint N n) +
      (Real.log n - Real.log (shellEndpoint N n)) = Real.log n by ring] at h
  apply h.trans
  have hg := shell_log_squared_le hn hnN
  have hA0 : 0 < A := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  calc
    _ ≤ 5 / A ^ 2 * (4 / (n : ℝ)) / 2 := by gcongr
    _ = _ := by ring

/-- Exact denominator conversion makes the native quadratic-impulse provider usable. -/
theorem threeHalves_eq_mul_sqrt {n : ℕ} (hn : 0 < n) :
    (n : ℝ) ^ (3 / 2 : ℝ) = (n : ℝ) * Real.sqrt n := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  rw [show (3 / 2 : ℝ) = 1 + 1 / 2 by norm_num, Real.rpow_add hn0,
    Real.rpow_one, ← Real.sqrt_eq_rpow]

/-- Nonnegative Mangoldt atoms admit a uniformly summable error weight. -/
theorem mangoldt_sub_one_abs_le_quad (n : ℕ) :
    |ArithmeticFunction.vonMangoldt n - 1| ≤
      (ArithmeticFunction.vonMangoldt n ^ 2 + 3) / 2 := by
  have hn := ArithmeticFunction.vonMangoldt_nonneg (n := n)
  have h := abs_sub (ArithmeticFunction.vonMangoldt n) (1 : ℝ)
  rw [abs_of_nonneg hn, abs_one] at h
  nlinarith [sq_nonneg (ArithmeticFunction.vonMangoldt n - 1)]

/-- Positive inverse-power majorant for the purely analytic remainder. -/
def inverseThreeHalves (x : ℝ) : ℝ := 1 / x ^ (3 / 2 : ℝ)

/-- Explicit primitive evaluated only at positive arguments. -/
def inversePrimitive (x : ℝ) : ℝ := -2 * x ^ (-(1 / 2 : ℝ))

/-- The elementary provider uses an exact primitive, not an infinite cutoff approximation. -/
theorem inversePrimitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt inversePrimitive (inverseThreeHalves x) x := by
  unfold inversePrimitive inverseThreeHalves
  have h := (Real.hasDerivAt_rpow_const
    (p := -(1 / 2 : ℝ)) (Or.inl hx.ne')).const_mul (-2)
  exact h.congr_deriv (by
    rw [show -(1 / 2 : ℝ) - 1 = -(3 / 2 : ℝ) by ring, Real.rpow_neg hx.le]
    ring)

/-- Continuity on the exact finite comparison interval excludes zero. -/
theorem inverseThreeHalves_continuousOn {y : ℝ} (hy : 1 ≤ y) :
    ContinuousOn inverseThreeHalves (Set.uIcc 1 y) := by
  rw [Set.uIcc_of_le hy]
  intro x hx
  have hx0 : 0 < x := by linarith [hx.1]
  exact (continuousAt_const.div
    (Real.continuousAt_rpow_const x (3 / 2) (Or.inl hx0.ne'))
    (Real.rpow_pos_of_pos hx0 _).ne').continuousWithinAt

/-- The terminal primitive has the favorable sign and is retained before bounding. -/
theorem inverseThreeHalves_integral_le {y : ℝ} (hy : 1 ≤ y) :
    (∫ x in (1 : ℝ)..y, inverseThreeHalves x) ≤ 2 := by
  have hi : IntervalIntegrable inverseThreeHalves volume 1 y :=
    (inverseThreeHalves_continuousOn hy).intervalIntegrable
  have hd : ∀ x ∈ Set.uIcc (1 : ℝ) y,
      HasDerivAt inversePrimitive (inverseThreeHalves x) x := by
    intro x hx
    rw [Set.uIcc_of_le hy] at hx
    exact inversePrimitive_hasDerivAt (by linarith [hx.1])
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi]
  unfold inversePrimitive
  norm_num only [Real.one_rpow, mul_one]
  have hpow := Real.rpow_nonneg (by linarith : (0 : ℝ) ≤ y) (-(1 / 2 : ℝ))
  linarith

/-- The generic finite inverse-power budget is uniform in every natural cutoff. -/
theorem inverseThreeHalves_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2 := by
  by_cases hN : 1 ≤ N
  · have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hshift : (∑ i ∈ Finset.Ico 1 N,
        1 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ)) =
        ∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ) := by
      rw [Finset.sum_Ico_add' (fun n : ℕ ↦ 1 / (n : ℝ) ^ (3 / 2 : ℝ)) 1 N 1]
      norm_num only [Nat.add_eq, Finset.Ico_add_one_right_eq_Icc]
    have hi : IntervalIntegrable inverseThreeHalves volume 1 (N : ℝ) :=
      (inverseThreeHalves_continuousOn hNreal).intervalIntegrable
    have hg : IntegrableOn inverseThreeHalves (Set.Ico (1 : ℝ) N) :=
      (intervalIntegrable_iff_integrableOn_Ico_of_le hNreal).mp hi
    have hcompare := sum_Ico_le_integral_of_le
      (f := fun y : ℝ ↦ 1 / (y + 1) ^ (3 / 2 : ℝ))
      (g := inverseThreeHalves) hN (fun i hi x hx ↦ ?_)
      (by simpa only [Nat.cast_one] using hg)
    · calc
        _ = ∑ i ∈ Finset.Ico 1 N,
            1 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ) := hshift.symm
        _ ≤ (∫ x in (1 : ℝ)..(N : ℝ), inverseThreeHalves x) := by
          simpa only [Nat.cast_add, Nat.cast_one] using hcompare
        _ ≤ 2 := inverseThreeHalves_integral_le hNreal
    · have hi1 : (1 : ℝ) ≤ i := by exact_mod_cast hi.1
      have hx0 : 0 < x := by linarith [hx.1]
      have hp : x ^ (3 / 2 : ℝ) ≤ ((i : ℝ) + 1) ^ (3 / 2 : ℝ) :=
        Real.rpow_le_rpow hx0.le (by exact_mod_cast hx.2.le) (by norm_num)
      exact one_div_le_one_div_of_le (Real.rpow_pos_of_pos hx0 _) hp
  · have hN0 : N = 0 := by omega
    simp only [hN0, Finset.Icc_eq_empty_of_lt (by norm_num : (0 : ℕ) < 2),
      Finset.sum_empty]
    norm_num

/-- A conditional analytic inverse-power provider is retained as a reusable finite interface. -/
theorem signedErrorWeight_le_of_inverse_budget (N : ℕ)
    (hInv : (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2) :
    (∑ n ∈ Finset.Icc 2 N,
      |ArithmeticFunction.vonMangoldt n - 1| / (n : ℝ) ^ (3 / 2 : ℝ)) ≤
      (quadraticConstant + 6) / 2 := by
  have hq := quadraticImpulse_sum_le N
  have hw : (∑ n ∈ Finset.Icc 2 N,
      |ArithmeticFunction.vonMangoldt n - 1| / (n : ℝ) ^ (3 / 2 : ℝ)) ≤
      ∑ n ∈ Finset.Icc 2 N,
        ((ArithmeticFunction.vonMangoldt n ^ 2 + 3) / 2) / (n : ℝ) ^ (3 / 2 : ℝ) :=
    Finset.sum_le_sum (s := Finset.Icc 2 N) (fun n _ ↦
    div_le_div_of_nonneg_right (mangoldt_sub_one_abs_le_quad n)
      (Real.rpow_nonneg (Nat.cast_nonneg _) _))
  have heq : (∑ n ∈ Finset.Icc 2 N,
      ((ArithmeticFunction.vonMangoldt n ^ 2 + 3) / 2) / (n : ℝ) ^ (3 / 2 : ℝ)) =
      ((∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) +
        3 * ∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) / 2 := by
    rw [Finset.mul_sum, ← Finset.sum_add_distrib, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro n _
    unfold quadraticImpulse
    ring
  rw [heq] at hw
  linarith

/-- A finite Taylor cap; the only explicit premise is a generic analytic sum bound. -/
theorem finite_tangent_error_of_inverse_budget {A : ℝ} (hA : 200 ≤ A) (N : ℕ)
    (hInv : (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2) :
    |finiteCompensatedReadout A N - tangentReadout A N| ≤ tangentErrorConstant / A ^ 2 := by
  have hA0 : 0 < A := by linarith
  have hcoeff : 0 ≤ 10 / A ^ 2 := by positivity
  have hw := signedErrorWeight_le_of_inverse_budget N hInv
  unfold finiteCompensatedReadout tangentReadout
  rw [← Finset.sum_sub_distrib]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 N,
        (10 / A ^ 2) * (|ArithmeticFunction.vonMangoldt n - 1| /
          (n : ℝ) ^ (3 / 2 : ℝ)) := by
      apply Finset.sum_le_sum
      intro n hn
      rcases Finset.mem_Icc.mp hn with ⟨hn2, hnN⟩
      have hn0 : 0 < n := by omega
      have hnr : (0 : ℝ) < n := by exact_mod_cast hn0
      have hnS : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnr
      have ht := event_taylor_error hA hn2 hnN
      have heq :
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            sourceCorrelation explicitSecondDerivative A (Real.log n) -
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            (sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) +
              (Real.log n - Real.log (shellEndpoint N n)) *
                deriv (sourceCorrelation explicitSecondDerivative A)
                  (Real.log (shellEndpoint N n))) =
          (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
            (sourceCorrelation explicitSecondDerivative A (Real.log n) -
              sourceCorrelation explicitSecondDerivative A (Real.log (shellEndpoint N n)) -
              (Real.log n - Real.log (shellEndpoint N n)) *
                deriv (sourceCorrelation explicitSecondDerivative A)
                  (Real.log (shellEndpoint N n))) := by ring
      rw [heq, abs_mul, abs_div, abs_of_pos hnS]
      apply (mul_le_mul_of_nonneg_left ht (by positivity)).trans_eq
      rw [threeHalves_eq_mul_sqrt hn0]
      ring
    _ = (10 / A ^ 2) * (∑ n ∈ Finset.Icc 2 N,
          |ArithmeticFunction.vonMangoldt n - 1| / (n : ℝ) ^ (3 / 2 : ℝ)) := by
      rw [Finset.mul_sum]
    _ ≤ (10 / A ^ 2) * ((quadraticConstant + 6) / 2) :=
      mul_le_mul_of_nonneg_left hw hcoeff
    _ = tangentErrorConstant / A ^ 2 := by unfold tangentErrorConstant; ring

/-- Unconditional finite source transfer; the signed principal tangent remains unbounded. -/
theorem finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (N : ℕ) :
    |finiteCompensatedReadout A N - tangentReadout A N| ≤ tangentErrorConstant / A ^ 2 :=
  finite_tangent_error_of_inverse_budget hA N (inverseThreeHalves_sum_le N)

end
end FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell
