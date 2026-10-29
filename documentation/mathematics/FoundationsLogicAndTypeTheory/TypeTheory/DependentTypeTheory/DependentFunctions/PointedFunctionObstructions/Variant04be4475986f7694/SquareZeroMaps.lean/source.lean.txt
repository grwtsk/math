/-
SquareZeroMaps — exact individually reviewed original source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a
Organized SHA-256: c6e5919d85ba9e19bb5b9997372650b13bba53566855c457ced5a75827a9bf3d
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The whole Boolean-endomap example retains its closed/exact witnesses and exact positive-width collision counterexample, with complete same-source companions only. Generic zero-preserving square-zero maps retain both actual zero-fixing/square-zero equations and an explicit nontriviality witness in their non-injectivity/non-bijectivity proof. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Correct guarantees for permutation networks

This module separates properties that are often conflated:

* totality is supplied by an ordinary Lean function;
* bijectivity is supplied structurally by `Equiv` and is preserved by
  composition;
* deterministic linear activity is measured by branch number;
* SAC balance and differential concentration are the aggregate invariants from
  `BitMatrix.Dynamics.Avalanche` and do not follow from bijectivity.

The counterexamples below make the boundary explicit.  A cyclic coordinate
rotation is bijective and preserves Hamming weight, but merely relocates a
one-bit difference and has zero SAC positivity scores.  A state-dependent XOR
correction can collapse even the identity permutation.  Trivial first
cohomology in the elementary complex used here means only that every closed
degree-one element is exact; it says nothing about injectivity of an unrelated
state transformation.

The square-zero theorem is likewise deliberately elementary.  Connes' `B`
operator is degree-changing in the cyclic complex.  If such an operator is
totalized as a square-zero endomorphism, square-zero obstructs invertibility on
a nontrivial state space.  The theorem here does not formalize the full cyclic
module or bicomplex construction.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694

universe u

namespace BitMatrix.Network.Permutation

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open scoped BigOperators

/-! ## Square-zero endomorphisms -/

/-- A zero-preserving square-zero map on a nontrivial type cannot be injective. -/
theorem not_injective_of_square_zero
    {V : Type u} (zero : V) (B : V → V)
    (hzero : B zero = zero)
    (hsquare : ∀ x, B (B x) = zero)
    (hnontrivial : ∃ x, x ≠ zero) :
    ¬ Function.Injective B := by
  intro hinjective
  obtain ⟨x, hx⟩ := hnontrivial
  have hBx : B x = zero := by
    apply hinjective
    simpa [hzero] using hsquare x
  have hxzero : x = zero := by
    apply hinjective
    simpa [hzero] using hBx
  exact hx hxzero

/-- A zero-preserving square-zero map on a nontrivial type cannot be bijective. -/
theorem not_bijective_of_square_zero
    {V : Type u} (zero : V) (B : V → V)
    (hzero : B zero = zero)
    (hsquare : ∀ x, B (B x) = zero)
    (hnontrivial : ∃ x, x ≠ zero) :
    ¬ Function.Bijective B := by
  intro hbijective
  exact not_injective_of_square_zero zero B hzero hsquare hnontrivial
    hbijective.injective

end BitMatrix.Network.Permutation

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Permutations.BooleanPermutationComponents.Variant04be4475986f7694
