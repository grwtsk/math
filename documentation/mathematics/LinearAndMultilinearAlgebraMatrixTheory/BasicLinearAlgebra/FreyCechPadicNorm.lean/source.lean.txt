/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Rational finite-place max norms of the SAME weighted minimum-lattice map.
The target difference frame is proved p-adically isometric. The sharp
inverse factor is the norm of 1/(12|ab|^k), not the cokernel cardinality.
No completed Q_p operator, intrinsic integral H0, conductor, or source-height
upper bound is constructed. Previous modules and norm instances are untouched.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Proof scripts unelaborated.
-/
import GRWTSK.NumberTheory.Padics.WeightedPermutationNorm
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPrimeBudget

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm

open FreyWeightedBasis FreyCechWeightedMinimum
open GRWTSK.LinearAlgebra.ThreeCellWeightedMinimum
open GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
open GRWTSK.NumberTheory.Padics
open GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess
open scoped BigOperators

abbrev Slot (k : ℕ) := Slots (Index k)
abbrev RationalData (k : ℕ) := Reduced (Index k → ℚ)

local instance slotsNonempty (k : ℕ) : Nonempty (Slot k) :=
  ⟨(Sum.inl ⟨0, Nat.zero_lt_succ k⟩, 0)⟩

/-- Original target fields: sum and all THREE mismatch coordinates. -/
def rawCoordinates (k : ℕ) (r : RationalData k) : Slot k → ℚ :=
  fun s => ![r.1 s.1, r.2 0 s.1, r.2 1 s.1, r.2 2 s.1] s.2

/-- Rational extension of the previous integral difference frame, not a fitted metric. -/
def frameQ (k : ℕ) : RationalData k ≃ₗ[ℚ] (Slot k → ℚ) where
  toFun r s := ![r.1 s.1, r.2 0 s.1, r.2 1 s.1-r.2 0 s.1,
    r.2 2 s.1-r.2 0 s.1] s.2
  invFun q := (fun i => q (i,0), fun j i =>
    ![q (i,1), q (i,1)+q (i,2), q (i,1)+q (i,3)] j)
  left_inv r := by
    apply Prod.ext
    · rfl
    · funext j i
      fin_cases j <;> simp
  right_inv q := by funext s; rcases s with ⟨i,j⟩; fin_cases j <;> simp
  map_add' u v := by funext s; rcases s with ⟨i,j⟩; fin_cases j <;> simp <;> ring
  map_smul' c r := by funext s; rcases s with ⟨i,j⟩; fin_cases j <;> simp <;> ring

/-- Minimum-admissible source parameters are extended BEFORE the weighted map. -/
def minimumQ (k : ℕ) (q : Slot k → ℚ) : RationalData k :=
  (fun i => 3*q (i,0), fun j i =>
    ![q (i,1),q (i,1)+4*q (i,2),q (i,1)+4*q (i,3)] j)

def reducedPortQ (a b : ℤ) (k : ℕ) (r : RationalData k) : RationalData k :=
  (WeightedPermutationNorm.transport (FreyWeightedLattice.reverse k)
    (FreyWeightedLattice.weight (a*b) k) r.1,
   fun j => WeightedPermutationNorm.transport (FreyWeightedLattice.reverse k)
    (FreyWeightedLattice.weight (a*b) k) (r.2 j))

def combinedQ (a b : ℤ) (k : ℕ) (q : Slot k → ℚ) : RationalData k :=
  reducedPortQ a b k (minimumQ k q)

def weights (a b : ℤ) (k : ℕ) : Slot k → ℤ :=
  combinedWeight (FreyWeightedLattice.weight (a*b) k)

def permutation (k : ℕ) : Equiv.Perm (Slot k) := slotPerm (FreyWeightedLattice.reverse k)

/-- Same composite on every integral parameter, with every target field retained. -/
theorem combinedQ_integer (a b : ℤ) (k : ℕ) (q : Parameters k) :
    combinedQ a b k (fun s => (q s : ℚ)) =
      (fun i => ((combinedMap a b k q).1 i : ℚ),
       fun j i => ((combinedMap a b k q).2 j i : ℚ)) := by
  apply Prod.ext
  · funext i
    simp [combinedQ, reducedPortQ, minimumQ, combinedMap, composite,
      reducedPort, minimumData, WeightedPermutationNorm.transport,
      GRWTSK.LinearAlgebra.WeightedPermutationIntegral.transport]
  · funext j i
    fin_cases j <;>
      simp [combinedQ, reducedPortQ, minimumQ, combinedMap, composite,
        reducedPort, minimumData, WeightedPermutationNorm.transport,
        GRWTSK.LinearAlgebra.WeightedPermutationIntegral.transport] <;> ring

