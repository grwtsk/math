import FormalResearch.RiemannHypothesis.SourceKapitzaDiscrete
import FormalResearch.RiemannHypothesis.SourceKapitzaCycle
import Mathlib.Analysis.Calculus.MeanValue

/-!
Task RH16-KAPITZA-20261007, cycle K-C4, candidate KAP-PHYSICAL-2-4-01.
grwtsk contributors supplied the originating Kapitza direction; earlier date
unverified, recovery 7 October 2026. The destination review selected this
literal physical block; Codex supplied these particular source joins and proofs.
Jacob's theorem selection, corrections and evaluation remain attributed to him.
Return: https://chatgpt.com/g/g-p-6abfd4d5cba0819187bc5ffdb6641342-riemann/c/6ac66887-fbd4-83e8-be38-1248b35f5e37

This bounds one physical block under an explicit one-sided affine premise.
The full complement and genuine PNT provider are not supplied.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open scoped Interval

/-- Literal actual-source work on `[log 2, log 4]` with the unchanged global affine fit. -/
def firstPhysicalBlock (A : ℝ) : ℝ :=
  ∫ s in Real.log 2..Real.log 4, kapitzaWeight A s * nonaffineDiscrepancy A s

/-- Complete weighted discrepancy majorant used under the one-sided affine premise. -/
def blockMajorant (s : ℝ) : ℝ := Real.exp (s / 2) * (normalizedPsiError s + 1 / 64)

/-- Weighted signed majorant inside a cell whose actual Chebyshev prefix is `q`. -/
private def cellIntegrand (q s : ℝ) : ℝ :=
  q * Real.exp (-s / 2) - (63 / 64 : ℝ) * Real.exp (s / 2)

/-- Explicit primitive retaining both the frozen-prefix and continuum contributions. -/
private def cellPrimitive (q s : ℝ) : ℝ :=
  -2 * q * Real.exp (-s / 2) - (63 / 32 : ℝ) * Real.exp (s / 2)

theorem actual_kernel_lower (A s : ℝ) (hA : 80 ≤ A) (hs : s ∈ Icc 0 2) :
    (3 / 8 : ℝ) ≤ kapitzaKernel A s := by
  have hA1 : 1 ≤ A := by linarith
  have hpos : 0 < A := by linarith
  have hc := sourceCorrelation_contDiff A hpos
  have hD := hc.differentiable (by norm_num)
  have hmv := norm_image_sub_le_of_norm_deriv_le_segment'
    (f := sourceCorrelation explicitSecondDerivative A)
    (f' := deriv (sourceCorrelation explicitSecondDerivative A))
    (a := (0 : ℝ)) (b := s) (C := 5 / A)
    (fun x _ => (hD x).hasDerivAt.hasDerivWithinAt)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 x)
    s ⟨hs.1, le_rfl⟩
  rw [actual_correlation_at_zero A hA1, Real.norm_eq_abs, sub_zero] at hmv
  have hclow := (abs_le.mp hmv).1
  have hdlow := (abs_le.mp
    (SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA1 s)).2
  have hratio : (5 : ℝ) / A ≤ 1 / 16 := (div_le_iff₀ hpos).mpr (by linarith)
  have hmul : 5 / A * s ≤ 1 / 8 := by
    have hn : 0 ≤ (5 : ℝ) / A := by positivity
    calc
      5 / A * s ≤ 5 / A * 2 := mul_le_mul_of_nonneg_left hs.2 hn
      _ ≤ 1 / 8 := by linarith
  unfold kapitzaKernel
  linarith

private theorem log_two_bounds : 0 ≤ Real.log 2 ∧ Real.log 2 ≤ 7 / 10 := by
  constructor
  · exact Real.log_nonneg (by norm_num)
  · linarith [Real.log_two_lt_d9]

private theorem log_three_bounds : 0 ≤ Real.log 3 ∧ Real.log 3 ≤ 11 / 10 := by
  constructor
  · exact Real.log_nonneg (by norm_num)
  · linarith [Real.log_three_lt_d9]

