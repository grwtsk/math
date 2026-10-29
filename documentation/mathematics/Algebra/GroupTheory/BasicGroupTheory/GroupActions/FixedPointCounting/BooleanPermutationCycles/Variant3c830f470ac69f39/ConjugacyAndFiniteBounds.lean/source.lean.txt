/-
Cycle conjugacy invariants and finite state bounds
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

import GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39.ExactPeriodsAndCompleteCycles

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

/-! ## Conjugacy invariance -/

private theorem hasExactPeriod_conjugate_iff {n : Nat}
    (g H : BitPerm n)
    (r : Nat)
    (x : Bits n) :
    HasExactPeriod (conjugate g H) r x ↔
      HasExactPeriod H r (g.symm x) := by
  constructor
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [conjugate_pow, conjugate_apply] at hfix
      apply g.injective
      simpa using hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [conjugate_pow, conjugate_apply]
      simpa using congrArg g hdFix
  · rintro ⟨hr, hfix, hmin⟩
    refine ⟨hr, ?_, ?_⟩
    · rw [conjugate_pow, conjugate_apply]
      simpa using congrArg g hfix
    · intro d hd hdlt hdFix
      apply hmin d hd hdlt
      rw [conjugate_pow, conjugate_apply] at hdFix
      apply g.injective
      simpa using hdFix

/-- Conjugacy transports exact-period points by an explicit bijection. -/
theorem exactPeriodCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    exactPeriodCount (conjugate g H) r = exactPeriodCount H r := by
  classical
  unfold exactPeriodCount
  apply Finset.card_bij (fun x _ => g.symm x)
  · intro x hx
    exact (mem_exactPeriodPoints_iff H r (g.symm x)).2
      ((hasExactPeriod_conjugate_iff g H r x).1
        ((mem_exactPeriodPoints_iff (conjugate g H) r x).1 hx))
  · intro x₁ hx₁ x₂ hx₂ h
    exact g.symm.injective h
  · intro y hy
    refine ⟨g y, ?_, by simp⟩
    exact (mem_exactPeriodPoints_iff (conjugate g H) r (g y)).2
      ((hasExactPeriod_conjugate_iff g H r (g y)).2 <| by
        simpa using (mem_exactPeriodPoints_iff H r y).1 hy)

/-- Primitive cycle counts are conjugacy invariants. -/
theorem cycleCount_conjugate {n : Nat}
    (g H : BitPerm n)
    (r : Nat) :
    cycleCount (conjugate g H) r = cycleCount H r := by
  simp [cycleCount, exactPeriodCount_conjugate]

theorem exactPeriodCount_le_stateCard {n : Nat}
    (H : BitPerm n)
    (r : Nat) :
    exactPeriodCount H r ≤ 2 ^ n := by
  calc
    exactPeriodCount H r = (exactPeriodPoints H r).card := rfl
    _ ≤ (Finset.univ : Finset (Bits n)).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    _ = 2 ^ n := by rw [Finset.card_univ, BitMatrix.Dynamics.Avalanche.card_bits]

/-- A cycle cannot be longer than the finite state space. -/
theorem cycleCount_eq_zero_of_card_lt {n : Nat}
    (H : BitPerm n)
    {r : Nat}
    (hr : 2 ^ n < r) :
    cycleCount H r = 0 := by
  have hrpos : 0 < r := (Nat.zero_le (2 ^ n)).trans_lt hr
  rw [cycleCount, if_neg hrpos.ne']
  exact Nat.div_eq_of_lt ((exactPeriodCount_le_stateCard H r).trans_lt hr)

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
