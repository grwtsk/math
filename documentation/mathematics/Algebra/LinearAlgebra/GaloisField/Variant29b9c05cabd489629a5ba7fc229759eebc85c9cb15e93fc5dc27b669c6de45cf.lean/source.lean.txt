import BinaryMatrix.Avalanche
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith

/-!
# Model-indexed Galois-field semantics for binary matrices

`BinMat` has intrinsic pointwise Boolean operations.  This module first identifies
its Boolean coefficients with `GF(2)`, and then makes a sharp distinction between
those pointwise operations and extension-field multiplication.

Under the coefficient equivalence, pointwise XOR is addition in the product
`GF(2)`-vector space.  Pointwise AND is multiplication in the corresponding
product ring, and that product ring has zero divisors whenever `1 < m*n`.

The central guarantee is constructive: an explicit `GF(2)`-linear coordinate
equivalence makes pointwise XOR represent field addition.  Cardinality alone is
never used to identify the two additions: a bare finite-set equivalence may
scramble XOR and provides no additive compatibility.  Field multiplication is
instead transported through a chosen `BinMatFieldEncoding`; it depends on the
selected field together with the basis, coordinate indexing, and encoding
contained in that model.  For more than one entry it is provably different from
pointwise Boolean AND.

No algebraic instance is installed on `Bool` or on raw `BinMat m n`.  All field
operations below remain indexed by the model `E` that supplies their semantics.
-/

universe u

namespace BinMatGalois

open Avalanche
open SATReduction

/-! ## Binary coefficients -/

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

/-! ## Boolean matrices as `GF(2)`-valued matrices -/

/-- Apply `boolGF2Equiv` independently to every matrix entry. -/
def boolMatrixGF2Equiv (m n : Nat) : BinMat m n ≃ GF2Matrix m n where
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
    (A : BinMat m n) (i : Fin m) (j : Fin n) :
    boolMatrixGF2Equiv m n A i j = boolGF2Equiv (A i j) :=
  rfl

@[simp]
theorem boolMatrixGF2Equiv_symm_apply
    (A : GF2Matrix m n) (i : Fin m) (j : Fin n) :
    (boolMatrixGF2Equiv m n).symm A i j = boolGF2Equiv.symm (A i j) :=
  rfl

/-- Pointwise matrix XOR becomes pointwise matrix addition over `GF(2)`. -/
theorem boolMatrixGF2Equiv_xor (A B : BinMat m n) :
    boolMatrixGF2Equiv m n (BinMat.xor A B) =
      boolMatrixGF2Equiv m n A + boolMatrixGF2Equiv m n B := by
  ext i j
  exact boolGF2Equiv_xor _ _

/--
Pointwise Boolean AND becomes pointwise coefficient multiplication.

The multiplication displayed here is the pointwise `Mul` on the function type
`GF2Matrix m n`; it is **not** ordinary matrix multiplication.
-/
theorem boolMatrixGF2Equiv_and (A B : BinMat m n) :
    boolMatrixGF2Equiv m n (BinMat.and A B) =
      (fun i j => boolMatrixGF2Equiv m n A i j *
        boolMatrixGF2Equiv m n B i j) := by
  ext i j
  exact boolGF2Equiv_and _ _

/-! ## Row-major flattening -/

/-- Row-major identification `(i,j) ↦ i*n+j`, including empty dimensions. -/
def rowMajorIndexEquiv (m n : Nat) : Fin m × Fin n ≃ Fin (m * n) :=
  finProdFinEquiv

@[simp]
theorem rowMajorIndexEquiv_apply (i : Fin m) (j : Fin n) :
    rowMajorIndexEquiv m n (i, j) = BinMatMut.flatIdx i j := by
  apply Fin.ext
  change j.val + n * i.val = i.val * n + j.val
  ac_rfl

/-- Flatten a binary matrix in row-major order, with inverse given by reshaping. -/
def flattenEquiv (m n : Nat) : BinMat m n ≃ Bits (m * n) where
  toFun A k :=
    let p := (rowMajorIndexEquiv m n).symm k
    A p.1 p.2
  invFun x i j := x (rowMajorIndexEquiv m n (i, j))
  left_inv A := by
    ext i j
    change A ((rowMajorIndexEquiv m n).symm
        (rowMajorIndexEquiv m n (i, j))).1
        ((rowMajorIndexEquiv m n).symm
        (rowMajorIndexEquiv m n (i, j))).2 = A i j
    rw [Equiv.symm_apply_apply]
  right_inv x := by
    funext k
    simp