private theorem log_two_le_three : Real.log 2 ≤ Real.log 3 :=
  Real.log_le_log (by norm_num) (by norm_num)

private theorem log_three_le_four : Real.log 3 ≤ Real.log 4 :=
  Real.log_le_log (by norm_num) (by norm_num)

private theorem prefix_two : chebyshevPrimePower 2 = Real.log 2 := by
  simp [chebyshevPrimePower, ArithmeticFunction.vonMangoldt_apply_prime
    (by norm_num : Nat.Prime 2)]

private theorem prefix_three : chebyshevPrimePower 3 = Real.log 2 + Real.log 3 := by
  have h := SourceKapitzaDiscrete.closed_prefix_succ (n := 2) (by norm_num)
  norm_num only [Nat.cast_ofNat] at h
  rw [h, prefix_two, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

theorem prefix_four_retains_prime_power :
    chebyshevPrimePower 4 = 2 * Real.log 2 + Real.log 3 := by
  have h := SourceKapitzaDiscrete.closed_prefix_succ (n := 3) (by norm_num)
  norm_num only [Nat.cast_ofNat] at h
  have hfour : ArithmeticFunction.vonMangoldt 4 = Real.log 2 := by
    rw [show (4 : ℕ) = 2 ^ 2 by norm_num,
      ArithmeticFunction.vonMangoldt_apply_pow (by norm_num),
      ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 2)]
    norm_num
  rw [h, prefix_three, hfour]
  ring

private theorem normalized_cell {n : ℕ} (hn : 0 < n) {s : ℝ}
    (hs : s ∈ Ico (Real.log n) (Real.log (n + 1 : ℕ))) :
    normalizedPsiError s = Real.exp (-s) * chebyshevPrimePower n - 1 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  have hn1 : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hlo : (n : ℝ) ≤ Real.exp s := by
    simpa only [Real.exp_log hn0] using Real.exp_le_exp.mpr hs.1
  have hup : Real.exp s < (n : ℝ) + 1 := by
    simpa only [Nat.cast_add, Nat.cast_one, Real.exp_log hn1] using
      Real.exp_lt_exp.mpr hs.2
  rw [normalizedPsiError_eq_prefix,
    SourceKapitzaCycle.source_prefix_frozen n _ hlo hup]

theorem discrepancy_on_first_cell {s : ℝ} (hs : s ∈ Ico (Real.log 2) (Real.log 3)) :
    normalizedPsiError s = Real.exp (-s) * Real.log 2 - 1 := by
  have h := normalized_cell (n := 2) (by norm_num) hs
  norm_num only [Nat.cast_ofNat] at h
  simpa only [prefix_two] using h

theorem discrepancy_on_second_cell {s : ℝ} (hs : s ∈ Ico (Real.log 3) (Real.log 4)) :
    normalizedPsiError s = Real.exp (-s) * (Real.log 2 + Real.log 3) - 1 := by
  have h := normalized_cell (n := 3) (by norm_num) hs
  norm_num only [Nat.cast_ofNat] at h
  simpa only [prefix_three] using h

theorem discrepancy_majorant_neg {s : ℝ} (hs : s ∈ Ioo (Real.log 2) (Real.log 4)) :
    normalizedPsiError s + 1 / 64 < 0 := by
  by_cases hcell : s < Real.log 3
  · rw [discrepancy_on_first_cell ⟨hs.1.le, hcell⟩]
    have he : Real.exp (-s) ≤ 1 / 2 := by
      have ht := Real.exp_le_exp.mpr (show -s ≤ -(Real.log 2) by linarith [hs.1])
      simpa only [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 2), one_div] using ht
    have hprod := mul_le_mul he log_two_bounds.2 log_two_bounds.1
      (by norm_num : (0 : ℝ) ≤ 1 / 2)
    norm_num at hprod
    linarith
  · rw [discrepancy_on_second_cell ⟨le_of_not_gt hcell, hs.2⟩]
    have he : Real.exp (-s) ≤ 1 / 3 := by
      have ht := Real.exp_le_exp.mpr (show -s ≤ -(Real.log 3) by linarith)
      simpa only [Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 3), one_div] using ht
    have hq : 0 ≤ Real.log 2 + Real.log 3 := add_nonneg log_two_bounds.1 log_three_bounds.1
    have hqhi : Real.log 2 + Real.log 3 ≤ 9 / 5 := by
      linarith [log_two_bounds.2, log_three_bounds.2]
    have hprod := mul_le_mul he hqhi hq (by norm_num : (0 : ℝ) ≤ 1 / 3)
    norm_num at hprod
    linarith

