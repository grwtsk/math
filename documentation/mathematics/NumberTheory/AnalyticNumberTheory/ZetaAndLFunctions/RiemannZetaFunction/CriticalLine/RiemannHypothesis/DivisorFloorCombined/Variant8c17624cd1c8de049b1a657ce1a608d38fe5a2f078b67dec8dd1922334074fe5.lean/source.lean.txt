-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DampedDivisorCoefficient.Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DampedDivisorCoefficient.Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/divisor-floor-combined.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount
import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DampedDivisorCoefficient.Variant1407a4097fbb8891d54a177a71fa1c50d0f8a1569b4cbe98cbeb39d7907b015b

namespace FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient
open Finset
noncomputable section
/-- The original finite Möbius divisor sum with its exact exponential damping. -/
def dampedDivisorCoefficient (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorCoefficient


/-! Exact finite divisor-floor transport for the original endpoint-corrected fractional residual. -/
set_option autoImplicit false
namespace DivisorFloorTransportScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusFractionalResidual MobiusEndpointBudget MobiusPoleNumerator LogarithmicResidualTail
open DampedDivisorCoefficient
noncomputable section

/-- A finite floor-weighted prefix equals its full divisor sum, with every equality endpoint kept. -/
theorem floor_sum_divisors (X : ℕ) (x : ℝ) (a : ℕ → ℝ)
    (hxX : x ≤ X) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors, a d := by
  have hN : ⌊x⌋₊ ≤ X := Nat.floor_le_of_le hxX
  have hf (n : ℕ) (hn : n ∈ Icc 1 ⌊x⌋₊) :
      (Icc 1 X).filter (fun d => d ∣ n) = n.divisors := by
    have hn0 : n ≠ 0 := by have := (mem_Icc.mp hn).1; omega
    ext d
    simp only [mem_filter, mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨hd, hdn⟩
      exact ⟨hdn, hn0⟩
    · rintro ⟨hdn, _⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn (by omega)
      exact ⟨⟨hd0, (Nat.le_of_dvd (by omega) hdn).trans ((mem_Icc.mp hn).2.trans hN)⟩, hdn⟩
  calc
    _ = ∑ d ∈ Icc 1 X, ∑ n ∈ Icc 1 ⌊x⌋₊, if d ∣ n then a d else 0 := by
      apply sum_congr rfl
      intro d hd
      rw [Nat.floor_div_natCast, ← sum_filter]
      simp only [sum_const, nsmul_eq_mul, CoprimeCount.positive_multiples_card]
      ring
    _ = ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ Icc 1 X, if d ∣ n then a d else 0 := sum_comm
    _ = _ := by
      apply sum_congr rfl
      intro n hn
      rw [← sum_filter, hf n hn]

/-- The finite natural divisor prefix is exactly the complete floor-weighted coefficient sum. -/
theorem divisor_prefix_eq_floor (N : ℕ) (a : ℕ → ℝ) :
    (∑ n ∈ Icc 1 N, ∑ d ∈ n.divisors, a d) =
      ∑ d ∈ Icc 1 N, a d * ((N / d : ℕ) : ℝ) := by
  simpa only [Nat.floor_natCast, Nat.floor_div_eq_div] using
    (floor_sum_divisors N (N : ℝ) a le_rfl).symm

private theorem residual_floor (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 0 ≤ x) :
    arithmeticResidual X ε x = (if 1 ≤ x then 1 else 0) +
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      ((∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  rw [arithmeticResidual, ← dampedCoefficient_reciprocal_sum X ε hX]
  push_cast
  rw [Finset.mul_sum, add_sub_assoc, ← Finset.sum_sub_distrib]
  congr 1
  apply sum_congr rfl
  intro d hd
  have hd0 : (0 : ℝ) ≤ d := Nat.cast_nonneg _
  rw [Int.fract, ← natCast_floor_eq_intCast_floor (div_nonneg hx hd0)]
  push_cast
  ring

private theorem damped_floor (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hxX : x ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X ε d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      (∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors,
        (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))) -
      (X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
        FiniteMobiusController.mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) := by
  simp only [dampedCoefficient, sub_mul, ite_mul, zero_mul, sum_sub_distrib]
  rw [floor_sum_divisors X x _ hxX]
  congr 1
  simp [hX]

/-- The closed original source interval retains the full endpoint compensation atom. -/
theorem arithmeticResidual_eq_divisor_prefix_closed (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x ≤ X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          FiniteMobiusController.mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) := by
  simp only [dampedDivisorCoefficient]
  rw [residual_floor X ε x hX (by linarith), if_pos hx, damped_floor X ε x hX hxX]
  push_cast
  ring

/-- Strictly before the cutoff, actual damped Möbius divisor cancellation is exact. -/
theorem arithmeticResidual_eq_divisor_prefix (X : ℕ) (ε x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) := by
  have hX0 : (0 : ℝ) < X := by exact_mod_cast (show 0 < X by omega)
  have hz : ⌊x / (X : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr ((div_lt_one hX0).mpr hxX)
  rw [arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX.le, hz]
  simp

/-- Without damping the unchanged source cancels exactly on the strict original cutoff interval. -/
theorem arithmeticResidual_zero_of_lt_cutoff (X : ℕ) (x : ℝ)
    (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) : arithmeticResidual X 0 x = 0 := by
  have hN : 1 ≤ ⌊x⌋₊ := (Nat.le_floor_iff (by linarith)).mpr (by simpa using hx)
  rw [arithmeticResidual_eq_divisor_prefix X 0 x hX hx hxX]
  simp only [Complex.ofReal_zero, add_zero, correctedNumerator_half, mul_zero,
    neg_zero, zero_mul, dampedDivisorCoefficient, Real.exp_zero, mul_one,
    CoprimeCount.sum_moebius_divisors]
  simp [hN]

/-- At the cutoff itself the actual endpoint coefficient is retained instead of claiming zero. -/
theorem arithmeticResidual_zero_damping_endpoint (X : ℕ) (hX : 1 ≤ X) :
    arithmeticResidual X 0 (X : ℝ) =
      ((X : ℝ) * FiniteMobiusController.mobiusReciprocalSum X : ℂ) := by
  have hX0 : (X : ℝ) ≠ 0 := by exact_mod_cast (show X ≠ 0 by omega)
  rw [arithmeticResidual_eq_divisor_prefix_closed X 0 (X : ℝ) hX
    (by exact_mod_cast hX) le_rfl]
  simp only [Complex.ofReal_zero, add_zero, correctedNumerator_half, mul_zero,
    neg_zero, zero_mul, dampedDivisorCoefficient, Real.exp_zero, mul_one,
    CoprimeCount.sum_moebius_divisors,
    div_self hX0, Nat.floor_one, Nat.cast_one, Nat.floor_natCast]
  simp [hX]

end
end DivisorFloorTransportScratch