@[simp]
theorem flattenEquiv_apply_flatIdx
    (A : BinMat m n) (i : Fin m) (j : Fin n) :
    flattenEquiv m n A (BinMatMut.flatIdx i j) = A i j := by
  change A ((rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j)).1
      ((rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j)).2 = A i j
  have hp : (rowMajorIndexEquiv m n).symm (BinMatMut.flatIdx i j) = (i, j) := by
    apply (rowMajorIndexEquiv m n).injective
    rw [Equiv.apply_symm_apply, rowMajorIndexEquiv_apply]
  rw [hp]

/-- Row-major flattening preserves pointwise XOR. -/
theorem flattenEquiv_xor (A B : BinMat m n) :
    flattenEquiv m n (BinMat.xor A B) =
      xorBits (flattenEquiv m n A) (flattenEquiv m n B) := by
  funext k
  simp [flattenEquiv, xorBits, BinMat.xor]

/-! ## Pointwise Boolean identities and zero divisors -/

/-- The all-false Boolean matrix. -/
def zeroMatrix (m n : Nat) : BinMat m n := fun _ _ => false

/-- The all-true matrix, the identity only for pointwise Boolean AND. -/
def pointwiseOneMatrix (m n : Nat) : BinMat m n := fun _ _ => true

@[simp]
theorem xor_zero_right (A : BinMat m n) :
    BinMat.xor A (zeroMatrix m n) = A := by
  ext i j
  cases h : A i j <;> simp [BinMat.xor, zeroMatrix, h]

@[simp]
theorem xor_self (A : BinMat m n) :
    BinMat.xor A A = zeroMatrix m n := by
  ext i j
  cases h : A i j <;> simp [BinMat.xor, zeroMatrix, h]

@[simp]
theorem and_zero_right (A : BinMat m n) :
    BinMat.and A (zeroMatrix m n) = zeroMatrix m n := by
  ext i j
  cases h : A i j <;> simp [BinMat.and, zeroMatrix, h]

@[simp]
theorem and_one_right (A : BinMat m n) :
    BinMat.and A (pointwiseOneMatrix m n) = A := by
  ext i j
  cases h : A i j <;> simp [BinMat.and, pointwiseOneMatrix, h]

/-- With no entries, the all-false and all-true functions coincide. -/
theorem zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero
    (h : m * n = 0) :
    zeroMatrix m n = pointwiseOneMatrix m n := by
  ext i j
  rcases Nat.mul_eq_zero.mp h with hm | hn
  · exact Fin.elim0 (hm ▸ i)
  · exact Fin.elim0 (hn ▸ j)

/-- A Boolean matrix supported at exactly one coordinate. -/
def singletonMatrix (p : Fin m × Fin n) : BinMat m n :=
  fun i j => decide ((i, j) = p)

/-- A singleton-support matrix is nonzero. -/
theorem singletonMatrix_ne_zero (p : Fin m × Fin n) :
    singletonMatrix p ≠ zeroMatrix m n := by
  intro h
  have hp := congrFun (congrFun h p.1) p.2
  simp [singletonMatrix, zeroMatrix] at hp

/--
If there are at least two entries, pointwise AND has disjoint nonzero supports
and hence zero divisors.  This is the obstruction to reading it as extension-
field multiplication.
-/
theorem exists_pointwise_zero_divisors (h : 1 < m * n) :
    ∃ A B : BinMat m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BinMat.and A B = zeroMatrix m n := by
  let a : Fin (m * n) := ⟨0, by omega⟩
  let b : Fin (m * n) := ⟨1, h⟩
  let p := (rowMajorIndexEquiv m n).symm a
  let q := (rowMajorIndexEquiv m n).symm b
  have hab : a ≠ b := by
    intro hab
    have := congrArg Fin.val hab
    simp [a, b] at this
  have hpq : p ≠ q := by
    intro hpq
    apply hab
    simpa [p, q] using congrArg (rowMajorIndexEquiv m n) hpq
  refine ⟨singletonMatrix p, singletonMatrix q,
    singletonMatrix_ne_zero p, singletonMatrix_ne_zero q, ?_⟩
  ext i j
  by_cases hip : (i, j) = p
  · simp [BinMat.and, singletonMatrix, zeroMatrix, hip, hpq]
  · simp [BinMat.and, singletonMatrix, zeroMatrix, hip]

