/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing nonlinear Frey open-ring involution and Mathlib spans.
Formalization assistance: OpenAI.

Algebraic weighted section candidates on the SAME D=C[1/X]. The bounded
monomial spans are defined explicitly, not identified with H0(E,O(2kO)).
The divisor of X, complete section bases, degree/rank, integral descent,
and metric/height estimates remain separate. No global algebra instance is
installed; the coefficient action below is local and named. Source only.
-/
import GRWTSK.Algebra.RingTheory.WeightedInvolution
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionOpen
import Mathlib.LinearAlgebra.Span.Defs

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections

open FreyTorsionOpen
open GRWTSK.Algebra.RingTheory.WeightedInvolution

variable {R : Type*} [CommRing R]

/-- Exactly the previous coefficient map, with instance scope local to this file. -/
def coefficientAlgebra (a b : R) : Algebra R (OpenCurve a b) := (scalar a b).toAlgebra
attribute [local instance] coefficientAlgebra

/-- Algebra packaging preserves the original pullback and fixed-coefficient law. -/
def pullbackAlg (a b l : R) (hl : a * b * l = 1) : OpenCurve a b →ₐ[R] OpenCurve a b where
  toRingHom := pullback a b l hl
  commutes' c := pullback_scalar a b l hl c

theorem pullbackAlg_involutive (a b l : R) (hl : a * b * l = 1) :
    Function.Involutive (pullbackAlg a b l hl) := by
  intro f
  exact DFunLike.congr_fun (pullback_comp_self a b l hl) f

/-- The exact scalar determining the square of every weighted lift. -/
theorem x_pairing (a b l : R) (hl : a * b * l = 1) :
    x a b * pullbackAlg a b l hl (x a b) = algebraMap R (OpenCurve a b) (-(a * b)) := by
  change x a b * pullback a b l hl (x a b) = scalar a b (-(a * b))
  rw [pullback_x, map_neg]
  calc
    _ = -(scalar a b (a * b)) * (x a b * invX a b) := by ring
    _ = _ := by rw [x_mul_invX, mul_one]

/-- Linear, not a ring map: L_k(f)=X^k P(f). -/
def lift (a b l : R) (hl : a * b * l = 1) (k : ℕ) : OpenCurve a b →ₗ[R] OpenCurve a b :=
  operator (pullbackAlg a b l hl) (x a b) k

@[simp] theorem lift_apply (a b l : R) (hl : a * b * l = 1) (k : ℕ) (f : OpenCurve a b) :
    lift a b l hl k f = x a b ^ k * pullback a b l hl f := rfl

theorem lift_square (a b l : R) (hl : a * b * l = 1) (k : ℕ) (f : OpenCurve a b) :
    lift a b l hl k (lift a b l hl k f) = (-(a * b)) ^ k • f :=
  operator_square (pullbackAlg a b l hl) (pullbackAlg_involutive a b l hl)
    (x a b) (-(a * b)) (x_pairing a b l hl) k f

/-- Exact inverse on the ambient localized function module; not a metric isometry. -/
def liftEquiv (a b l : R) (hl : a * b * l = 1) (k : ℕ) : OpenCurve a b ≃ₗ[R] OpenCurve a b :=
  operatorEquiv (pullbackAlg a b l hl) (pullbackAlg_involutive a b l hl)
    (x a b) (-(a * b)) (-l) (x_pairing a b l hl)
    (by simpa only [neg_mul_neg] using hl) k

/-- The grade-changing factor is part of the map identity. -/
theorem lift_succ (a b l : R) (hl : a * b * l = 1) (k : ℕ) (f : OpenCurve a b) :
    lift a b l hl (k + 1) f = x a b * lift a b l hl k f :=
  operator_succ (pullbackAlg a b l hl) (x a b) k f

/-- Multiplicativity holds with the sum of the two input grades. -/
theorem lift_graded_mul (a b l : R) (hl : a * b * l = 1)
    (k m : ℕ) (f g : OpenCurve a b) :
    lift a b l hl (k + m) (f * g) = lift a b l hl k f * lift a b l hl m g :=
  operator_graded_mul (pullbackAlg a b l hl) (x a b) k m f g

private theorem power_cancel (a b : R) (k i : ℕ) (hi : i ≤ k) :
    x a b ^ k * invX a b ^ i = x a b ^ (k - i) := by
  calc
    _ = (x a b ^ (k - i) * x a b ^ i) * invX a b ^ i := by
      rw [← pow_add, Nat.sub_add_cancel hi]
    _ = x a b ^ (k - i) * (x a b * invX a b) ^ i := by rw [mul_pow]; ring
    _ = _ := by rw [x_mul_invX, one_pow, mul_one]

/-- Exact anti-diagonal action on the polynomial block, including its scalar factor. -/
theorem lift_X_pow (a b l : R) (hl : a * b * l = 1) (k i : ℕ) (hi : i ≤ k) :
    lift a b l hl k (x a b ^ i) = (-(a * b)) ^ i • x a b ^ (k - i) := by
  change x a b ^ k * pullback a b l hl (x a b ^ i) =
    scalar a b ((-(a * b)) ^ i) * x a b ^ (k - i)
  simp only [map_pow, pullback_x, mul_pow, map_neg]
  calc
    _ = (-(scalar a b (a * b))) ^ i * (x a b ^ k * invX a b ^ i) := by ring
    _ = _ := by rw [power_cancel a b k i hi]

/-- The Y block has weight three: the required bound is j+2<=k, not j<=k. -/
theorem lift_Y_X_pow (a b l : R) (hl : a * b * l = 1)
    (k j : ℕ) (hj : j + 2 ≤ k) :
    lift a b l hl k (y a b * x a b ^ j) =
      (a * b * (-(a * b)) ^ j) • (y a b * x a b ^ (k - (j + 2))) := by
  change x a b ^ k * pullback a b l hl (y a b * x a b ^ j) =
    scalar a b (a * b * (-(a * b)) ^ j) * (y a b * x a b ^ (k - (j + 2)))
  simp only [map_mul, map_pow, pullback_y, pullback_x, mul_pow, map_neg]
  calc
    _ = (scalar a b a * scalar a b b * (-(scalar a b a * scalar a b b)) ^ j) *
        (y a b * (x a b ^ k * invX a b ^ (j + 2))) := by rw [pow_add]; ring
    _ = _ := by rw [power_cancel a b k (j + 2) hj]

/-- These are selected function generators, not an assumed Riemann--Roch basis. -/
def generators (a b : R) (k : ℕ) : Set (OpenCurve a b) :=
  {f | (∃ i : ℕ, i ≤ k ∧ f = x a b ^ i) ∨
       (∃ j : ℕ, j + 2 ≤ k ∧ f = y a b * x a b ^ j)}

def stage (a b : R) (k : ℕ) : Submodule R (OpenCurve a b) :=
  Submodule.span R (generators a b k)

/-- Increasing the selected degree bound preserves all previous function generators. -/
theorem stage_mono (a b : R) {k m : ℕ} (hkm : k ≤ m) : stage a b k ≤ stage a b m := by
  apply Submodule.span_mono
  intro f hf
  rcases hf with ⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩
  · exact Or.inl ⟨i, hi.trans hkm, rfl⟩
  · exact Or.inr ⟨j, hj.trans hkm, rfl⟩

/-- The SAME weighted nonlinear pullback preserves the entire selected span. -/
theorem lift_mem_stage (a b l : R) (hl : a * b * l = 1) (k : ℕ)
    (f : OpenCurve a b) (hf : f ∈ stage a b k) : lift a b l hl k f ∈ stage a b k := by
  change f ∈ Submodule.span R (generators a b k) at hf
  induction hf using Submodule.span_induction with
  | mem f hf =>
    rcases hf with ⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩
    · rw [lift_X_pow a b l hl k i hi]
      exact (stage a b k).smul_mem _
        (Submodule.subset_span (Or.inl ⟨k - i, Nat.sub_le _ _, rfl⟩))
    · rw [lift_Y_X_pow a b l hl k j hj]
      have hbound : k - (j + 2) + 2 ≤ k := by omega
      exact (stage a b k).smul_mem _
        (Submodule.subset_span (Or.inr ⟨k - (j + 2), hbound, rfl⟩))
  | zero => simpa using (stage a b k).zero_mem
  | add f g _ _ hf hg => simpa only [map_add] using (stage a b k).add_mem hf hg
  | smul c f _ hf => simpa only [map_smul] using (stage a b k).smul_mem c hf