/-- Whole-rational-space comparison, independently of bounded test vectors. -/
theorem frame_combinedQ (a b : ℤ) (k : ℕ) (q : Slot k → ℚ) :
    frameQ k (combinedQ a b k q) =
      WeightedPermutationNorm.transport (permutation k) (weights a b k) q := by
  funext s
  rcases s with ⟨i,j⟩
  fin_cases j <;> simp [frameQ, combinedQ, reducedPortQ, minimumQ,
    WeightedPermutationNorm.transport, weights, combinedWeight, baseWeight,
    permutation, slotPerm] <;> ring

theorem weights_ne_zero (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    ∀ s : Slot k, weights a b k s ≠ 0 := by
  rintro ⟨i,j⟩
  apply mul_ne_zero (FreyWeightedCokernel.weight_ne_zero (a*b) hab k i)
  fin_cases j <;> norm_num [baseWeight]

/-- Recover the SAME minimum parameters; no inverse of a zero column is admitted. -/
def inverseQ (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) : Slot k → ℚ :=
  WeightedPermutationNorm.inverse (permutation k) (weights a b k)
    (weights_ne_zero a b hab k) (frameQ k r)

@[simp] theorem inverseQ_combinedQ (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ)
    (q : Slot k → ℚ) : inverseQ a b hab k (combinedQ a b k q) = q := by
  unfold inverseQ
  rw [frame_combinedQ, WeightedPermutationNorm.inverse_transport]

@[simp] theorem combinedQ_inverseQ (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ)
    (r : RationalData k) : combinedQ a b k (inverseQ a b hab k r) = r := by
  apply (frameQ k).injective
  rw [frame_combinedQ]
  exact WeightedPermutationNorm.transport_inverse _ _ _ _

section LocalNorm
variable (p : ℕ) [Fact p.Prime]

/-- Source and target use unsquared rational p-adic max norms. -/
def targetNorm (k : ℕ) (r : RationalData k) : ℚ :=
  WeightedPermutationNorm.supNorm p (rawCoordinates k r)

/-- The integral difference frame and its inverse have unit local distortion. -/
theorem frame_isometry (k : ℕ) (r : RationalData k) :
    WeightedPermutationNorm.supNorm p (frameQ k r) = targetNorm p k r := by
  apply le_antisymm
  · apply (WeightedPermutationNorm.supNorm_le_iff p _ _).mpr
    rintro ⟨i,j⟩
    have h0 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,0)
    have h1 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,1)
    have h2 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,2)
    have h3 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,3)
    fin_cases j
    · exact h0
    · exact h1
    · exact padicNorm.sub.trans (max_le h2 h1)
    · exact padicNorm.sub.trans (max_le h3 h1)
  · apply (WeightedPermutationNorm.supNorm_le_iff p _ _).mpr
    rintro ⟨i,j⟩
    have h0 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,0)
    have h1 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,1)
    have h2 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,2)
    have h3 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,3)
    fin_cases j
    · exact h0
    · exact h1
    · have hs : r.2 1 i = frameQ k r (i,1) + frameQ k r (i,2) := by simp [frameQ]
      change padicNorm p (r.2 1 i) ≤ _
      rw [hs]
      exact padicNorm.nonarchimedean.trans (max_le h1 h2)
    · have hs : r.2 2 i = frameQ k r (i,1) + frameQ k r (i,3) := by simp [frameQ]
      change padicNorm p (r.2 2 i) ≤ _
      rw [hs]
      exact padicNorm.nonarchimedean.trans (max_le h1 h3)

/-- Universal inverse estimate on the actual raw reduced target. -/
def InverseBound (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) : Prop :=
  ∀ r, WeightedPermutationNorm.supNorm p (inverseQ a b hab k r) ≤ B * targetNorm p k r