private theorem block_majorant_integrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable blockMajorant volume a b := by
  have hi := (normalizedPsiError_intervalIntegrable a b hab).add
    (intervalIntegrable_const (c := (1 / 64 : ℝ)))
  change IntervalIntegrable (fun s => Real.exp (s / 2) * (normalizedPsiError s + 1 / 64)) volume a b
  exact hi.continuousOn_mul
    (by fun_prop : ContinuousOn (fun s : ℝ => Real.exp (s / 2)) (uIcc a b))

theorem physical_block_integrable (A a b : ℝ) (hA : 0 < A) (hab : a ≤ b) :
    IntervalIntegrable (fun s => kapitzaWeight A s * nonaffineDiscrepancy A s)
      volume a b := by
  have hell : Continuous (affineTrend A) := by unfold affineTrend; fun_prop
  have hz := (normalizedPsiError_intervalIntegrable a b hab).sub
    (hell.intervalIntegrable a b)
  simpa only [nonaffineDiscrepancy, mul_comm] using hz.mul_continuousOn
    (kapitzaWeight_continuous A hA).continuousOn

private theorem cellPrimitive_hasDerivAt (q s : ℝ) :
    HasDerivAt (cellPrimitive q) (cellIntegrand q s) s := by
  have hp := ((hasDerivAt_id s).div_const 2).exp
  have hn := (((hasDerivAt_id s).neg).div_const 2).exp
  have h := (hn.const_mul (-2 * q)).sub (hp.const_mul (63 / 32 : ℝ))
  exact h.congr_deriv (by dsimp [cellIntegrand]; ring)

private theorem cell_integral (q a b : ℝ) :
    (∫ s in a..b, cellIntegrand q s) = cellPrimitive q b - cellPrimitive q a := by
  have hc : Continuous (cellIntegrand q) := by unfold cellIntegrand; fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => cellPrimitive_hasDerivAt q s) (hc.intervalIntegrable a b)

private theorem majorant_cell_integral_one :
    (∫ s in Real.log 2..Real.log 3, blockMajorant s) =
      cellPrimitive (Real.log 2) (Real.log 3) - cellPrimitive (Real.log 2) (Real.log 2) := by
  calc
    _ = ∫ s in Real.log 2..Real.log 3, cellIntegrand (Real.log 2) s := by
      apply intervalIntegral.integral_congr_Ioo_of_le log_two_le_three
      intro s hs
      unfold blockMajorant cellIntegrand
      rw [discrepancy_on_first_cell ⟨hs.1.le, hs.2⟩]
      have he : Real.exp (s / 2) * Real.exp (-s) = Real.exp (-s / 2) := by
        rw [← Real.exp_add]; congr 1; ring
      calc
        _ = Real.log 2 * (Real.exp (s / 2) * Real.exp (-s)) -
          (63 / 64 : ℝ) * Real.exp (s / 2) := by ring
        _ = _ := by rw [he]
    _ = _ := cell_integral _ _ _

