/-
Exact positive periods, complete finite cycles and divisor counts
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d
Organized SHA-256: 8d17dbad43e6fb33f3d0f00bbb7326191c7219c4bfa3efa54fd9c4222b0e332a
PMD: 510.1.030.010.050.020 fixed point counting (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- All exact positive-period predicates/Decidable instance/minimal-period comparison proofs retain all positivity, return and minimality premises, including zero conventions. Complete restricted permutation/orbit decomposition and ZMod cardinality proof stay with every private helper and consumer; no private cross-file name is invented. Every copied hypothesis/private modifier and proof body is unchanged; only a shared variant containing namespace and explicit same-source imports differ. -/

import BitMatrix.Algebra.Symmetry
import DAF.FiniteDynamics.Permutation
import Mathlib.Dynamics.PeriodicPts.Lemmas
import Mathlib.Data.ZMod.QuotientGroup
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finsupp.Defs

/-!
# Exact cycle data for finite Boolean dynamics

For a state permutation `H`, `fixedPointCount H r` counts states fixed by the
iterate `H ^ r`.  Those states split disjointly according to their exact
positive period.  Exact-period points occur in complete cycles of that period,
so division by the period defines the primitive cycle count.

Möbius inversion recovers primitive cycle counts from fixed-point counts.  The
finitely supported `cycleEulerFactorData` introduced below is exact finite
Euler-product exponent data; there is no analytic convergence question.

Conjugacy implies equal orbit and cycle structure.  Cycle structure does not,
however, imply SAC, independence of derivative bits, or low differential
concentration.  Those remain separate properties of the avalanche layer.
-/

namespace GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open BitMatrix.Network.Permutation
open BitMatrix.Algebra.Symmetry
open scoped BigOperators

/-- A state has exact period `r` when `r` is its first positive return time. -/
def HasExactPeriod {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) : Prop :=
  0 < r ∧
  (H ^ r) x = x ∧
  ∀ d, 0 < d → d < r → (H ^ d) x ≠ x

/-!
The bounded `Fin r` formulation below makes exact-period membership
computable, while `HasExactPeriod` retains the direct mathematical API.
-/

instance hasExactPeriodDecidable {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) : Decidable (HasExactPeriod H r x) := by
  let P : Prop :=
    0 < r ∧ (H ^ r) x = x ∧
      ∀ d : Fin r, 0 < d.val → (H ^ d.val) x ≠ x
  have hiff : P ↔ HasExactPeriod H r x := by
    constructor
    · rintro ⟨hr, hfix, hmin⟩
      refine ⟨hr, hfix, ?_⟩
      intro d hd hlt
      exact hmin ⟨d, hlt⟩ hd
    · rintro ⟨hr, hfix, hmin⟩
      refine ⟨hr, hfix, ?_⟩
      intro d hd
      exact hmin d.val hd d.isLt
  exact decidable_of_iff P hiff

/-- The finite set of states whose exact period is `r`. -/
def exactPeriodPoints {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Finset (Bits n) :=
  Finset.univ.filter fun x => HasExactPeriod H r x

/-- Number of states whose exact period is `r`. -/
def exactPeriodCount {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Nat :=
  (exactPeriodPoints H r).card

theorem mem_exactPeriodPoints_iff {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    x ∈ exactPeriodPoints H r ↔ HasExactPeriod H r x := by
  simp [exactPeriodPoints]

@[simp]
theorem exactPeriodPoints_zero {n : Nat} (H : BitPerm n) :
    exactPeriodPoints H 0 = ∅ := by
  ext x
  simp [exactPeriodPoints, HasExactPeriod]

@[simp]
theorem exactPeriodCount_zero {n : Nat} (H : BitPerm n) :
    exactPeriodCount H 0 = 0 := by
  simp [exactPeriodCount]

/-- Exact-period points are fixed by the corresponding iterate. -/
theorem exactPeriodPoints_subset_fixedPoints {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    exactPeriodPoints H r ⊆ fixedPoints H r := by
  have _hr : 0 < r := hr
  intro x hx
  exact (mem_fixedPoints_iff H r x).2
    ((mem_exactPeriodPoints_iff H r x).1 hx).2.1

private theorem isPeriodicPt_iff_pow_apply {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    Function.IsPeriodicPt H r x ↔ (H ^ r) x = x := by
  rfl

/-- The explicit exact-period predicate agrees with Mathlib's minimal period. -/
theorem hasExactPeriod_iff_minimalPeriod_eq {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    HasExactPeriod H r x ↔ Function.minimalPeriod H x = r := by
  constructor
  · rintro ⟨hr, hfixed, hminimal⟩
    have hperiodic : Function.IsPeriodicPt H r x :=
      (isPeriodicPt_iff_pow_apply H r x).2 hfixed
    have hmin_le : Function.minimalPeriod H x ≤ r :=
      hperiodic.minimalPeriod_le hr
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      hperiodic.minimalPeriod_pos hr
    apply Nat.le_antisymm hmin_le
    by_contra hnot
    have hlt : Function.minimalPeriod H x < r := by omega
    exact hminimal (Function.minimalPeriod H x) hmin_pos hlt
      ((isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x))
  · intro hmin
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
    refine ⟨hmin ▸ hmin_pos, ?_, ?_⟩
    · rw [← hmin]
      exact (isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x)
    · intro d hd_pos hd_lt hd_fixed
      have hperiodic : Function.IsPeriodicPt H d x :=
        (isPeriodicPt_iff_pow_apply H d x).2 hd_fixed
      have hdvd : r ∣ d := by
        rw [← hmin]
        exact hperiodic.minimalPeriod_dvd
      exact (Nat.not_le_of_lt hd_lt) (Nat.le_of_dvd hd_pos hdvd)

/-- The exact period divides every positive return time. -/
theorem exactPeriod_dvd_of_fixed {n : Nat}
    (H : BitPerm n)
    {r k : Nat}
    {x : Bits n}
    (hexact : HasExactPeriod H r x)
    (hk : 0 < k)
    (hfixed : (H ^ k) x = x) :
    r ∣ k := by
  have _hk : 0 < k := hk
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hexact
  rw [← hexact]
  exact ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd

/-- A positive-time fixed point has one exact period dividing that time. -/
theorem mem_fixedPoints_iff_exists_exactPeriod {n : Nat}
    (H : BitPerm n)
    {k : Nat}
    (hk : 0 < k)
    (x : Bits n) :
    x ∈ fixedPoints H k ↔
      ∃ r ∈ k.divisors, x ∈ exactPeriodPoints H r := by
  constructor
  · intro hx
    have hfixed := (mem_fixedPoints_iff H k x).1 hx
    let r := Function.minimalPeriod H x
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hr_pos : 0 < r :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
    have hr_dvd : r ∣ k :=
      ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd
    refine ⟨r, Nat.mem_divisors.2 ⟨hr_dvd, hk.ne'⟩, ?_⟩
    exact (mem_exactPeriodPoints_iff H r x).2
      ((hasExactPeriod_iff_minimalPeriod_eq H r x).2 rfl)
  · rintro ⟨r, hr_mem, hx⟩
    have hexact := (mem_exactPeriodPoints_iff H r x).1 hx
    have hr_dvd : r ∣ k := Nat.dvd_of_mem_divisors hr_mem
    obtain ⟨q, rfl⟩ := hr_dvd
    apply (mem_fixedPoints_iff H (r * q) x).2
    exact (isPeriodicPt_iff_pow_apply H (r * q) x).1
      (((isPeriodicPt_iff_pow_apply H r x).2 hexact.2.1).mul_const q)

/-- Different exact periods define disjoint state sets. -/
theorem exactPeriodPoints_disjoint {n : Nat}
    (H : BitPerm n)
    {r s : Nat}
    (hrs : r ≠ s) :
    Disjoint (exactPeriodPoints H r) (exactPeriodPoints H s) := by
  rw [Finset.disjoint_left]
  intro x hxr hxs
  have hr := (hasExactPeriod_iff_minimalPeriod_eq H r x).1
    ((mem_exactPeriodPoints_iff H r x).1 hxr)
  have hs := (hasExactPeriod_iff_minimalPeriod_eq H s x).1
    ((mem_exactPeriodPoints_iff H s x).1 hxs)
  exact hrs (hr.symm.trans hs)

private theorem fixedPoints_eq_biUnion_exactPeriodPoints {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPoints H r = r.divisors.biUnion (exactPeriodPoints H) := by
  ext x
  rw [Finset.mem_biUnion]
  exact mem_fixedPoints_iff_exists_exactPeriod H hr x

/-- Fixed points split as a disjoint union over exact periods dividing `r`. -/
theorem fixedPointCount_eq_sum_exactPeriodCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, exactPeriodCount H d := by
  classical
  unfold fixedPointCount exactPeriodCount
  rw [fixedPoints_eq_biUnion_exactPeriodPoints H hr]
  rw [Finset.card_biUnion]
  intro a ha b hb hab
  exact exactPeriodPoints_disjoint H hab

/-! ## Complete exact-period orbits -/

private abbrev ExactPoint {n : Nat} (H : BitPerm n) (r : Nat) :=
  {x : Bits n // x ∈ exactPeriodPoints H r}

private theorem hasExactPeriod_apply {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    {x : Bits n}
    (hx : HasExactPeriod H r x) :
    HasExactPeriod H r (H x) := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hx ⊢
  have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
  rw [Function.minimalPeriod_apply hmem]
  exact hx

private theorem hasExactPeriod_symm_apply {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    {x : Bits n}
    (hx : HasExactPeriod H r x) :
    HasExactPeriod H r (H.symm x) := by
  rw [hasExactPeriod_iff_minimalPeriod_eq] at hx ⊢
  have hmem : H.symm x ∈ Function.periodicPts H :=
    H.injective.mem_periodicPts (H.symm x)
  have hperiod := Function.minimalPeriod_apply (f := H) hmem
  have hperiod' :
      Function.minimalPeriod H x = Function.minimalPeriod H (H.symm x) := by
    simpa using hperiod
  exact hperiod'.symm.trans hx

private def exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    (r : Nat) : Equiv.Perm (ExactPoint H r) where
  toFun x := ⟨H x, (mem_exactPeriodPoints_iff H r (H x)).2 <|
    hasExactPeriod_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  invFun x := ⟨H.symm x, (mem_exactPeriodPoints_iff H r (H.symm x)).2 <|
    hasExactPeriod_symm_apply H
      ((mem_exactPeriodPoints_iff H r x).1 x.property)⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

@[simp]
private theorem exactPeriodPerm_apply_val {n : Nat}
    (H : BitPerm n)
    (r : Nat)
    (x : ExactPoint H r) :
    (exactPeriodPerm H r x).val = H x.val :=
  rfl

private theorem exactPeriodPerm_pow_apply_val {n : Nat}
    (H : BitPerm n)
    (r k : Nat)
    (x : ExactPoint H r) :
    (((exactPeriodPerm H r) ^ k) x).val = (H ^ k) x.val := by
  induction k generalizing x with
  | zero => rfl
  | succ k ih =>
      rw [pow_succ, pow_succ, Equiv.Perm.mul_apply, Equiv.Perm.mul_apply]
      exact ih (exactPeriodPerm H r x)

private theorem minimalPeriod_exactPeriodPerm {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (x : ExactPoint H r) :
    Function.minimalPeriod (exactPeriodPerm H r) x = r := by
  have horiginal : Function.minimalPeriod H x.val = r :=
    (hasExactPeriod_iff_minimalPeriod_eq H r x).1
      ((mem_exactPeriodPoints_iff H r x).1 x.property)
  have hrestricted :
      Function.minimalPeriod (exactPeriodPerm H r) x =
        Function.minimalPeriod H x.val := by
    apply (Function.minimalPeriod_eq_minimalPeriod_iff).2
    intro k
    constructor
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x) at h
      apply (isPeriodicPt_iff_pow_apply H k x).2
      have hval := congrArg Subtype.val h
      rw [exactPeriodPerm_pow_apply_val] at hval
      exact hval
    · intro h
      change (((exactPeriodPerm H r) ^ k) x = x)
      apply Subtype.ext
      rw [exactPeriodPerm_pow_apply_val]
      exact (isPeriodicPt_iff_pow_apply H k x).1 h
  exact hrestricted.trans horiginal

/-- Exact-period points decompose into genuine cycles of length `r`. -/
theorem exactPeriodCount_dvd {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    r ∣ exactPeriodCount H r := by
  letI : NeZero r := ⟨hr.ne'⟩
  let X := ExactPoint H r
  let P : Equiv.Perm X := exactPeriodPerm H r
  let G := Subgroup.zpowers P
  let Ω := Quotient (MulAction.orbitRel G X)
  letI : Fintype Ω := Fintype.ofFinite Ω
  let orbitDecomposition : X ≃ Σ ω : Ω, MulAction.orbit G ω.out :=
    MulAction.selfEquivSigmaOrbits G X
  let orbitCoordinates :
      (Σ ω : Ω, MulAction.orbit G ω.out) ≃ Σ _ω : Ω, ZMod r :=
    Equiv.sigmaCongrRight fun ω =>
      (MulAction.orbitZPowersEquiv P ω.out).trans
        (Equiv.cast (congrArg ZMod (by
          change Function.minimalPeriod P ω.out = r
          exact minimalPeriod_exactPeriodPerm H ω.out)))
  have hcard : Fintype.card X = Fintype.card (Σ _ω : Ω, ZMod r) :=
    Fintype.card_congr (orbitDecomposition.trans orbitCoordinates)
  have hcard' : Fintype.card X = Fintype.card Ω * r := by
    simpa [Fintype.card_sigma, ZMod.card] using hcard
  refine ⟨Fintype.card Ω, ?_⟩
  have hcount : exactPeriodCount H r = Fintype.card X := by
    simp [exactPeriodCount, X]
  rw [hcount, hcard', Nat.mul_comm]

/-! ## Primitive cycle counts and divisor sums -/

/-- Number of primitive cycles of length `r`; by convention it is zero at `r = 0`. -/
def cycleCount {n : Nat} (H : BitPerm n) (r : Nat) : Nat :=
  if r = 0 then 0 else exactPeriodCount H r / r

@[simp]
theorem cycleCount_zero {n : Nat} (H : BitPerm n) :
    cycleCount H 0 = 0 := by
  simp [cycleCount]

/-- Exact-period states are `r` times the number of primitive `r`-cycles. -/
theorem exactPeriodCount_eq_mul_cycleCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    exactPeriodCount H r = r * cycleCount H r := by
  rw [cycleCount, if_neg hr.ne']
  exact (Nat.mul_div_cancel' (exactPeriodCount_dvd H hr)).symm

/-- Fixed points of `H ^ r` are the points in cycles whose lengths divide `r`. -/
theorem fixedPointCount_eq_sum_mul_cycleCount {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 0 < r) :
    fixedPointCount H r =
      ∑ d ∈ r.divisors, d * cycleCount H d := by
  rw [fixedPointCount_eq_sum_exactPeriodCount H hr]
  apply Finset.sum_congr rfl
  intro d hd
  exact exactPeriodCount_eq_mul_cycleCount H (Nat.pos_of_mem_divisors hd)

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