/-- Both directions preserve the selected span, hence it has an actual linear automorphism. -/
def stageEquiv (a b l : R) (hl : a * b * l = 1) (k : ℕ) : stage a b k ≃ₗ[R] stage a b k where
  toFun f := ⟨lift a b l hl k f, lift_mem_stage a b l hl k f f.property⟩
  invFun f := ⟨(-l) ^ k • lift a b l hl k f,
    (stage a b k).smul_mem _ (lift_mem_stage a b l hl k f f.property)⟩
  left_inv f := by
    apply Subtype.ext
    exact (liftEquiv a b l hl k).symm_apply_apply (f : OpenCurve a b)
  right_inv f := by
    apply Subtype.ext
    exact (liftEquiv a b l hl k).apply_symm_apply (f : OpenCurve a b)
  map_add' f g := Subtype.ext ((lift a b l hl k).map_add f g)
  map_smul' c f := Subtype.ext ((lift a b l hl k).map_smul c f)

/-- Exact matrix action on the previously selected (1,X) expressions. -/
theorem lift_degree_two (a b l : R) (hl : a * b * l = 1) (u v : R) :
    lift a b l hl 1 (scalar a b u + scalar a b v * x a b) =
      scalar a b (-(a * b) * v) + scalar a b u * x a b := by
  have h := x_pairing a b l hl
  change x a b * pullback a b l hl (x a b) = scalar a b (-(a * b)) at h
  rw [lift_apply, pow_one, map_add, map_mul, pullback_scalar, pullback_scalar]
  calc
    _ = scalar a b u * x a b + scalar a b v * (x a b * pullback a b l hl (x a b)) := by ring
    _ = _ := by rw [h, map_mul]; ring

/-- Coefficient matrix in the named (1,X) expressions, in column-vector convention. -/
def degreeTwoMatrix (a b : R) : Matrix (Fin 2) (Fin 2) R :=
  ![![0, -(a * b)], ![1, 0]]

/-- This new square operator has determinant ab; it is not the old saturated value map. -/
theorem degreeTwoMatrix_det (a b : R) : (degreeTwoMatrix a b).det = a * b := by
  simp [degreeTwoMatrix, Matrix.det_fin_two]

/-- The matrix retains exactly the same scalar square as the function lift. -/
theorem degreeTwoMatrix_square (a b : R) :
    degreeTwoMatrix a b * degreeTwoMatrix a b = (-(a * b)) • (1 : Matrix (Fin 2) (Fin 2) R) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [degreeTwoMatrix, Matrix.mul_apply, Fin.sum_univ_two]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedSections

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- For positive source a,b, no rational scalar makes the grade-one square multiplier one.
This is a scalar obstruction, not an assumption of faithfulness of an arbitrary R-algebra. -/
theorem PrimitiveAdditiveTriple.frey_weight_one_rational_normalization_obstruction
    (t : PrimitiveAdditiveTriple) (q : ℚ) : q ^ 2 * (-(t.a : ℚ) * (t.b : ℚ)) ≠ 1 := by
  have ha : (0 : ℚ) < (t.a : ℚ) := by exact_mod_cast t.a_pos
  have hb : (0 : ℚ) < (t.b : ℚ) := by exact_mod_cast t.b_pos
  have hn : (-(t.a : ℚ) * (t.b : ℚ)) < 0 := mul_neg_of_neg_of_pos (neg_neg_of_pos ha) hb
  have hle : q ^ 2 * (-(t.a : ℚ) * (t.b : ℚ)) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (sq_nonneg q) hn.le
  intro h
  rw [h] at hle
  norm_num at hle

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
