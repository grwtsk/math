/-
Inversion as a whole-field involutive permutation
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42
Organized SHA-256: 63289ea99e05fa97ce00b933c1039216a39ca3f376010781ce1572c4b9f7e425
PMD: 510.1.080.030.010.020 finite field symmetries (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- powerMap_bijective retains0<d and Nat.Coprime d(cardF-1), unit-group cardinality proof and separate zero/nonzero arguments. Inversion needs only Field and retains conventional0 inverse0 and exact involutive inverse fields, with no finite enumeration. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.CharP.Two
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Units.Fintype
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement

/-!
# Finite-field permutation rounds and the finite ``Digamma'' obstruction

This module separates two unrelated facts about finite-field formulae.

First, the product occurring in the proposed finite ``Digamma'' expression has
a pole at every selected root.  In characteristic two the factor belonging to
`a` evaluates to `a + a = 0`.  In particular, selecting all nonzero field
elements makes the expression undefined at every nonzero input.  The
definition remains an `Option`; division by a zero denominator is not silently
totalized.

Second, exponentiation by `d` *is* a genuine permutation when `d` is positive
and coprime to the order of the multiplicative group.  The proof below uses
Mathlib's power equivalence on `Fˣ`, whose order is `|F| - 1`, and treats zero
separately.  No finite brute-force enumeration is involved.

A `FieldRound` composes explicit equivalences, so it is bijective by
construction.  This is only a permutation guarantee: it says nothing about
SAC, correlations, differential concentration, or other avalanche properties.
Likewise, transporting a field permutation to `Bits n` requires a chosen
representation equivalence.  SAC and output-bit correlations depend on that
choice; field-level bijectivity alone cannot determine them.
-/

namespace GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c

open BitMatrix.Reduction.SAT
open scoped BigOperators

universe u

section Inversion

variable {F : Type u} [Field F]

/-- Field inversion, extended by the standard convention `0⁻¹ = 0`, is an
involutive permutation of the whole field. -/
noncomputable def inversionPermutation : F ≃ F where
  toFun x := x⁻¹
  invFun x := x⁻¹
  left_inv x := inv_inv x
  right_inv x := inv_inv x

@[simp]
theorem inversionPermutation_apply (x : F) :
    inversionPermutation x = x⁻¹ :=
  rfl

@[simp]
theorem inversionPermutation_zero :
    (inversionPermutation (F := F)) 0 = 0 := by
  simp

@[simp]
theorem inversionPermutation_involutive (x : F) :
    inversionPermutation (inversionPermutation x) = x := by
  simp [inversionPermutation]

end Inversion

end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c