private theorem majorant_cell_integral_two :
    (∫ s in Real.log 3..Real.log 4, blockMajorant s) =
      cellPrimitive (Real.log 2 + Real.log 3) (Real.log 4) -
        cellPrimitive (Real.log 2 + Real.log 3) (Real.log 3) := by
  calc
    _ = ∫ s in Real.log 3..Real.log 4, cellIntegrand (Real.log 2 + Real.log 3) s := by
      apply intervalIntegral.integral_congr_Ioo_of_le log_three_le_four
      intro s hs
      unfold blockMajorant cellIntegrand
      rw [discrepancy_on_second_cell ⟨hs.1.le, hs.2⟩]
      have he : Real.exp (s / 2) * Real.exp (-s) = Real.exp (-s / 2) := by
        rw [← Real.exp_add]; congr 1; ring
      calc
        _ = (Real.log 2 + Real.log 3) * (Real.exp (s / 2) * Real.exp (-s)) -
          (63 / 64 : ℝ) * Real.exp (s / 2) := by ring
        _ = _ := by rw [he]
    _ = _ := cell_integral _ _ _

private theorem exp_log_half (x : ℝ) (hx : 0 < x) :
    Real.exp (Real.log x / 2) = Real.sqrt x := by rw [Real.exp_half, Real.exp_log hx]

private theorem exp_neg_log_half (x : ℝ) (hx : 0 < x) :
    Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
  rw [show -Real.log x / 2 = -(Real.log x / 2) by ring, Real.exp_neg, exp_log_half x hx]
  simp only [one_div]

theorem actual_block_majorant_exact :
    (∫ s in Real.log 2..Real.log 4, blockMajorant s) =
      (Real.sqrt 2 - 1) * Real.log 2 + (2 / Real.sqrt 3 - 1) * Real.log 3 -
        (63 / 32 : ℝ) * (2 - Real.sqrt 2) := by
  have hi₁ := block_majorant_integrable _ _ log_two_le_three
  have hi₂ := block_majorant_integrable _ _ log_three_le_four
  rw [← intervalIntegral.integral_add_adjacent_intervals hi₁ hi₂,
    majorant_cell_integral_one, majorant_cell_integral_two]
  unfold cellPrimitive
  rw [exp_log_half 2 (by norm_num), exp_log_half 3 (by norm_num),
    exp_log_half 4 (by norm_num), exp_neg_log_half 2 (by norm_num),
    exp_neg_log_half 3 (by norm_num), exp_neg_log_half 4 (by norm_num)]
  rw [show Real.sqrt (4 : ℝ) = 2 by norm_num]
  have hs2 : Real.sqrt (2 : ℝ) ≠ 0 := by positivity
  have hs3 : Real.sqrt (3 : ℝ) ≠ 0 := by positivity
  have hsq2 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2)
  field_simp
  ring_nf
  simp only [hsq2]
  ring

theorem actual_block_majorant_rational_upper :
    (∫ s in Real.log 2..Real.log 4, blockMajorant s) ≤ -(431 / 640 : ℝ) := by
  rw [actual_block_majorant_exact]
  have hs2lo : (1 : ℝ) ≤ Real.sqrt 2 := by
    apply (Real.le_sqrt (by norm_num) (by norm_num)).mpr; norm_num
  have hs2hi : Real.sqrt 2 ≤ (17 / 12 : ℝ) := by
    apply Real.sqrt_le_iff.mpr; constructor <;> norm_num
  have hs3lo : (12 / 7 : ℝ) ≤ Real.sqrt 3 := by
    apply (Real.le_sqrt (by norm_num) (by norm_num)).mpr; norm_num
  have hs3hi : Real.sqrt 3 ≤ (2 : ℝ) := by
    apply Real.sqrt_le_iff.mpr; constructor <;> norm_num
  have hs3pos : 0 < Real.sqrt (3 : ℝ) := by positivity
  have hc3lo : (0 : ℝ) ≤ 2 / Real.sqrt 3 - 1 := by
    have h : 1 ≤ 2 / Real.sqrt 3 := (le_div_iff₀ hs3pos).mpr (by linarith)
    linarith
  have hc3hi : 2 / Real.sqrt 3 - 1 ≤ (1 / 6 : ℝ) := by
    have h : 2 / Real.sqrt 3 ≤ 7 / 6 := (div_le_iff₀ hs3pos).mpr (by linarith)
    linarith
  have ht2 := mul_le_mul (show Real.sqrt 2 - 1 ≤ (5 / 12 : ℝ) by linarith)
    log_two_bounds.2 log_two_bounds.1 (by norm_num : (0 : ℝ) ≤ 5 / 12)
  have ht3 := mul_le_mul hc3hi log_three_bounds.2 log_three_bounds.1
    (by norm_num : (0 : ℝ) ≤ 1 / 6)
  norm_num at ht2 ht3
  nlinarith

