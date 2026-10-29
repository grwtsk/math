/-
BooleanCoefficientEquivalence — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d9d307f9fc4eb0f70539d3fb84809fc24f00c8c80fb99fc4fd541f8037b44081
Organized SHA-256: bb3ffcc9e0e8e912c20c2a1cacf6ed8204c89556342470b494e5f1a8afc34418
PMD: 510.1.080.030.010 finite fields (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact Bool-to-GF2 and pointwise Boolean-matrix coefficient equivalences. Pointwise AND maps to coefficientwise product, not matrix multiplication. Original BitMatrix.FiniteField namespace is retained for historical fully qualified Encoding/provider lookup; physically GRWTSK taxonomy, isolated source variant, no coimport compatibility with duplicate historical originals is asserted. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

/-!
# Model-indexed Galois-field semantics for binary matrices

`BitMatrix` has intrinsic pointwise Boolean operations.  This module first identifies
its Boolean coefficients with `GF(2)`, and then makes a sharp distinction between
those pointwise operations and extension-field multiplication.

Under the coefficient equivalence, pointwise XOR is addition in the product
`GF(2)`-vector space.  Pointwise AND is multiplication in the corresponding
product ring, and that product ring has zero divisors whenever `1 < m*n`.

The central guarantee is constructive: an explicit `GF(2)`-linear coordinate
equivalence makes pointwise XOR represent field addition.  Cardinality alone is
never used to identify the two additions: a bare finite-set equivalence may
scramble XOR and provides no additive compatibility.  Field multiplication is
instead transported through a chosen `BitMatrix.FiniteField.Encoding`; it depends on the
selected field together with the basis, coordinate indexing, and encoding
contained in that model.  For more than one entry it is provably different from
pointwise Boolean AND.

No algebraic instance is installed on `Bool` or on raw `BitMatrix m n`.  All field
operations below remain indexed by the model `E` that supplies their semantics.
-/

universe u


namespace BitMatrix.FiniteField

open BitMatrix.Dynamics.Avalanche
open BitMatrix.Reduction.SAT

/-- The two-element field used for matrix coordinates. -/
abbrev GF2 := ZMod 2


/-- Function matrices with coefficients in `GF(2)`. -/
abbrev GF2Matrix (m n : Nat) := Matrix (Fin m) (Fin n) GF2


/-- The explicit equivalence between Boolean coefficients and `GF(2)`. -/
def boolGF2Equiv : Bool ≃ GF2 where
  toFun b := if b then 1 else 0
  invFun x := decide (x.val = 1)
  left_inv b := by
    cases b <;> simp [ZMod.val_one]
  right_inv x := by
    have hx : x.val = 0 ∨ x.val = 1 := by
      have := ZMod.val_lt x
      omega
    rcases hx with hx | hx
    · have hx0 : x = 0 := (ZMod.val_eq_zero x).mp hx
      subst x
      simp
    · have hx1 : x = 1 := (ZMod.val_eq_one (by omega) x).mp hx
      subst x
      simp [ZMod.val_one]


@[simp]
theorem boolGF2Equiv_false : boolGF2Equiv false = 0 := rfl


@[simp]
theorem boolGF2Equiv_true : boolGF2Equiv true = 1 := rfl


/-- Boolean XOR is addition in `GF(2)`. -/
@[simp]
theorem boolGF2Equiv_xor (a b : Bool) :
    boolGF2Equiv (a != b) = boolGF2Equiv a + boolGF2Equiv b := by
  cases a <;> cases b <;> decide


/-- Boolean AND is multiplication for a single `GF(2)` coefficient. -/
@[simp]
theorem boolGF2Equiv_and (a b : Bool) :
    boolGF2Equiv (a && b) = boolGF2Equiv a * boolGF2Equiv b := by
  cases a <;> cases b <;> decide


/-- Apply `boolGF2Equiv` independently to every matrix entry. -/
def boolMatrixGF2Equiv (m n : Nat) : BitMatrix m n ≃ GF2Matrix m n where
  toFun A i j := boolGF2Equiv (A i j)
  invFun A i j := boolGF2Equiv.symm (A i j)
  left_inv A := by
    ext i j
    simp
  right_inv A := by
    ext i j
    simp


@[simp]
theorem boolMatrixGF2Equiv_apply
    (A : BitMatrix m n) (i : Fin m) (j : Fin n) :
    boolMatrixGF2Equiv m n A i j = boolGF2Equiv (A i j) :=
  rfl


@[simp]
theorem boolMatrixGF2Equiv_symm_apply
    (A : GF2Matrix m n) (i : Fin m) (j : Fin n) :
    (boolMatrixGF2Equiv m n).symm A i j = boolGF2Equiv.symm (A i j) :=
  rfl


/-- Pointwise matrix XOR becomes pointwise matrix addition over `GF(2)`. -/
theorem boolMatrixGF2Equiv_xor (A B : BitMatrix m n) :
    boolMatrixGF2Equiv m n (BitMatrix.xor A B) =
      boolMatrixGF2Equiv m n A + boolMatrixGF2Equiv m n B := by
  ext i j
  exact boolGF2Equiv_xor _ _


/--
Pointwise Boolean AND becomes pointwise coefficient multiplication.

The multiplication displayed here is the pointwise `Mul` on the function type
`GF2Matrix m n`; it is **not** ordinary matrix multiplication.
-/
theorem boolMatrixGF2Equiv_and (A B : BitMatrix m n) :
    boolMatrixGF2Equiv m n (BitMatrix.and A B) =
      (fun i j => boolMatrixGF2Equiv m n A i j *
        boolMatrixGF2Equiv m n B i j) := by
  ext i j
  exact boolGF2Equiv_and _ _


end BitMatrix.FiniteField