/-! ## The one-entry case -/

/-- The existing pointwise operations on a `1 × 1` matrix realize `GF(2)`. -/
def oneEntryGF2Equiv : BinMat 1 1 ≃ GF2 where
  toFun A := boolGF2Equiv (A 0 0)
  invFun x _ _ := boolGF2Equiv.symm x
  left_inv A := by
    ext i j
    simp [Subsingleton.elim i 0, Subsingleton.elim j 0]
  right_inv x := by
    simp

theorem oneEntryGF2Equiv_xor (A B : BinMat 1 1) :
    oneEntryGF2Equiv (BinMat.xor A B) =
      oneEntryGF2Equiv A + oneEntryGF2Equiv B :=
  boolGF2Equiv_xor _ _

theorem oneEntryGF2Equiv_and (A B : BinMat 1 1) :
    oneEntryGF2Equiv (BinMat.and A B) =
      oneEntryGF2Equiv A * oneEntryGF2Equiv B :=
  boolGF2Equiv_and _ _

/-! ## Model-indexed field encodings -/

/--
An explicit `GF(2)`-linear coordinate model for a finite field on an `m × n`
binary matrix.  Linearity, not mere equicardinality, certifies XOR-compatible
field addition.
-/
structure BinMatFieldEncoding
    (F : Type u) [Field F] [Fintype F] [Algebra GF2 F]
    (m n : Nat) where
  coordinates : F ≃ₗ[GF2] GF2Matrix m n

namespace BinMatFieldEncoding

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}

/-- Encode field elements as Boolean matrices through the chosen coordinates. -/
def code (E : BinMatFieldEncoding F m n) : F ≃ BinMat m n :=
  E.coordinates.toEquiv.trans (boolMatrixGF2Equiv m n).symm

/-- Decode Boolean matrices according to the chosen field model. -/
def decode (E : BinMatFieldEncoding F m n) : BinMat m n ≃ F :=
  E.code.symm

@[simp]
theorem decode_code (E : BinMatFieldEncoding F m n) (x : F) :
    E.decode (E.code x) = x :=
  E.code.symm_apply_apply x