/-- A genuine strictly negative fixed block; the affine premise is explicit. -/
theorem firstPhysicalBlock_upper (A : ℝ) (hA : 80 ≤ A)
    (hell : ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s) :
    firstPhysicalBlock A ≤ -(1293 / 5120 : ℝ) := by
  have h24 : Real.log 2 ≤ Real.log 4 := log_two_le_three.trans log_three_le_four
  have hF := physical_block_integrable A _ _ (by linarith) h24
  have hG := (block_majorant_integrable _ _ h24).const_mul (3 / 8 : ℝ)
  have hpoint : ∀ s ∈ Ioo (Real.log 2) (Real.log 4),
      kapitzaWeight A s * nonaffineDiscrepancy A s ≤ (3 / 8 : ℝ) * blockMajorant s := by
    intro s hs
    have hs02 : s ∈ Icc (0 : ℝ) 2 := by
      constructor
      · exact log_two_bounds.1.trans hs.1.le
      · have hlog4 := Real.log_four_eq
        linarith [hs.2, log_two_bounds.2]
    have hk := actual_kernel_lower A s hA hs02
    have hz : nonaffineDiscrepancy A s ≤ normalizedPsiError s + 1 / 64 := by
      unfold nonaffineDiscrepancy
      linarith [hell s ⟨hs.1.le, hs.2.le⟩]
    have hzneg : nonaffineDiscrepancy A s ≤ 0 :=
      hz.trans (discrepancy_majorant_neg hs).le
    have hm := mul_le_mul_of_nonpos_right hk hzneg
    have hm2 := mul_le_mul_of_nonneg_left hz (by norm_num : (0 : ℝ) ≤ 3 / 8)
    have hex := mul_le_mul_of_nonneg_left (hm.trans hm2) (Real.exp_pos (s / 2)).le
    simpa only [kapitzaWeight, blockMajorant, mul_assoc, mul_left_comm, mul_comm] using hex
  have hint := intervalIntegral.integral_mono_on_of_le_Ioo h24 hF hG hpoint
  rw [intervalIntegral.integral_const_mul] at hint
  change firstPhysicalBlock A ≤ _ at hint
  have hJ := actual_block_majorant_rational_upper
  linarith

theorem firstPhysicalBlock_lt_neg_quarter (A : ℝ) (hA : 80 ≤ A)
    (hell : ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s) :
    firstPhysicalBlock A < -(1 / 4 : ℝ) := by
  linarith [firstPhysicalBlock_upper A hA hell]

