/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

A single integral equation realizing the OLD selected rational curve and
minimal at every rational prime. Its positive discriminant generator and
principal Z-ideal are constructed from that equation BEFORE computing the
arithmetic budget. This is not a minimal regular scheme, conductor, Neron
model, integral marked-port theorem, or a radical-height upper estimate.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant

open WeierstrassCurve
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality
open GRWTSK.AlgebraicGeometry.EllipticCurve.UnitScaleReduction
open GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality
open FreyOddReduction FreyTwoLowDepth FreyTwoMinimalBudget FreyTwoBranchDecision
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess

/-- Explicit quotients construct the old witness; no choice of a new source. -/
def firstWitness (t : PrimitiveAdditiveTriple) (h : t.a % 4 = 1 ∧ 16 ∣ t.c) :
    FreyTwoSemistableChamber.Chamber t where
  k := t.a / 4
  n := t.c / 16
  a_eq := by omega
  c_eq := by
    have hm := Nat.mod_eq_zero_of_dvd h.2
    omega

def evenWitness (t : PrimitiveAdditiveTriple)
    (h : ((t.b : ℤ) - t.a) % 4 = 1 ∧ 16 ∣ t.a * t.b) :
    FreyTwoEvenSummandChamber.Chamber t where
  k := ((t.b : ℤ) - t.a) / 4
  m := t.a * t.b / 16
  difference_eq := by omega
  product_eq := by
    have hm := Nat.mod_eq_zero_of_dvd h.2
    omega

/-- One integer coefficient tuple, not a collection of unrelated local equations. -/
def integerModel (t : PrimitiveAdditiveTriple) : WeierstrassCurve ℤ :=
  if h : t.a % 4 = 1 ∧ 16 ∣ t.c then
    FreyTwoSemistableChamber.integralModel (firstWitness t h)
  else if h : ((t.b : ℤ) - t.a) % 4 = 1 ∧ 16 ∣ t.a * t.b then
    FreyTwoEvenSummandChamber.integralModel (evenWitness t h)
  else t.freyIntegralModel

/-- Reconcile the coefficient tuple with the PREVIOUS selectedChange action. -/
theorem integerModel_baseChange (t : PrimitiveAdditiveTriple) :
    (integerModel t).baseChange ℚ = selectedCurve t := by
  unfold integerModel selectedCurve selectedChange
  split_ifs with hfirst heven
  · exact FreyTwoSemistableChamber.integralModel_baseChange (firstWitness t hfirst)
  · exact FreyTwoEvenSummandChamber.integralModel_baseChange (evenWitness t heven)
  · simpa only [one_smul] using t.freyIntegralModel_baseChange_eq

