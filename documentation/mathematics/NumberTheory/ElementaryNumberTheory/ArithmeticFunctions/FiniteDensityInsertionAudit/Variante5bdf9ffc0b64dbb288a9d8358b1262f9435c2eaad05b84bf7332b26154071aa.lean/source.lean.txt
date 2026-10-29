import FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary
import FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount

set_option autoImplicit false

namespace FiniteDensityInsertionScratch

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open scoped ArithmeticFunction.zeta

noncomputable section

def coprimeReciprocalSquareSum (h D : ℕ) : ℝ :=
  ∑ d ∈ Icc 1 D, if Nat.Coprime d h then
    (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0

theorem coprimeDensity_mul (h k : ℕ) (hhk : Nat.Coprime h k) :
    CoprimeCount.coprimeDensity (h * k) =
      CoprimeCount.coprimeDensity h * CoprimeCount.coprimeDensity k := by
  let f : ArithmeticFunction ℝ := ⟨fun n ↦ (ArithmeticFunction.moebius n : ℝ) / n,
    by simp⟩
  have hf : f.IsMultiplicative := by
    constructor
    · simp [f]
    · intro m n hmn
      change (ArithmeticFunction.moebius (m * n) : ℝ) / (m * n : ℕ) = _
      rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hmn]
      push_cast
      dsimp [f]
      ring
  have heq (n : ℕ) : (f * (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) n =
      CoprimeCount.coprimeDensity n := by
    simp only [ArithmeticFunction.coe_mul_zeta_apply, CoprimeCount.coprimeDensity]
    rfl
  simpa only [heq] using
    (hf.mul ArithmeticFunction.isMultiplicative_zeta.natCast).map_mul_of_coprime hhk

theorem coprimeDensity_two : CoprimeCount.coprimeDensity 2 = (1 / 2 : ℝ) := by
  norm_num [CoprimeCount.coprimeDensity,
    ArithmeticFunction.moebius_apply_prime Nat.prime_two]

theorem coprimeDensity_two_mul (h : ℕ) (hh : Nat.Coprime 2 h) :
    CoprimeCount.coprimeDensity (2 * h) = CoprimeCount.coprimeDensity h / 2 := by
  rw [coprimeDensity_mul 2 h hh, coprimeDensity_two]
  ring

theorem coprimeReciprocalSquareSum_two_split (h D : ℕ) (hh : Nat.Coprime 2 h) :
    coprimeReciprocalSquareSum h D = coprimeReciprocalSquareSum (2 * h) D -
      (1 / 4 : ℝ) * coprimeReciprocalSquareSum (2 * h) (D / 2) := by
  have hs := TwoInsertionBoundary.moebius_sum_two_split D
    (fun d ↦ if Nat.Coprime d h then 1 / (d : ℝ)^2 else 0)
  have hterm (d : ℕ) : (ArithmeticFunction.moebius d : ℝ) *
      (if Nat.Coprime d h then 1 / (d : ℝ)^2 else 0) =
      if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
    split_ifs <;> simp only [mul_zero, div_eq_mul_inv, one_mul]
  simp_rw [hterm] at hs
  have hleft : (∑ d ∈ (Icc 1 D).filter (fun d ↦ Nat.Coprime d 2),
      if Nat.Coprime d h then (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0) =
      coprimeReciprocalSquareSum (2 * h) D := by
    rw [sum_filter]
    unfold coprimeReciprocalSquareSum
    apply sum_congr rfl
    intro d _
    simp only [Nat.coprime_mul_iff_right]
    split_ifs <;> grind
  have hright : (∑ d ∈ (Icc 1 (D / 2)).filter (fun d ↦ Nat.Coprime d 2),
      (ArithmeticFunction.moebius d : ℝ) *
        (if Nat.Coprime (2 * d) h then 1 / ((2 * d : ℕ) : ℝ)^2 else 0)) =
      (1 / 4 : ℝ) * coprimeReciprocalSquareSum (2 * h) (D / 2) := by
    rw [sum_filter, coprimeReciprocalSquareSum, mul_sum]
    apply sum_congr rfl
    intro d _
    have hc : Nat.Coprime (2 * d) h ↔ Nat.Coprime d h := by
      rw [Nat.coprime_mul_iff_left]
      exact and_iff_right hh
    simp only [hc, Nat.coprime_mul_iff_right]
    split_ifs <;> grind
  rw [hleft, hright] at hs
  exact hs

theorem coprimeReciprocalSquareSum_difference (h Y Z : ℕ) (hYZ : Y ≤ Z) :
    coprimeReciprocalSquareSum h Z - coprimeReciprocalSquareSum h Y =
      ∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  have hu : Icc 1 Y ∪ Ioc Y Z = Icc 1 Z := by
    ext d
    simp only [mem_union, mem_Icc, mem_Ioc]
    omega
  have hd : Disjoint (Icc 1 Y) (Ioc Y Z) := by
    rw [disjoint_left]
    intro d hd he
    simp only [mem_Icc, mem_Ioc] at hd he
    omega
  unfold coprimeReciprocalSquareSum
  rw [← hu, sum_union hd]
  ring

theorem finiteSquarefreeDensity_two_error_eq (h D : ℕ) (hh : Nat.Coprime 2 h) :
    SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D =
      -(CoprimeCount.coprimeDensity h / 6) *
        ∑ d ∈ Ioc (D / 2) D, if Nat.Coprime d (2 * h) then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0 := by
  change CoprimeCount.coprimeDensity (2*h) * coprimeReciprocalSquareSum (2*h) D -
    (2/3:ℝ)*(CoprimeCount.coprimeDensity h*coprimeReciprocalSquareSum h D) = _
  rw [coprimeDensity_two_mul h hh, coprimeReciprocalSquareSum_two_split h D hh,
    ← coprimeReciprocalSquareSum_difference (2*h) (D/2) D (Nat.div_le_self D 2)]
  ring

theorem coprimeReciprocalSquareSum_tail_abs_le (h Y Z : ℕ) (hY : 1 ≤ Y)
    (hYZ : Y ≤ Z) :
    |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| ≤ 1 / (Y : ℝ) := by
  calc
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity
    _ ≤ _ := ReciprocalSquareTail.reciprocal_square_tail_le Y Z hY hYZ

theorem finiteSquarefreeDensity_two_error_le_half_cutoff (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (6 * (D / 2 : ℕ)) := by
  rw [finiteSquarefreeDensity_two_error_eq h D hh, abs_mul, abs_neg,
    abs_of_nonneg (div_nonneg (CoprimeCount.coprimeDensity_nonneg h hh1) (by norm_num))]
  have hcoeff : CoprimeCount.coprimeDensity h / 6 ≤ (1/6:ℝ) := by
    exact div_le_div_of_nonneg_right (CoprimeCount.coprimeDensity_le_one h hh1) (by norm_num)
  calc
    _ ≤ (1/6:ℝ)*(1/(D/2:ℕ)) := mul_le_mul hcoeff
      (coprimeReciprocalSquareSum_tail_abs_le (2*h) (D/2) D (by omega)
        (Nat.div_le_self D 2)) (abs_nonneg _) (by norm_num)
    _ = _ := by ring

theorem finiteSquarefreeDensity_two_error_le (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (2 * (D : ℝ)) := by
  have hhalf : (D : ℝ) ≤ 3 * (D / 2 : ℕ) := by
    exact_mod_cast (show D ≤ 3*(D/2) by omega)
  exact (finiteSquarefreeDensity_two_error_le_half_cutoff h D hh hh1 hD).trans
    (one_div_le_one_div_of_le (by positivity) (by linarith))

def twoDensityFactor : ℝ := (Real.sqrt 2 - 1)^2 / 3

theorem twoDensityFactor_eq : twoDensityFactor = 1 - 2 * Real.sqrt 2 / 3 := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)
  unfold twoDensityFactor
  nlinarith

theorem twoDensityFactor_bounds : 0 ≤ twoDensityFactor ∧ twoDensityFactor ≤ 1/16 := by
  constructor
  · unfold twoDensityFactor
    positivity
  · rw [twoDensityFactor_eq]
    have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2)
    have hp := Real.sqrt_nonneg (2:ℝ)
    nlinarith

theorem signed_two_density_error_le (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  have heq : SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D =
      -Real.sqrt 2 * (SquarefreeCount.finiteSquarefreeDensity (2*h) D -
        (2/3:ℝ)*SquarefreeCount.finiteSquarefreeDensity h D) := by
    rw [twoDensityFactor_eq]
    ring
  rw [heq, abs_mul, abs_neg, abs_of_nonneg (Real.sqrt_nonneg (2:ℝ))]
  simpa only [mul_one_div] using mul_le_mul_of_nonneg_left
    (finiteSquarefreeDensity_two_error_le h D hh hh1 hD) (Real.sqrt_nonneg (2:ℝ))

theorem signed_two_density_abs_le (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  calc
    _ ≤ |twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| +
        |SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| := by
      convert abs_add_le
        (twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D)
        (SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D) using 1
      congr 1
      ring
    _ ≤ _ := by
      rw [abs_mul, abs_of_nonneg twoDensityFactor_bounds.1]
      exact add_le_add (mul_le_mul_of_nonneg_right twoDensityFactor_bounds.2 (abs_nonneg _))
        (signed_two_density_error_le h D hh hh1 hD)

theorem signed_two_density_cutoffs_error_le (h Y Z : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hY : 2 ≤ Y) (hYZ : Y ≤ Z) :
    |SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z| ≤
      7 * Real.sqrt 2 / (6 * (Y:ℝ)) := by
  have htail : |SquarefreeCount.finiteSquarefreeDensity h Z -
      SquarefreeCount.finiteSquarefreeDensity h Y| ≤ 1/(Y:ℝ) :=
    (SquarefreeCount.finiteSquarefreeDensity_difference_le h Y Z hh1 hYZ).trans
      (ReciprocalSquareTail.reciprocal_square_tail_le Y Z (by omega) hYZ)
  have heq : SquarefreeCount.finiteSquarefreeDensity h Z -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Z =
      (SquarefreeCount.finiteSquarefreeDensity h Y -
        Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
        twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Y) +
      (2*Real.sqrt 2/3) * (SquarefreeCount.finiteSquarefreeDensity h Z -
        SquarefreeCount.finiteSquarefreeDensity h Y) := by
    rw [twoDensityFactor_eq]
    ring
  rw [heq]
  calc
    _ ≤ |SquarefreeCount.finiteSquarefreeDensity h Y -
        Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) Y -
        twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h Y| +
        |(2*Real.sqrt 2/3) * (SquarefreeCount.finiteSquarefreeDensity h Z -
          SquarefreeCount.finiteSquarefreeDensity h Y)| := abs_add_le _ _
    _ ≤ Real.sqrt 2/(2*(Y:ℝ)) + (2*Real.sqrt 2/3)*(1/(Y:ℝ)) := by
      rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2*Real.sqrt (2:ℝ)/3)]
      exact add_le_add (signed_two_density_error_le h Y hh hh1 hY)
        (mul_le_mul_of_nonneg_left htail (by positivity))
    _ = _ := by ring

theorem signed_two_density_natural_cutoffs_error_le (h N : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hN : 8 ≤ N) :
    |SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) (Nat.sqrt (N/2)) -
      twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt N)| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N/2):ℝ)) := by
  exact signed_two_density_cutoffs_error_le h (Nat.sqrt (N/2)) (Nat.sqrt N) hh hh1
    (Nat.le_sqrt.mpr (by omega)) (Nat.sqrt_le_sqrt (Nat.div_le_self N 2))

end
end FiniteDensityInsertionScratch

#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum
#print FiniteDensityInsertionScratch.coprimeDensity_mul
#print axioms FiniteDensityInsertionScratch.coprimeDensity_mul
#print FiniteDensityInsertionScratch.coprimeDensity_two
#print axioms FiniteDensityInsertionScratch.coprimeDensity_two
#print FiniteDensityInsertionScratch.coprimeDensity_two_mul
#print axioms FiniteDensityInsertionScratch.coprimeDensity_two_mul
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_two_split
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_two_split
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_difference
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_difference
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_eq
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_eq
#print FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_tail_abs_le
#print axioms FiniteDensityInsertionScratch.coprimeReciprocalSquareSum_tail_abs_le
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le_half_cutoff
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le_half_cutoff
#print FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le
#print axioms FiniteDensityInsertionScratch.finiteSquarefreeDensity_two_error_le
#print FiniteDensityInsertionScratch.twoDensityFactor
#print axioms FiniteDensityInsertionScratch.twoDensityFactor
#print FiniteDensityInsertionScratch.twoDensityFactor_eq
#print axioms FiniteDensityInsertionScratch.twoDensityFactor_eq
#print FiniteDensityInsertionScratch.twoDensityFactor_bounds
#print axioms FiniteDensityInsertionScratch.twoDensityFactor_bounds
#print FiniteDensityInsertionScratch.signed_two_density_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_error_le
#print FiniteDensityInsertionScratch.signed_two_density_abs_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_abs_le
#print FiniteDensityInsertionScratch.signed_two_density_cutoffs_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_cutoffs_error_le
#print FiniteDensityInsertionScratch.signed_two_density_natural_cutoffs_error_le
#print axioms FiniteDensityInsertionScratch.signed_two_density_natural_cutoffs_error_le