theorem inverse_bound_columns (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    InverseBound p a b hab k B ↔
      ∀ s, padicNorm p (1 / (weights a b k s : ℚ)) ≤ B := by
  rw [← WeightedPermutationNorm.inverse_bound_iff p (permutation k)
    (weights a b k) (weights_ne_zero a b hab k) B]
  constructor
  · intro h u
    have hr := h ((frameQ k).symm u)
    have hn : targetNorm p k ((frameQ k).symm u) = WeightedPermutationNorm.supNorm p u := by
      rw [← frame_isometry, LinearEquiv.apply_symm_apply]
    simpa only [inverseQ, LinearEquiv.apply_symm_apply, hn] using hr
  · intro h r
    have hr := h (frameQ k r)
    simpa only [inverseQ, frame_isometry] using hr

/-- Norm of the RECIPROCAL clearing integer; it is not the norm of the index. -/
def inverseFactor (a b : ℤ) (k : ℕ) : ℚ :=
  padicNorm p (1 / (FreyCechPrimeBudget.clearing a b k : ℚ))

private theorem signed_clearing_norm (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    padicNorm p (1 / ((12 * (-(a*b))^k : ℤ) : ℚ)) = inverseFactor p a b k := by
  have hz : (12 * (-(a*b))^k : ℤ) ≠ 0 :=
    mul_ne_zero (by norm_num) (pow_ne_zero _ (neg_ne_zero.mpr hab))
  rw [WeightedPermutationNorm.inverse_int_norm p _ hz, inverseFactor,
    WeightedPermutationNorm.inverse_nat_norm p _ (FreyCechPrimeBudget.clearing_ne_zero a b hab k)]
  simp [FreyCechPrimeBudget.clearing]

/-- Every column divides the full clearing integer, including the base factors 3 and 4. -/
private theorem weight_dvd_clearing (a b : ℤ) (k : ℕ) (s : Slot k) :
    weights a b k s ∣ 12 * (-(a*b))^k := by
  have hb : baseWeight s.2 ∣ (12 : ℤ) := by
    rcases s with ⟨i,j⟩
    fin_cases j <;> norm_num [baseWeight]
  have hw := FreyWeightedLattice.weight_dvd_power (a*b) k s.1
  simpa only [weights, combinedWeight, mul_comm] using mul_dvd_mul hw hb

/-- Sharpness comes from the TWO actual top-weight chart columns, via 1/3-1/4=1/12. -/
theorem inverse_bound_iff (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (B : ℚ) :
    InverseBound p a b hab k B ↔ inverseFactor p a b k ≤ B := by
  rw [inverse_bound_columns]
  constructor
  · intro h
    let i : Index k := Sum.inl ⟨k, Nat.lt_succ_self k⟩
    have h3 : padicNorm p (1 / ((3 * (-(a*b))^k : ℤ) : ℚ)) ≤ B := by
      simpa [i, weights, combinedWeight, baseWeight, FreyWeightedLattice.weight, mul_comm]
        using h (i,0)
    have h4 : padicNorm p (1 / ((4 * (-(a*b))^k : ℤ) : ℚ)) ≤ B := by
      simpa [i, weights, combinedWeight, baseWeight, FreyWeightedLattice.weight, mul_comm]
        using h (i,2)
    have hn := (WeightedPermutationNorm.inverse_twelve_le_max p ((-(a*b))^k)
      (pow_ne_zero _ (neg_ne_zero.mpr hab))).trans (max_le h3 h4)
    rwa [signed_clearing_norm p a b hab k] at hn
  · intro h s
    have hz : (12 * (-(a*b))^k : ℤ) ≠ 0 :=
      mul_ne_zero (by norm_num) (pow_ne_zero _ (neg_ne_zero.mpr hab))
    have hn := WeightedPermutationNorm.inverse_norm_le_of_dvd p (weights a b k s)
      (12 * (-(a*b))^k) hz (weight_dvd_clearing a b k s)
    rw [signed_clearing_norm p a b hab k] at hn
    exact hn.trans h

/-- Actual p-adic norm converted into the already source-bound prime-depth budget. -/
theorem inverseFactor_depth (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    inverseFactor p a b k = (p : ℚ) ^
      ((12 : ℕ).factorization p + k * (a*b).natAbs.factorization p) := by
  rw [inverseFactor, WeightedPermutationNorm.inverse_nat_norm p _
    (FreyCechPrimeBudget.clearing_ne_zero a b hab k),
    FreyCechPrimeBudget.clearing_factorization a b hab k p]

/-- The actual rational map is nonexpanding forward; no inverse integrality follows. -/
theorem forward_nonexpanding (a b : ℤ) (k : ℕ) (q : Slot k → ℚ) :
    targetNorm p k (combinedQ a b k q) ≤ WeightedPermutationNorm.supNorm p q := by
  rw [← frame_isometry, frame_combinedQ]
  simpa only [one_mul] using WeightedPermutationNorm.transport_nonexpanding p
    (permutation k) (weights a b k) q

/-- The forward factor one is SHARP, including the grade-zero case. -/
theorem forward_bound_iff (a b : ℤ) (k : ℕ) (B : ℚ) :
    (∀ q, targetNorm p k (combinedQ a b k q) ≤
      B * WeightedPermutationNorm.supNorm p q) ↔ (1 : ℚ) ≤ B := by
  simp_rw [← frame_isometry p, frame_combinedQ]
  change WeightedPermutationNorm.OperatorBound p
    (WeightedPermutationNorm.transport (permutation k) (weights a b k)) B ↔ _
  rw [WeightedPermutationNorm.transport_bound_iff]
  constructor
  · intro h
    have hi := h (Sum.inl ⟨0, Nat.zero_lt_succ k⟩, 1)
    simpa [weights, combinedWeight, baseWeight, FreyWeightedLattice.weight,
      padicNorm.one] using hi
  · intro h s
    exact (padicNorm.of_int (weights a b k s)).trans h

/-- A concrete all-target estimate, attached to the same rational inverse. -/
theorem inverse_estimate (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) (r : RationalData k) :
    WeightedPermutationNorm.supNorm p (inverseQ a b hab k r) ≤
      inverseFactor p a b k * targetNorm p k r :=
  (inverse_bound_iff p a b hab k _).mpr le_rfl r

/-- Outside the exact clearing support the local factor is one, not an omitted cost. -/
theorem inverseFactor_off_support (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ)
    (hp : p ∉ occupied (FreyCechPrimeBudget.clearing a b k)) :
    inverseFactor p a b k = 1 := by
  have hz : (FreyCechPrimeBudget.clearing a b k).factorization p = 0 :=
    Finsupp.notMem_support_iff.mp hp
  rw [inverseFactor, WeightedPermutationNorm.inverse_nat_norm p _
    (FreyCechPrimeBudget.clearing_ne_zero a b hab k), hz, pow_zero]

/-- The normalized local inverse cost, in logarithmic rather than squared-energy convention. -/
theorem log_inverseFactor (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    Real.log (inverseFactor p a b k : ℝ) =
      ((FreyCechPrimeBudget.clearing a b k).factorization p : ℝ) * Real.log (p : ℝ) := by
  rw [inverseFactor, WeightedPermutationNorm.inverse_nat_norm p _
    (FreyCechPrimeBudget.clearing_ne_zero a b hab k)]
  simp only [Rat.cast_pow, Rat.cast_natCast, Real.log_pow]

/-- Positive local inverse cost agrees with log, because its depth is nonnegative. -/
theorem log_inverseFactor_nonneg (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    0 ≤ Real.log (inverseFactor p a b k : ℝ) := by
  rw [log_inverseFactor p a b hab k]
  exact mul_nonneg (Nat.cast_nonneg _) (Real.log_natCast_nonneg p)

end LocalNorm

/-- A finite sum over the ACTUAL occupied support; not all number-field places. -/
def finiteInverseCost (a b : ℤ) (k : ℕ) : ℝ :=
  ∑ p ∈ occupied (FreyCechPrimeBudget.clearing a b k),
    Real.log (inverseFactor p a b k : ℝ)

/-- Summing the proved local factors recovers the clearing budget, NOT the index budget. -/
theorem finiteInverseCost_eq (a b : ℤ) (hab : a*b ≠ 0) (k : ℕ) :
    finiteInverseCost a b k = Real.log 12 +
      (k : ℝ) * Real.log ((a*b).natAbs : ℝ) := by
  rw [← FreyCechPrimeBudget.clearing_log a b hab k,
    Real.log_nat_eq_sum_factorization]
  change (∑ p ∈ occupied (FreyCechPrimeBudget.clearing a b k),
    Real.log (inverseFactor p a b k : ℝ)) =
    ∑ p ∈ occupied (FreyCechPrimeBudget.clearing a b k),
      ((FreyCechPrimeBudget.clearing a b k).factorization p : ℝ) * Real.log (p : ℝ)
  apply Finset.sum_congr rfl
  intro p hp
  have hprime := ((mem_occupied_iff _ p (FreyCechPrimeBudget.clearing_ne_zero a b hab k)).mp hp).1
  letI : Fact (Nat.Prime p) := ⟨hprime⟩
  exact log_inverseFactor p a b hab k

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPadicNorm
