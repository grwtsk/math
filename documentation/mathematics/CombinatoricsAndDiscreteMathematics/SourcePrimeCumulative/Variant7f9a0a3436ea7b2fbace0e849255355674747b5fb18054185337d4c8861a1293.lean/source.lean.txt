import SourcePrimeDisclosureActual
import SourceDivisorCounterterms
import Mathlib.Data.Finset.Max
import Mathlib.Algebra.BigOperators.Module

/-!
Exact cumulative small-prime disclosure of the actual aligned divisor source.
The main terms are the pre-existing independently specified counterterms.
The largest-prime ledger retains mixed products through their true U/p cutoff.
No uniform signed bound or changing-scale transport is asserted.

Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace RH16Tandem.SourcePrimeCumulative

open scoped BigOperators
open RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceDivisorCounterterms
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel
open FormalResearch.RiemannHypothesis.SourceSamplingLedger
open FormalResearch.RiemannHypothesis.SourceVaughanHankel
open FormalResearch.RiemannHypothesis.SourceDivisorClassification
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel

def weightedDivisors (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ d ∈ primeDivisors P U, (ArithmeticFunction.moebius d : ℝ) * f d

theorem weightedDivisors_insert (P : Finset ℕ) (U p : ℕ) (f : ℕ → ℝ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    weightedDivisors (insert p P) U f = weightedDivisors P U f -
      weightedDivisors P (U / p) (fun e => f (p * e)) := by
  classical
  unfold weightedDivisors
  rw [primeDivisors_insert P U p hp.pos hpP,
    Finset.sum_union (primeDivisors_insert_disjoint P U p hP hp hpP),
    Finset.sum_image (fun a _ b _ h => Nat.eq_of_mul_eq_mul_left hp.pos h)]
  have hs : (∑ e ∈ primeDivisors P (U / p),
      (ArithmeticFunction.moebius (p * e) : ℝ) * f (p * e)) =
      -(∑ e ∈ primeDivisors P (U / p),
        (ArithmeticFunction.moebius e : ℝ) * f (p * e)) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro e he
    rw [moebius_fresh_prime_mul hp (primeDivisors_fresh_coprime P (U / p) p hP hp hpP e he)]
    ring
  rw [hs]
  ring

theorem weightedDivisors_coverage (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ)
    (hP : ∀ r ∈ P, r.Prime) (hcover : ∀ r, r.Prime → r ≤ U → r ∈ P) :
    weightedDivisors P U f =
      ∑ d ∈ Finset.Icc 1 U, (ArithmeticFunction.moebius d : ℝ) * f d := by
  classical
  have hsub : primeDivisors P U ⊆ Finset.Icc 1 U := by
    intro e he
    obtain ⟨he, hcut⟩ := Finset.mem_filter.mp he
    obtain ⟨S, hS, rfl⟩ := Finset.mem_image.mp he
    exact Finset.mem_Icc.mpr ⟨Finset.prod_pos (fun r hr =>
      (hP r ((Finset.mem_powerset.mp hS) hr)).pos), hcut⟩
  unfold weightedDivisors
  apply Finset.sum_subset hsub
  intro d hd hnot
  have hnsq : ¬ Squarefree d := by
    intro hsq
    apply hnot
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_image.mpr ⟨d.primeFactors, ?_, Nat.prod_primeFactors_of_squarefree hsq⟩,
      (Finset.mem_Icc.mp hd).2⟩
    apply Finset.mem_powerset.mpr
    intro r hr
    obtain ⟨hrp, hrd, _⟩ := Nat.mem_primeFactors.mp hr
    exact hcover r hrp ((Nat.le_of_dvd (Finset.mem_Icc.mp hd).1 hrd).trans
      (Finset.mem_Icc.mp hd).2)
  rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hnsq]
  simp

/-- The exact mixed pq block has positive Mobius parity and the true U/(pq) cutoff. -/
theorem weightedDivisors_mixed (P : Finset ℕ) (U p q : ℕ) (f : ℕ → ℝ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hq : q.Prime)
    (hpP : p ∉ P) (hqP : q ∉ P) (hpq : p ≠ q) :
    weightedDivisors (insert q (insert p P)) U f -
      weightedDivisors (insert p P) U f - weightedDivisors (insert q P) U f +
      weightedDivisors P U f =
        weightedDivisors P (U / (p * q)) (fun e => f ((p * q) * e)) := by
  have hi : ∀ r ∈ insert p P, r.Prime := by
    intro r hr
    rcases Finset.mem_insert.mp hr with rfl | hr
    · exact hp
    · exact hP r hr
  have hqi : q ∉ insert p P := by simp [hqP, hpq.symm]
  rw [weightedDivisors_insert (insert p P) U q f hi hq hqi,
    weightedDivisors_insert P U q f hP hq hqP,
    weightedDivisors_insert P (U / q) p (fun e => f (q * e)) hP hp hpP]
  rw [Nat.div_div_eq_div_mul, Nat.mul_comm q p]
  simp only [Nat.mul_assoc, Nat.mul_left_comm q p]
  ring

/-- A canonical increasing-prime ledger includes every mixed divisor when its largest prime arrives. -/
theorem weightedDivisors_largest_prime_ledger (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ)
    (hU : 1 ≤ U) (hP : ∀ r ∈ P, r.Prime) :
    weightedDivisors P U f = f 1 -
      ∑ p ∈ P, weightedDivisors (P.filter (· < p)) (U / p) (fun e => f (p * e)) := by
  classical
  induction P using Finset.induction_on_max with
  | empty => simp [weightedDivisors, primeDivisors, Finset.filter_singleton, hU]
  | @insert p P hpmax ih =>
    have hpP : p ∉ P := by
      intro hp
      exact (hpmax p hp).false
    have hpp : p.Prime := hP p (Finset.mem_insert_self p P)
    have hP' : ∀ r ∈ P, r.Prime := fun r hr => hP r (Finset.mem_insert_of_mem hr)
    rw [weightedDivisors_insert P U p f hP' hpp hpP,
      Finset.sum_insert hpP, ih hP']
    have hnew : (insert p P).filter (· < p) = P := by
      ext r
      simp only [Finset.mem_filter, Finset.mem_insert]
      constructor
      · rintro ⟨rfl | hr, hlt⟩
        · exact (lt_irrefl _ hlt).elim
        · exact hr
      · intro hr
        exact ⟨Or.inr hr, hpmax r hr⟩
    have hold (r : ℕ) (hr : r ∈ P) : (insert p P).filter (· < r) = P.filter (· < r) := by
      ext e
      simp only [Finset.mem_filter, Finset.mem_insert]
      constructor
      · rintro ⟨rfl | he, hlt⟩
        · exact ((hpmax r hr).asymm hlt).elim
        · exact ⟨he, hlt⟩
      · rintro ⟨he, hlt⟩
        exact ⟨Or.inr he, hlt⟩
    rw [hnew]
    have hs : (∑ r ∈ P, weightedDivisors ((insert p P).filter (· < r))
        (U / r) (fun e => f (r * e))) =
        ∑ r ∈ P, weightedDivisors (P.filter (· < r)) (U / r) (fun e => f (r * e)) :=
      Finset.sum_congr rfl (fun r hr => by rw [hold r hr])
    rw [hs]
    ring

/-- Alignment uses the existing independently defined counterterm at every disclosed divisor. -/
def alignedSource (A : ℝ) (P : Finset ℕ) : ℝ :=
  -globalBaseline A + weightedDivisors P (vaughanCutoff A)
    (fun d => divisorInteraction A d - divisorCounterterm A d)

theorem alignedSource_eq_actual_remainders (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ) :
    alignedSource A P = -globalBaseline A +
      weightedDivisors P (vaughanCutoff A) (divisorRemainder A) := by
  unfold alignedSource weightedDivisors
  simp_rw [divisorInteraction_sub_counterterm A hA]

/-- All disclosed centering means cancel before forming this genuine source increment. -/
theorem alignedSource_fresh_prime (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ) (p : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    alignedSource A (insert p P) - alignedSource A P =
      -weightedDivisors P (vaughanCutoff A / p) (fun e => divisorRemainder A (p * e)) := by
  rw [alignedSource_eq_actual_remainders A hA, alignedSource_eq_actual_remainders A hA,
    weightedDivisors_insert P (vaughanCutoff A) p (divisorRemainder A) hP hp hpP]
  ring

theorem alignedSource_mixed (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ) (p q : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hq : q.Prime)
    (hpP : p ∉ P) (hqP : q ∉ P) (hpq : p ≠ q) :
    alignedSource A (insert q (insert p P)) - alignedSource A (insert p P) -
      alignedSource A (insert q P) + alignedSource A P =
        weightedDivisors P (vaughanCutoff A / (p * q))
          (fun e => divisorRemainder A ((p * q) * e)) := by
  simp_rw [alignedSource_eq_actual_remainders A hA]
  have h := weightedDivisors_mixed P (vaughanCutoff A) p q (divisorRemainder A)
    hP hp hq hpP hqP hpq
  linarith

theorem alignedSource_cumulative (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ)
    (hP : ∀ r ∈ P, r.Prime) :
    alignedSource A P = -globalBaseline A + divisorRemainder A 1 -
      ∑ p ∈ P, weightedDivisors (P.filter (· < p)) (vaughanCutoff A / p)
        (fun e => divisorRemainder A (p * e)) := by
  rw [alignedSource_eq_actual_remainders A hA,
    weightedDivisors_largest_prime_ledger P (vaughanCutoff A) (divisorRemainder A)
      (vaughanCutoff_pos A hA) hP]
  ring

/-- Finite coverage returns this cumulative arithmetic ledger to the unchanged actual source target. -/
theorem alignedSource_coverage (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ)
    (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ vaughanCutoff A → r ∈ P) :
    alignedSource A P = jointSignedRemainder A := by
  rw [alignedSource_eq_actual_remainders A hA,
    weightedDivisors_coverage P (vaughanCutoff A) (divisorRemainder A) hP hcover,
    jointSignedRemainder_eq_divisor_remainders A hA]
  rfl

/-- Actual full Mangoldt row, both long axes and the literal physical diagonal remain in this partial beta readout. -/
def physicalDisclosedCovariance (A : ℝ) (P : Finset ℕ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
    ArithmeticFunction.vonMangoldt m *
      centeredDisclosure (primeDivisors P (vaughanCutoff A)) n *
        sourcePlainWeight A ((m * n : ℕ) : ℝ)

theorem physicalDisclosedCovariance_eq_actual_divisors (A : ℝ) (P : Finset ℕ) :
    physicalDisclosedCovariance A P =
      weightedDivisors P (vaughanCutoff A) (divisorInteraction A) := by
  classical
  unfold physicalDisclosedCovariance weightedDivisors centeredDisclosure
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  conv_lhs =>
    arg 2
    ext m
    rw [Finset.sum_comm]
  rw [Finset.sum_comm]
  unfold divisorInteraction divisorCovarianceInteraction
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- This is the undisclosed part of the ORIGINAL independent main term, not a main term manufactured from a residual. -/
def deferredMain (A : ℝ) (P : Finset ℕ) : ℝ :=
  independentMainTerm A - globalBaseline A -
    weightedDivisors P (vaughanCutoff A) (divisorCounterterm A)

theorem actual_fixed_main_reconstruction (A : ℝ) (P : Finset ℕ) :
    physicalDisclosedCovariance A P - independentMainTerm A =
      alignedSource A P - deferredMain A P := by
  rw [physicalDisclosedCovariance_eq_actual_divisors]
  unfold alignedSource deferredMain weightedDivisors
  simp_rw [mul_sub, Finset.sum_sub_distrib]
  ring

theorem deferredMain_coverage (A : ℝ) (P : Finset ℕ)
    (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ vaughanCutoff A → r ∈ P) :
    deferredMain A P = 0 := by
  unfold deferredMain
  rw [weightedDivisors_coverage P (vaughanCutoff A) (divisorCounterterm A) hP hcover,
    independentMainTerm_eq_baseline_add_divisors]
  unfold realMoebius
  ring

/-- The source's complete arithmetic output, with the retained unit-divisor boundary and all mixed small-prime work. -/
theorem actual_cumulative_small_prime_identity (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ)
    (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ vaughanCutoff A → r ∈ P) :
    jointSignedRemainder A = -globalBaseline A - divisorCounterterm A 1 -
      ∑ p ∈ P, weightedDivisors (P.filter (· < p)) (vaughanCutoff A / p)
        (fun e => divisorRemainder A (p * e)) := by
  rw [← alignedSource_coverage A hA P hP hcover, alignedSource_cumulative A hA P hP,
    divisorRemainder_one A hA]
  ring

/-- One prescribed finite schedule works at every real scale; its signed total still needs a quantitative bound. -/
theorem all_real_prime_cumulative_identity (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = -globalBaseline A - divisorCounterterm A 1 -
      ∑ p ∈ ((Finset.range (vaughanCutoff A + 1)).filter Nat.Prime),
        weightedDivisors ((((Finset.range (vaughanCutoff A + 1)).filter Nat.Prime)).filter (· < p))
          (vaughanCutoff A / p) (fun e => divisorRemainder A (p * e)) := by
  apply actual_cumulative_small_prime_identity A hA
  · intro r hr
    exact (Finset.mem_filter.mp hr).2
  · intro r hr hcut
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le hcut), hr⟩


theorem weightedDivisors_reciprocal_insert (P : Finset ℕ) (U p : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    weightedDivisors (insert p P) U (fun d => 1 / (d : ℝ)) -
      weightedDivisors P U (fun d => 1 / (d : ℝ)) =
        -(1 / (p : ℝ)) * weightedDivisors P (U / p) (fun e => 1 / (e : ℝ)) := by
  rw [weightedDivisors_insert P U p _ hP hp hpP]
  have hs : weightedDivisors P (U / p) (fun e => 1 / ((p * e : ℕ) : ℝ)) =
      (1 / (p : ℝ)) * weightedDivisors P (U / p) (fun e => 1 / (e : ℝ)) := by
    unfold weightedDivisors
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro e _
    simp only [Nat.cast_mul, div_eq_mul_inv, mul_inv_rev]
    ring
  rw [hs]
  ring

/-- The natural increasing-prime schedule at the actual A=9 short horizon has an upward mean step. -/
theorem actual_small_prime_mean_increases :
    vaughanCutoff (9 : ℝ) = 81 ∧
    weightedDivisors {2, 3, 5, 7} (81 / 11) (fun d => 1 / (d : ℝ)) =
      -(1 / 105 : ℝ) ∧
    weightedDivisors (insert 11 {2, 3, 5, 7}) 81 (fun d => 1 / (d : ℝ)) -
      weightedDivisors {2, 3, 5, 7} 81 (fun d => 1 / (d : ℝ)) = (1 / 1155 : ℝ) := by
  have hP : ∀ r ∈ ({2, 3, 5, 7} : Finset ℕ), r.Prime := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl | rfl | rfl <;> norm_num
  have hE : primeDivisors {2, 3, 5, 7} (81 / 11) = {1, 2, 3, 5, 6, 7} := by decide
  have hmu6 : ArithmeticFunction.moebius 6 = (1 : ℤ) := by
    change ArithmeticFunction.moebius (2 * 3) = (1 : ℤ)
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime (by decide : Nat.Coprime 2 3)]
    norm_num [ArithmeticFunction.moebius_apply_prime Nat.prime_two,
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  have hmean : weightedDivisors {2, 3, 5, 7} (81 / 11)
      (fun d => 1 / (d : ℝ)) = -(1 / 105 : ℝ) := by
    unfold weightedDivisors
    rw [hE]
    norm_num [hmu6, ArithmeticFunction.moebius_apply_prime Nat.prime_two,
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 7)]
  constructor
  · norm_num [vaughanCutoff]
  · refine ⟨hmean, ?_⟩
    rw [weightedDivisors_reciprocal_insert _ _ _ hP (by norm_num) (by decide), hmean]
    norm_num


/-- Signed arithmetic primitive for a specific disclosed inventory, with its actual short horizon. -/
def maskedMoebius (P : Finset ℕ) (U e : ℕ) : ℝ :=
  if e ∈ primeDivisors P U then (ArithmeticFunction.moebius e : ℝ) else 0

def restrictedMertens (P : Finset ℕ) (U t : ℕ) : ℝ :=
  ∑ e ∈ Finset.range t, maskedMoebius P U e

/-- Source weights do not disappear under telescoping: their signed discrete variation is retained. -/
theorem weightedDivisors_summation_by_parts (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ) :
    weightedDivisors P U f = f U * restrictedMertens P U (U + 1) -
      ∑ e ∈ Finset.range U, (f (e + 1) - f e) * restrictedMertens P U (e + 1) := by
  classical
  have hfilter : (Finset.range (U + 1)).filter (fun e => e ∈ primeDivisors P U) =
      primeDivisors P U := by
    ext e
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact fun h => h.2
    · intro he
      exact ⟨Nat.lt_succ_of_le (Finset.mem_filter.mp he).2, he⟩
  have hs : (∑ e ∈ Finset.range (U + 1), f e * maskedMoebius P U e) =
      weightedDivisors P U f := by
    unfold maskedMoebius weightedDivisors
    simp only [mul_ite, mul_zero]
    rw [← Finset.sum_filter, hfilter]
    apply Finset.sum_congr rfl
    intro e _
    ring
  rw [← hs]
  simpa only [smul_eq_mul, Nat.add_sub_cancel, restrictedMertens] using
    (Finset.sum_range_by_parts f (maskedMoebius P U) (U + 1))

/-- Applied Abel representation of the genuine source remainder in every new-prime block. -/
theorem actual_prime_block_summation_by_parts (A : ℝ) (P : Finset ℕ) (p : ℕ) :
    weightedDivisors P (vaughanCutoff A / p) (fun e => divisorRemainder A (p * e)) =
      divisorRemainder A (p * (vaughanCutoff A / p)) *
        restrictedMertens P (vaughanCutoff A / p) (vaughanCutoff A / p + 1) -
      ∑ e ∈ Finset.range (vaughanCutoff A / p),
        (divisorRemainder A (p * (e + 1)) - divisorRemainder A (p * e)) *
          restrictedMertens P (vaughanCutoff A / p) (e + 1) := by
  exact weightedDivisors_summation_by_parts P (vaughanCutoff A / p)
    (fun e => divisorRemainder A (p * e))

end RH16Tandem.SourcePrimeCumulative