@[simp]
theorem code_decode (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    E.code (E.decode A) = A :=
  E.code.apply_symm_apply A

@[simp]
theorem code_zero (E : BinMatFieldEncoding F m n) :
    E.code 0 = zeroMatrix m n := by
  apply (boolMatrixGF2Equiv m n).injective
  ext i j
  simp [code, zeroMatrix, boolMatrixGF2Equiv]

@[simp]
theorem code_add (E : BinMatFieldEncoding F m n) (x y : F) :
    E.code (x + y) = BinMat.xor (E.code x) (E.code y) := by
  apply (boolMatrixGF2Equiv m n).injective
  rw [boolMatrixGF2Equiv_xor]
  simp [code]

@[simp]
theorem decode_zero (E : BinMatFieldEncoding F m n) :
    E.decode (zeroMatrix m n) = 0 := by
  rw [← E.code_zero]
  exact E.decode.apply_symm_apply 0

/-- A field coordinate model forces exactly `2^(m*n)` field elements. -/
theorem card_field (E : BinMatFieldEncoding F m n) :
    Fintype.card F = 2 ^ (m * n) := by
  rw [← BinMat.Quantizer.card_binMat m n]
  exact Fintype.card_congr E.code

/-- A nontrivial field cannot be encoded by a matrix with no entries. -/
theorem dimension_pos (E : BinMatFieldEncoding F m n) : 0 < m * n := by
  by_contra h
  have hzero : m * n = 0 := Nat.eq_zero_of_not_pos h
  have hcard : Fintype.card F = 1 := by
    simpa [hzero] using E.card_field
  have hone : 1 < Fintype.card F := Fintype.one_lt_card
  omega

end BinMatFieldEncoding

/-! ## Transported field operations -/

variable {F : Type u} [Field F] [Fintype F] [Algebra GF2 F]
variable {m n : Nat}

/-- Transported additive zero. -/
def gfZero (E : BinMatFieldEncoding F m n) : BinMat m n := E.code 0

/-- Transported multiplicative one. -/
def gfOne (E : BinMatFieldEncoding F m n) : BinMat m n := E.code 1

/-- Transported field addition. -/
def gfAdd (E : BinMatFieldEncoding F m n) (A B : BinMat m n) : BinMat m n :=
  E.code (E.decode A + E.decode B)

/-- Transported field multiplication; this is generally not pointwise AND. -/
def gfMul (E : BinMatFieldEncoding F m n) (A B : BinMat m n) : BinMat m n :=
  E.code (E.decode A * E.decode B)

/-- Transported field negation. -/
def gfNeg (E : BinMatFieldEncoding F m n) (A : BinMat m n) : BinMat m n :=
  E.code (-E.decode A)

/-- Transported field inverse. -/
def gfInv (E : BinMatFieldEncoding F m n) (A : BinMat m n) : BinMat m n :=
  E.code (E.decode A)⁻¹

@[simp]
theorem decode_gfAdd (E : BinMatFieldEncoding F m n) (A B : BinMat m n) :
    E.decode (gfAdd E A B) = E.decode A + E.decode B := by
  change E.decode (E.code (E.decode A + E.decode B)) = _
  exact E.decode_code _

@[simp]
theorem decode_gfMul (E : BinMatFieldEncoding F m n) (A B : BinMat m n) :
    E.decode (gfMul E A B) = E.decode A * E.decode B := by
  change E.decode (E.code (E.decode A * E.decode B)) = _
  exact E.decode_code _

@[simp]
theorem decode_gfNeg (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    E.decode (gfNeg E A) = -E.decode A := by
  change E.decode (E.code (-E.decode A)) = _
  exact E.decode_code _

@[simp]
theorem decode_gfInv (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    E.decode (gfInv E A) = (E.decode A)⁻¹ := by
  change E.decode (E.code (E.decode A)⁻¹) = _
  exact E.decode_code _

@[simp]
theorem gfZero_eq_zeroMatrix (E : BinMatFieldEncoding F m n) :
    gfZero E = zeroMatrix m n :=
  E.code_zero

/--
Transported addition is exactly the pre-existing pointwise XOR.  The proof
uses surjectivity of the chosen code and its proved linear-additive behavior.
-/
theorem gfAdd_eq_xor (E : BinMatFieldEncoding F m n) (A B : BinMat m n) :
    gfAdd E A B = BinMat.xor A B := by
  obtain ⟨x, rfl⟩ := E.code.surjective A
  obtain ⟨y, rfl⟩ := E.code.surjective B
  change E.code (E.decode (E.code x) + E.decode (E.code y)) = _
  rw [E.decode_code, E.decode_code]
  exact E.code_add x y

/-! ### Transported field laws -/

theorem gfAdd_assoc (E : BinMatFieldEncoding F m n) (A B C : BinMat m n) :
    gfAdd E (gfAdd E A B) C = gfAdd E A (gfAdd E B C) := by
  apply E.decode.injective
  simp [add_assoc]

theorem gfAdd_comm (E : BinMatFieldEncoding F m n) (A B : BinMat m n) :
    gfAdd E A B = gfAdd E B A := by
  apply E.decode.injective
  simp [add_comm]

theorem gfAdd_zero (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    gfAdd E A (gfZero E) = A := by
  apply E.decode.injective
  simp [gfZero]

theorem gfAdd_self (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    gfAdd E A A = gfZero E := by
  rw [gfAdd_eq_xor, gfZero_eq_zeroMatrix, xor_self]

theorem gfMul_assoc (E : BinMatFieldEncoding F m n) (A B C : BinMat m n) :
    gfMul E (gfMul E A B) C = gfMul E A (gfMul E B C) := by
  apply E.decode.injective
  simp [mul_assoc]

theorem gfMul_comm (E : BinMatFieldEncoding F m n) (A B : BinMat m n) :
    gfMul E A B = gfMul E B A := by
  apply E.decode.injective
  simp [mul_comm]

theorem gfMul_one (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    gfMul E A (gfOne E) = A := by
  apply E.decode.injective
  simp [gfOne]

theorem gfMul_zero (E : BinMatFieldEncoding F m n) (A : BinMat m n) :
    gfMul E A (gfZero E) = gfZero E := by
  apply E.decode.injective
  simp [gfZero]

theorem gfMul_add (E : BinMatFieldEncoding F m n) (A B C : BinMat m n) :
    gfMul E A (gfAdd E B C) = gfAdd E (gfMul E A B) (gfMul E A C) := by
  apply E.decode.injective
  simp [mul_add]

theorem gfMul_ne_zero
    (E : BinMatFieldEncoding F m n) {A B : BinMat m n}
    (hA : A ≠ gfZero E) (hB : B ≠ gfZero E) :
    gfMul E A B ≠ gfZero E := by
  have hA' : E.decode A ≠ 0 := by
    intro h
    apply hA
    apply E.decode.injective
    simpa [gfZero] using h
  have hB' : E.decode B ≠ 0 := by
    intro h
    apply hB
    apply E.decode.injective
    simpa [gfZero] using h
  intro h
  have h' := congrArg E.decode h
  simp [hA', hB'] at h'

theorem gfMul_inv
    (E : BinMatFieldEncoding F m n) {A : BinMat m n}
    (hA : A ≠ gfZero E) :
    gfMul E A (gfInv E A) = gfOne E := by
  have hA' : E.decode A ≠ 0 := by
    intro h
    apply hA
    apply E.decode.injective
    simpa [gfZero] using h
  apply E.decode.injective
  simp [gfOne, hA']

theorem gfInv_mul
    (E : BinMatFieldEncoding F m n) {A : BinMat m n}
    (hA : A ≠ gfZero E) :
    gfMul E (gfInv E A) A = gfOne E := by
  rw [gfMul_comm]
  exact gfMul_inv E hA

/-! ## Extension multiplication is not pointwise AND -/

/--
For a multi-entry representation, disjoint pointwise supports multiply to zero
under AND but not under the transported field multiplication.
-/
theorem transported_mul_differs_from_pointwise_and
    (E : BinMatFieldEncoding F m n) (h : 1 < m * n) :
    ∃ A B : BinMat m n,
      A ≠ zeroMatrix m n ∧
      B ≠ zeroMatrix m n ∧
      BinMat.and A B = zeroMatrix m n ∧
      gfMul E A B ≠ zeroMatrix m n := by
  obtain ⟨A, B, hA, hB, hand⟩ := exists_pointwise_zero_divisors h
  refine ⟨A, B, hA, hB, hand, ?_⟩
  simpa [gfZero_eq_zeroMatrix] using
    (gfMul_ne_zero E (by simpa [gfZero_eq_zeroMatrix] using hA)
      (by simpa [gfZero_eq_zeroMatrix] using hB))

/-! ## Field quantization -/

/-- The lossless quantizer supplied by a field encoding. -/
def fieldQuantizer (E : BinMatFieldEncoding F m n) : BinMat.Quantizer F m n :=
  ⟨E.code⟩

theorem fieldQuantizer_indistinguishable_iff
    (E : BinMatFieldEncoding F m n) (x y : F) :
    (fieldQuantizer E).Indistinguishable x y ↔ x = y := by
  exact E.code.injective.eq_iff

/-- Every binary matrix is realized by the lossless field quantizer. -/
theorem fieldQuantizer_effectiveStates_eq_univ
    (E : BinMatFieldEncoding F m n) :
    (fieldQuantizer E).effectiveStates = Finset.univ := by
  ext A
  simp only [BinMat.Quantizer.mem_effectiveStates_iff, Finset.mem_univ, iff_true]
  exact E.code.surjective A

theorem fieldQuantizer_effectiveStates_card
    (E : BinMatFieldEncoding F m n) :
    (fieldQuantizer E).effectiveStates.card = 2 ^ (m * n) := by
  rw [fieldQuantizer_effectiveStates_eq_univ, Finset.card_univ,
    BinMat.Quantizer.card_binMat]

/-- Since the quantizer is injective, its quotient by observation is `F` itself. -/
noncomputable def fieldQuantizer_quotientEquiv
    (E : BinMatFieldEncoding F m n) :
    Quotient (fieldQuantizer E).setoid ≃ F where
  toFun := Quotient.lift id (by
    intro x y h
    exact (fieldQuantizer_indistinguishable_iff E x y).mp h)
  invFun x := Quotient.mk _ x
  left_inv q := by
    induction q using Quotient.inductionOn with
    | _ x => rfl
  right_inv x := rfl

end BinMatGalois