/-- Exact uniform affine envelope from genuine endpoint samples, with full real phase. -/
theorem affineTrend_abs_le_of_endpoint_samples (A K s : ℝ) (hK : 0 ≤ K) (hA : 1 ≤ A)
    (hs : s ∈ Icc 0 (2 * A))
    (hp : |endpointValue A| ≤ K / A ^ 2)
    (hb : |endpointSlope A| ≤ 2 * K / A ^ 2) :
    |affineTrend A s| ≤ 5 * K / A := by
  have hpos : 0 < A := by linarith
  have hden : 0 < A ^ 2 := sq_pos_of_pos hpos
  have hs0 : 0 ≤ 2 * A - s := by linarith [hs.2]
  have ht : 2 * A - s ≤ 2 * A := by linarith [hs.1]
  have hbase : K / A ^ 2 ≤ K / A := by
    apply (div_le_div_iff₀ hden hpos).mpr
    exact mul_le_mul_of_nonneg_left (by nlinarith : A ≤ A ^ 2) hK
  unfold affineTrend
  calc
    |endpointValue A + endpointSlope A * (2 * A - s)| ≤
        |endpointValue A| + |endpointSlope A * (2 * A - s)| := abs_add_le _ _
    _ = |endpointValue A| + |endpointSlope A| * (2 * A - s) := by
      rw [abs_mul, abs_of_nonneg hs0]
    _ ≤ K / A ^ 2 + (2 * K / A ^ 2) * (2 * A - s) :=
      add_le_add hp (mul_le_mul_of_nonneg_right hb hs0)
    _ ≤ K / A ^ 2 + (2 * K / A ^ 2) * (2 * A) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_left ht
        (by positivity : (0 : ℝ) ≤ 2 * K / A ^ 2))
    _ = K / A ^ 2 + 4 * K / A := by field_simp; ring
    _ ≤ K / A + 4 * K / A := add_le_add hbase le_rfl
    _ = 5 * K / A := by ring

/-- This sample radius is conditional on its endpoint providers; it proves no PNT input. -/
theorem firstPhysicalBlock_upper_of_endpoint_samples (A K : ℝ)
    (hK : 0 ≤ K) (hA : 80 ≤ A) (hKA : 320 * K ≤ A)
    (hp : |endpointValue A| ≤ K / A ^ 2)
    (hb : |endpointSlope A| ≤ 2 * K / A ^ 2) :
    firstPhysicalBlock A ≤ -(1293 / 5120 : ℝ) := by
  apply firstPhysicalBlock_upper A hA
  intro s hs
  have hsfull : s ∈ Icc (0 : ℝ) (2 * A) := by
    constructor
    · exact log_two_bounds.1.trans hs.1
    · linarith [hs.2, Real.log_four_eq, log_two_bounds.2]
  have henv := affineTrend_abs_le_of_endpoint_samples A K s hK (by linarith) hsfull hp hb
  have hratio : 5 * K / A ≤ (1 / 64 : ℝ) :=
    (div_le_iff₀ (by linarith : 0 < A)).mpr (by linarith)
  have hlo := (abs_le.mp henv).1
  linarith

/-- Original physical head `[0, log 2]`; its separate negative cap remains an input. -/
def initialPhysicalBlock (A : ℝ) : ℝ :=
  ∫ s in 0..Real.log 2, kapitzaWeight A s * nonaffineDiscrepancy A s

/-- Full moving signed complement `[log 4, 2A]` using the same source and affine fit. -/
def remainingPhysicalTail (A : ℝ) : ℝ :=
  ∫ s in Real.log 4..2 * A, kapitzaWeight A s * nonaffineDiscrepancy A s

/-- Same-source physical splitting, without an affine refit or duplicate endpoint atom. -/
theorem nonaffineWork_eq_three_physical_blocks (A : ℝ) (hA : 80 ≤ A) :
    nonaffineWork A = initialPhysicalBlock A + firstPhysicalBlock A + remainingPhysicalTail A := by
  have hp : 0 < A := by linarith
  have h24 : Real.log 2 ≤ Real.log 4 := log_two_le_three.trans log_three_le_four
  have h4A : Real.log 4 ≤ 2 * A := by
    linarith [Real.log_four_eq, log_two_bounds.2]
  have hi₀ := physical_block_integrable A 0 (Real.log 2) hp log_two_bounds.1
  have hi₁ := physical_block_integrable A (Real.log 2) (Real.log 4) hp h24
  have hi₂ := physical_block_integrable A (Real.log 4) (2 * A) hp h4A
  unfold nonaffineWork initialPhysicalBlock firstPhysicalBlock remainingPhysicalTail
  rw [intervalIntegral.integral_add_adjacent_intervals hi₀ hi₁,
    intervalIntegral.integral_add_adjacent_intervals (hi₀.trans hi₁) hi₂]