def localModel (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    WeierstrassCurve (LocalRing p) := (integerModel t).map (algebraMap ℤ (LocalRing p))

theorem localModel_baseChange (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    (localModel t p).baseChange ℚ = selectedCurve t := by
  calc
    _ = (integerModel t).baseChange ℚ := by
      ext <;> simp [localModel, WeierstrassCurve.baseChange,
        ← IsScalarTower.algebraMap_apply ℤ (LocalRing p) ℚ]
    _ = selectedCurve t := integerModel_baseChange t

theorem integral_at_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    IsIntegral (LocalRing p) (selectedCurve t) := by
  rw [← localModel_baseChange t p]
  exact model_integral (LocalRing p) _

/-- The ONLY selected scales are 1 and 2, hence local units at odd primes. -/
theorem selected_scale_unit_at_odd (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] (hp2 : p ≠ 2) :
    localVal (LocalRing p) ((selectedChange t).u : ℚ) = 1 := by
  have h2 : localVal (LocalRing p) (2 : ℚ) = 1 := by
    rw [localVal_nat p 2 (by decide)]
    simp [Nat.prime_two.factorization, hp2, Ne.symm hp2]
  unfold selectedChange
  split_ifs
  · exact h2
  · exact h2
  · change localVal (LocalRing p) (1 : ℚ) = 1
    exact map_one _

/-- The SAME selected equation is minimal at every rational prime. -/
theorem minimal_at_prime (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    IsMinimal (LocalRing p) (selectedCurve t) := by
  by_cases hp2 : p = 2
  · subst p
    exact selected_minimal t
  · letI := FreyOddReduction.minimal_at_odd_prime t p hp2
    exact minimal_of_unit_scale (LocalRing p) t.freyCurve (selectedChange t)
      (integral_at_prime t p) (selected_scale_unit_at_odd t p hp2)

theorem good_at_odd (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (h : ¬ p ∣ t.a * t.b * t.c) :
    HasGoodReduction (LocalRing p) (selectedCurve t) :=
  good_of_unit_scale (LocalRing p) t.freyCurve (selectedChange t)
    (FreyOddReduction.good_at_odd_prime t p hp2 h)
    (integral_at_prime t p) (selected_scale_unit_at_odd t p hp2)

theorem multiplicative_at_odd (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (h : p ∣ t.a * t.b * t.c) :
    HasMultiplicativeReduction (LocalRing p) (selectedCurve t) :=
  multiplicative_of_unit_scale (LocalRing p) t.freyCurve (selectedChange t)
    (FreyOddReduction.multiplicative_at_odd_prime t p hp2 h)
    (integral_at_prime t p) (selected_scale_unit_at_odd t p hp2)

theorem selected_minimum_at_prime (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] :
    discriminantExponent (LocalRing p) (selectedCurve t) = minimumExponent t p :=
  (minimumExponent_eq t p (selectedChange t) (minimal_at_prime t p)).symm

/-- Exact removed discriminant factor; not a conductor or a radical. -/
def removedFactor (t : PrimitiveAdditiveTriple) : ℕ := if Descends t then 4096 else 1

theorem removedFactor_pos (t : PrimitiveAdditiveTriple) : 0 < removedFactor t := by
  unfold removedFactor
  split_ifs <;> norm_num

/-- Integer invariant equality before taking a natural absolute value. -/
theorem integer_delta_balance (t : PrimitiveAdditiveTriple) :
    (removedFactor t : ℤ) * (integerModel t).Δ = t.freyIntegralModel.Δ := by
  unfold integerModel
  split_ifs with hfirst heven
  · rw [removedFactor, if_pos (Or.inl hfirst)]
    exact FreyTwoSemistableChamber.delta_scaling (firstWitness t hfirst)
  · rw [removedFactor, if_pos (Or.inr heven)]
    exact FreyTwoEvenSummandChamber.delta_scaling (evenWitness t heven)
  · have hn : ¬ Descends t := fun h => h.elim hfirst heven
    simp only [removedFactor, if_neg hn, Nat.cast_one, one_mul]

theorem integer_delta_pos (t : PrimitiveAdditiveTriple) : 0 < (integerModel t).Δ := by
  have hr : (0 : ℤ) < t.freyIntegralModel.Δ := by
    rw [t.freyIntegralModel_Δ]
    have ha := t.a_pos
    have hb := t.b_pos
    have hc := t.c_pos
    positivity
  have hs : (0 : ℤ) < (removedFactor t : ℤ) := by
    exact_mod_cast removedFactor_pos t
  have he := integer_delta_balance t
  nlinarith

/-- The positive discriminant of the actual everywhere-minimal equation. -/
def minimalDiscriminant (t : PrimitiveAdditiveTriple) : ℕ := (integerModel t).Δ.natAbs

theorem minimalDiscriminant_pos (t : PrimitiveAdditiveTriple) : 0 < minimalDiscriminant t :=
  Int.natAbs_pos.mpr (ne_of_gt (integer_delta_pos t))

theorem minimalDiscriminant_cast (t : PrimitiveAdditiveTriple) :
    (minimalDiscriminant t : ℤ) = (integerModel t).Δ := by
  rw [minimalDiscriminant, Int.natCast_natAbs, abs_of_pos (integer_delta_pos t)]

theorem selected_delta_nat (t : PrimitiveAdditiveTriple) :
    (selectedCurve t).Δ = (minimalDiscriminant t : ℚ) := by
  rw [← integerModel_baseChange, WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ]
  exact_mod_cast (minimalDiscriminant_cast t).symm

/-- The genuine nonzero principal ideal of Z, not an abstract prime-support label. -/
def discriminantIdeal (t : PrimitiveAdditiveTriple) : Ideal ℤ :=
  Ideal.span {(minimalDiscriminant t : ℤ)}

theorem discriminantIdeal_eq (t : PrimitiveAdditiveTriple) :
    discriminantIdeal t = Ideal.span {(integerModel t).Δ} := by
  rw [discriminantIdeal, minimalDiscriminant_cast]

theorem discriminantIdeal_ne_bot (t : PrimitiveAdditiveTriple) :
    discriminantIdeal t ≠ ⊥ := by
  rw [discriminantIdeal_eq, ne_eq, Ideal.span_singleton_eq_bot]
  exact ne_of_gt (integer_delta_pos t)

/-- Every generator prime exponent is the OLD actual local minimum. -/
theorem factorization_eq_minimum (t : PrimitiveAdditiveTriple)
    (p : ℕ) [Fact p.Prime] :
    ((minimalDiscriminant t).factorization p : ℤ) = minimumExponent t p := by
  have h : discriminantExponent (LocalRing p) (selectedCurve t) =
      ((minimalDiscriminant t).factorization p : ℤ) := by
    rw [discriminantExponent, selected_delta_nat,
      localVal_nat p _ (Nat.ne_of_gt (minimalDiscriminant_pos t)),
      WithZero.log_exp, neg_neg]
  rw [← h]
  exact selected_minimum_at_prime t p

/-- This equality retains the source-product multiplicities and the fixed factor. -/
theorem discriminant_balance (t : PrimitiveAdditiveTriple) :
    removedFactor t * minimalDiscriminant t = 16 * (t.a * t.b * t.c)^2 := by
  have h := congrArg Int.natAbs (integer_delta_balance t)
  simpa only [Int.natAbs_mul, Int.natAbs_natCast, minimalDiscriminant,
    FreyOddReduction.raw_discriminant_natAbs] using h

/-- A raw discriminant divided by 4096 only on the proved descending domain. -/
theorem discriminant_formula (t : PrimitiveAdditiveTriple) :
    minimalDiscriminant t = if Descends t then (t.a * t.b * t.c / 16)^2
      else 16 * (t.a * t.b * t.c)^2 := by
  have he := discriminant_balance t
  by_cases hd : Descends t
  · rw [if_pos hd]
    have h16 : 16 ∣ t.a * t.b * t.c := by
      rcases hd with h | h
      · exact dvd_mul_of_dvd_right h.2 _
      · exact dvd_mul_of_dvd_left h.2 _
    obtain ⟨n, hn⟩ := h16
    simp only [removedFactor, if_pos hd] at he
    rw [hn] at he ⊢
    have hnDiv : 16 * n / 16 = n := by omega
    rw [hnDiv]
    nlinarith
  · simpa only [removedFactor, if_neg hd, one_mul] using he


/-- A structural square identity does not make the discriminant squarefree. -/
theorem discriminant_is_square (t : PrimitiveAdditiveTriple) :
    ∃ n : ℕ, minimalDiscriminant t = n^2 := by
  rw [discriminant_formula]
  by_cases hd : Descends t
  · exact ⟨t.a * t.b * t.c / 16, by simp only [if_pos hd]⟩
  · refine ⟨4 * (t.a * t.b * t.c), ?_⟩
    simp only [if_neg hd]
    ring

/-- Multiplicative bounds, with no truncated rational division. -/
theorem discriminant_size_bounds (t : PrimitiveAdditiveTriple) :
    (t.a * t.b * t.c)^2 ≤ 256 * minimalDiscriminant t ∧
      minimalDiscriminant t ≤ 16 * (t.a * t.b * t.c)^2 := by
  have he := discriminant_balance t
  by_cases hd : Descends t <;> simp [removedFactor, hd] at he <;>
    constructor <;> nlinarith

/-- Even for a composite slot p this balance is an exact Nat.factorization identity. -/
theorem factorization_balance (t : PrimitiveAdditiveTriple) (p : ℕ) :
    (minimalDiscriminant t).factorization p +
      (if Descends t then 12 else 0) * (2 : ℕ).factorization p =
        2 * (t.a * t.b * t.c).factorization p + 4 * (2 : ℕ).factorization p := by
  have he := congrArg (fun n : ℕ => n.factorization p) (discriminant_balance t)
  rw [Nat.factorization_mul (Nat.ne_of_gt (removedFactor_pos t))
      (Nat.ne_of_gt (minimalDiscriminant_pos t)),
    Nat.factorization_mul (by decide) (pow_ne_zero 2 (Nat.ne_of_gt t.product_pos))] at he
  have hs : (removedFactor t).factorization p =
      (if Descends t then 12 else 0) * (2 : ℕ).factorization p := by
    unfold removedFactor
    split_ifs
    · rw [show (4096 : ℕ) = 2^12 by norm_num]
      simp [Nat.factorization_pow, Finsupp.smul_apply, smul_eq_mul]
    · simp
  rw [show (16 : ℕ) = 2^4 by norm_num] at he
  simp only [Finsupp.add_apply, hs, Nat.factorization_pow,
    Finsupp.smul_apply, smul_eq_mul] at he
  omega

theorem odd_depth (t : PrimitiveAdditiveTriple) (p : ℕ) (hp2 : p ≠ 2) :
    (minimalDiscriminant t).factorization p = 2 * (t.a * t.b * t.c).factorization p := by
  have he := factorization_balance t p
  simpa [Nat.prime_two.factorization, hp2, Ne.symm hp2] using he

theorem two_depth_balance (t : PrimitiveAdditiveTriple) :
    (minimalDiscriminant t).factorization 2 + (if Descends t then 12 else 0) =
      4 + 2 * (t.a * t.b * t.c).factorization 2 := by
  simpa [Nat.prime_two.factorization] using factorization_balance t 2

/-- The ONLY support loss is prime two on the established good-reduction branch. -/
theorem prime_dvd_iff (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime] :
    p ∣ minimalDiscriminant t ↔ p ∣ t.a * t.b * t.c ∧
      ¬ (p = 2 ∧ Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4) := by
  have hp : p.Prime := Fact.out
  rw [hp.dvd_iff_one_le_factorization (Nat.ne_of_gt (minimalDiscriminant_pos t)),
    hp.dvd_iff_one_le_factorization (Nat.ne_of_gt t.product_pos)]
  by_cases hp2 : p = 2
  · subst p
    have hb := two_depth_balance t
    have hlo := source_depth_pos t
    by_cases hd : Descends t <;> simp [hd] at hb ⊢ <;> omega
  · rw [odd_depth t p hp2]
    simp only [hp2, false_and, not_false_eq_true, and_true]
    omega

/-- Exact complete finite support; no bounded prime test set occurs. -/
theorem support_formula (t : PrimitiveAdditiveTriple) :
    occupied (minimalDiscriminant t) =
      if Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4 then
        (occupied (t.a * t.b * t.c)).erase 2 else occupied (t.a * t.b * t.c) := by
  ext p
  by_cases hp : p.Prime
  · letI : Fact p.Prime := ⟨hp⟩
    rw [mem_occupied_iff _ _ (Nat.ne_of_gt (minimalDiscriminant_pos t))]
    simp only [hp, true_and, prime_dvd_iff]
    by_cases hg : Descends t ∧ (t.a * t.b * t.c).factorization 2 = 4
    · rw [if_pos hg, Finset.mem_erase, mem_occupied_iff _ _ (Nat.ne_of_gt t.product_pos)]
      simp only [hp, true_and]
      constructor
      · rintro ⟨hP, hn⟩
        exact ⟨fun h2 => hn ⟨h2, hg⟩, hP⟩
      · rintro ⟨h2, hP⟩
        exact ⟨hP, fun hh => h2 hh.1⟩
    · rw [if_neg hg, mem_occupied_iff _ _ (Nat.ne_of_gt t.product_pos)]
      simp only [hp, true_and]
      exact ⟨And.left, fun hP => ⟨hP, fun hh => hg hh.2⟩⟩
  · have hD := mem_occupied_iff (minimalDiscriminant t) p
      (Nat.ne_of_gt (minimalDiscriminant_pos t))
    have hP := mem_occupied_iff (t.a * t.b * t.c) p (Nat.ne_of_gt t.product_pos)
    split_ifs <;> simp [Finset.mem_erase, hD, hP, hp]

/-- Exact global budget. The left correction is the OLD modelCorrectionCost,
not source excess, a conductor term, or the inverse cost of a section map. -/
theorem logarithmic_budget (t : PrimitiveAdditiveTriple) :
    Real.log (minimalDiscriminant t : ℝ) + modelCorrectionCost t =
      Real.log 16 + 2 * Real.log (t.a * t.b * t.c : ℕ) := by
  have hD : (0 : ℝ) < (minimalDiscriminant t : ℝ) := by
    exact_mod_cast minimalDiscriminant_pos t
  have hP : (0 : ℝ) < (t.a * t.b * t.c : ℕ) := by exact_mod_cast t.product_pos
  have hs : (0 : ℝ) < (removedFactor t : ℝ) := by exact_mod_cast removedFactor_pos t
  have he : (removedFactor t : ℝ) * (minimalDiscriminant t : ℝ) =
      16 * (t.a * t.b * t.c : ℕ)^2 := by exact_mod_cast discriminant_balance t
  have hl := congrArg Real.log he
  rw [Real.log_mul (ne_of_gt hs) (ne_of_gt hD),
    Real.log_mul (by norm_num) (pow_ne_zero 2 (ne_of_gt hP)), Real.log_pow] at hl
  have hc : Real.log (removedFactor t : ℝ) = modelCorrectionCost t := by
    unfold modelCorrectionCost
    rw [correction_formula]
    by_cases hd : Descends t
    · simp only [removedFactor, if_pos hd, Nat.cast_ofNat, Int.cast_ofNat]
      rw [show (4096 : ℝ) = 2^12 by norm_num, Real.log_pow]
      norm_num
    · simp [removedFactor, hd]
  rw [hc] at hl
  simpa only [Nat.cast_ofNat, add_comm] using hl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyGlobalMinimalDiscriminant
