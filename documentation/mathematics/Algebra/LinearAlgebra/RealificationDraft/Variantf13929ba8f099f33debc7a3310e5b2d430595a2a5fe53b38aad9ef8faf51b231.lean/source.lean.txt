import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.QuadraticForm.Signature
import Mathlib.LinearAlgebra.Complex.Module
import Mathlib.Data.Complex.BigOperators

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.HermitianRealification
open Matrix QuadraticMap
variable {σ : Type*} [Fintype σ]

/-- Literal real/imaginary coordinates; both copies retain the complete index. -/
def coordinates : (σ → ℂ) ≃ₗ[ℝ] ((σ ⊕ σ) → ℝ) where
  toFun z := Sum.elim (fun i => (z i).re) (fun i => (z i).im)
  invFun x := fun i => ⟨x (Sum.inl i), x (Sum.inr i)⟩
  left_inv z := by ext i; rfl
  right_inv x := by ext i; cases i <;> rfl
  map_add' z v := by ext i; cases i <;> rfl
  map_smul' r z := by ext i; cases i <;> simp

/-- The real quadratic form of a diagonal Hermitian packet. -/
def diagonalRealForm (w : σ → ℝ) : QuadraticForm ℝ (σ → ℂ) :=
  (weightedSumSquares ℝ (Sum.elim w w)).comp coordinates.toLinearMap

def diagonalRealEquiv (w : σ → ℝ) :
    (diagonalRealForm w).IsometryEquiv (weightedSumSquares ℝ (Sum.elim w w)) :=
  (isometryEquivOfCompLinearEquiv (weightedSumSquares ℝ (Sum.elim w w)) coordinates).symm

theorem diagonalRealForm_apply (w : σ → ℝ) (z : σ → ℂ) :
    diagonalRealForm w z = ∑ i, w i * ((z i).re^2 + (z i).im^2) := by
  rw [diagonalRealForm, QuadraticMap.comp_apply, QuadraticMap.weightedSumSquares_apply]
  simp only [coordinates, LinearMap.coe_mk, AddHom.coe_mk, smul_eq_mul,
    Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem diagonal_hermitian_energy (w : σ → ℝ) [DecidableEq σ] (z : σ → ℂ) :
    (star z ⬝ᵥ (Matrix.diagonal (fun i => (w i : ℂ))).mulVec z).re =
      diagonalRealForm w z := by
  rw [diagonalRealForm_apply]
  simp only [Matrix.mulVec_diagonal, dotProduct, Complex.re_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [Pi.star_apply, Complex.star_def, Complex.mul_re, Complex.mul_im,
    Complex.conj_re, Complex.conj_im, Complex.ofReal_re, Complex.ofReal_im]
  ring

theorem doubled_count (w : σ → ℝ) (P : ℝ → Prop) [DecidablePred P] :
    {i : σ ⊕ σ | P (Sum.elim w w i)}.ncard = 2*Fintype.card {i : σ // P (w i)} := by
  classical
  change Nat.card {i : σ ⊕ σ // P (Sum.elim w w i)} = _
  rw [Nat.card_congr (Equiv.subtypeSum (p := fun i : σ ⊕ σ => P (Sum.elim w w i)))]
  change Nat.card ({i : σ // P (w i)} ⊕ {i : σ // P (w i)}) = _
  rw [Nat.card_sum, Nat.card_eq_fintype_card]
  omega

theorem sigPos_diagonalRealForm (w : σ → ℝ) :
    sigPos (diagonalRealForm w) = 2*Fintype.card {i // 0 < w i} := by
  rw [QuadraticForm.sigPos_of_equiv_weightedSumSquares ⟨diagonalRealEquiv w⟩]
  exact doubled_count w (fun r => 0 < r)

theorem sigNeg_diagonalRealForm (w : σ → ℝ) :
    sigNeg (diagonalRealForm w) = 2*Fintype.card {i // w i < 0} := by
  rw [QuadraticForm.sigNeg_of_equiv_weightedSumSquares ⟨diagonalRealEquiv w⟩]
  exact doubled_count w (fun r => r < 0)

theorem radical_diagonalRealForm (w : σ → ℝ) :
    Module.finrank ℝ (diagonalRealForm w).radical = 2*Fintype.card {i // w i = 0} := by
  rw [QuadraticForm.finrank_radical_of_equiv_weightedSumSquares ⟨diagonalRealEquiv w⟩]
  exact doubled_count w (fun r => r = 0)

#print axioms coordinates
#print axioms diagonalRealEquiv
#print axioms diagonalRealForm_apply
#print axioms diagonal_hermitian_energy
#print axioms doubled_count
#print axioms sigPos_diagonalRealForm
#print axioms sigNeg_diagonalRealForm
#print axioms radical_diagonalRealForm
end ContinuousResearch.HermitianRealification