/-- Only the displayed head and tail bounds can supply the missing global arithmetic cap. -/
theorem nonaffineWork_upper_of_head_tail (A H m : ℝ) (hA : 80 ≤ A)
    (hell : ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s)
    (hhead : initialPhysicalBlock A ≤ -m) (htail : remainingPhysicalTail A ≤ H) :
    nonaffineWork A ≤ H - m - 1293 / 5120 := by
  rw [nonaffineWork_eq_three_physical_blocks A hA]
  linarith [firstPhysicalBlock_upper A hA hell]

/-- Exact original-prefix/threshold-91 consumer; the moving tail cap remains an input. -/
theorem original_lower_of_first_block_and_tail
    (Rblock Rhead Rtail Rtrend H m epsilon : ℝ) (hRblock : 80 ≤ Rblock)
    (hell : ∀ A : ℝ, Rblock ≤ A →
      ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s)
    (hhead : ∀ A : ℝ, Rhead ≤ A → initialPhysicalBlock A ≤ -m)
    (htail : ∀ A : ℝ, Rtail ≤ A → remainingPhysicalTail A ≤ H)
    (hTrend : ∀ A : ℝ, Rtrend ≤ A → |trendValue A| ≤ epsilon) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor (consumerRadius (max Rblock (max Rhead Rtail)) Rtrend))
        (archimedeanMultiplier 0 + 2 - 2 * (H - m - 1293 / 5120) - 2 * epsilon -
          2 * continuousDefect (consumerRadius (max Rblock (max Rhead Rtail)) Rtrend)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  apply original_lower_of_separate_nonaffine_caps
  · intro A hA
    have hb : Rblock ≤ A := (le_max_left _ _).trans hA
    have hh : Rhead ≤ A := (le_max_left _ _).trans ((le_max_right _ _).trans hA)
    have ht : Rtail ≤ A := (le_max_right _ _).trans ((le_max_right _ _).trans hA)
    exact nonaffineWork_upper_of_head_tail A H m (hRblock.trans hb)
      (hell A hb) (hhead A hh) (htail A ht)
  · exact hTrend

/-- The unchanged #16 declaration follows conditionally; no complement witness is constructed. -/
theorem estimate_of_first_block_and_tail
    (Rblock Rhead Rtail Rtrend H m epsilon : ℝ) (hRblock : 80 ≤ Rblock)
    (hell : ∀ A : ℝ, Rblock ≤ A →
      ∀ s ∈ Icc (Real.log 2) (Real.log 4), -(1 / 64 : ℝ) ≤ affineTrend A s)
    (hhead : ∀ A : ℝ, Rhead ≤ A → initialPhysicalBlock A ≤ -m)
    (htail : ∀ A : ℝ, Rtail ≤ A → remainingPhysicalTail A ≤ H)
    (hTrend : ∀ A : ℝ, Rtrend ≤ A → |trendValue A| ≤ epsilon) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_first_block_and_tail Rblock Rhead Rtail Rtrend H m epsilon
    hRblock hell hhead htail hTrend⟩

end FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock


set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 1000000

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.blockMajorant

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_kernel_lower

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.prefix_four_retains_prime_power

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_first_cell

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_on_second_cell

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.discrepancy_majorant_neg

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.physical_block_integrable

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_exact

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.actual_block_majorant_rational_upper

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_lt_neg_quarter

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.affineTrend_abs_le_of_endpoint_samples

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.firstPhysicalBlock_upper_of_endpoint_samples

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.initialPhysicalBlock

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.remainingPhysicalTail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_eq_three_physical_blocks

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.nonaffineWork_upper_of_head_tail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.original_lower_of_first_block_and_tail

#check FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail
#print FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaFirstBlock.estimate_of_first_block_and_tail

