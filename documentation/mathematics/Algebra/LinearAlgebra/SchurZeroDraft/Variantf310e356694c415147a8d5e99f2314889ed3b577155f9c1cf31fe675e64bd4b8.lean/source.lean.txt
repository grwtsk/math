import FormalResearch.PositiveAtlas.FeshbachHermitian
import ZeroMultiplicity

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SchurZero
open Matrix FormalResearch.PositiveAtlas
open ContinuousResearch.ZeroMultiplicity
open scoped ComplexOrder
variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]

def shear (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] :
    Matrix (m ⊕ n) (m ⊕ n) ℂ := fromBlocks 1 0 (⅟B*C) 1

theorem shear_det (C : Matrix n m ℂ) (B : Matrix n n ℂ) [Invertible B] :
    (shear C B).det = 1 := by
  simp only [shear, det_fromBlocks_zero₁₂, det_one, one_mul]

theorem exact_congruence (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hB : B.IsHermitian) :
    fromBlocks A Cᴴ C B = (shear C B)ᴴ *
      fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B *
        shear C B := by
  have hi : (⅟B)ᴴ = ⅟B := by simpa only [Matrix.invOf_eq_nonsing_inv] using hB.inv.eq
  rw [shear, fromBlocks_conjTranspose, conjTranspose_one, conjTranspose_one,
    conjTranspose_zero, conjTranspose_mul, hi]
  exact fromBlocks_eq_of_invertible₂₂ A Cᴴ C B

omit [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] in
theorem full_isHermitian (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    (hA : A.IsHermitian) (hB : B.IsHermitian) : (fromBlocks A Cᴴ C B).IsHermitian :=
  hA.fromBlocks (by simp) hB

omit [Fintype m] [DecidableEq m] in
theorem reduced_isHermitian (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian := by
  have hF := (FeshbachHermitian.isHermitian_iff A C B hB).mp (full_isHermitian A C B hA hB)
  exact hF.fromBlocks (by simp) hB

theorem zero_count_schur (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    Fintype.card {i // (full_isHermitian A C B hA hB).eigenvalues i = 0} =
      Fintype.card {i // (reduced_isHermitian A C B hA hB).eigenvalues i = 0} := by
  have hp : (shear C B).det ≠ 0 := by rw [shear_det]; exact one_ne_zero
  have he := zero_count_constructed_congruence
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B)
    (shear C B) (reduced_isHermitian A C B hA hB) hp
  simpa only [← exact_congruence A C B hB] using he

theorem zero_count_schur_posDef (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.PosDef) :
    Fintype.card {i // (full_isHermitian A C B hA hB.isHermitian).eigenvalues i = 0} =
      Fintype.card {i // (reduced_isHermitian A C B hA hB.isHermitian).eigenvalues i = 0} :=
  zero_count_schur A C B hA hB.isHermitian

theorem zero_count_eq_finrank_kernel {σ : Type*} [Fintype σ] [DecidableEq σ]
    (M : Matrix σ σ ℂ) (hM : M.IsHermitian) :
    Fintype.card {i // hM.eigenvalues i = 0} = Module.finrank ℂ (LinearMap.ker M.mulVecLin) := by
  rw [zero_count_eq_dim_sub_rank]
  have hn := M.mulVecLin.finrank_range_add_finrank_ker
  have hd : Module.finrank ℂ (σ → ℂ) = Fintype.card σ := Module.finrank_pi ℂ
  rw [hd] at hn
  change M.rank + Module.finrank ℂ (LinearMap.ker M.mulVecLin) = Fintype.card σ at hn
  omega

/-- Literal sum-indexed full kernel to the existing product-coordinate kernel. -/
def fullKernelCoordinates (A : Matrix m m ℂ) (U : Matrix m n ℂ) (C : Matrix n m ℂ)
    (B : Matrix n n ℂ) :
    LinearMap.ker (fromBlocks A U C B).mulVecLin ≃ₗ[ℂ] LinearMap.ker (Feshbach.blockMap A U C B) where
  toFun z := ⟨(fun i => z.val (Sum.inl i), fun j => z.val (Sum.inr j)), by
    change Feshbach.blockMap A U C B (fun i => z.val (Sum.inl i), fun j => z.val (Sum.inr j)) = 0
    apply Prod.ext
    · ext i
      have hh := congrFun z.property (Sum.inl i)
      change ((fromBlocks A U C B).mulVec z) (Sum.inl i) = 0 at hh
      simpa [Matrix.fromBlocks_mulVec, Feshbach.blockMap_apply, Function.comp_def] using hh
    · ext j
      have hh := congrFun z.property (Sum.inr j)
      change ((fromBlocks A U C B).mulVec z) (Sum.inr j) = 0 at hh
      simpa [Matrix.fromBlocks_mulVec, Feshbach.blockMap_apply, Function.comp_def] using hh⟩
  invFun z := ⟨Sum.elim z.val.1 z.val.2, by
    change (fromBlocks A U C B).mulVec (Sum.elim z.val.1 z.val.2) = 0
    rw [Feshbach.blockMap_eq_fromBlocks]
    have hz : Feshbach.blockMap A U C B z = 0 := z.property
    rw [hz]
    ext i
    cases i <;> rfl⟩
  left_inv z := by apply Subtype.ext; ext i; cases i <;> rfl
  right_inv z := by apply Subtype.ext; rfl
  map_add' x y := by apply Subtype.ext; rfl
  map_smul' r x := by apply Subtype.ext; rfl

theorem zero_count_schur_center (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    Fintype.card {i // (full_isHermitian A C B hA hB).eigenvalues i = 0} =
      Fintype.card {i // ((FeshbachHermitian.isHermitian_iff A C B hB).mp
        (full_isHermitian A C B hA hB)).eigenvalues i = 0} := by
  rw [zero_count_eq_finrank_kernel, zero_count_eq_finrank_kernel]
  exact ((Feshbach.kernelEquiv A Cᴴ C B).trans (fullKernelCoordinates A Cᴴ C B).symm).finrank_eq.symm

#print axioms zero_count_eq_finrank_kernel
#print axioms fullKernelCoordinates
#print axioms zero_count_schur_center

local instance : Invertible (1 : Matrix (Fin 1) (Fin 1) ℂ) := invertibleOne

/-- A genuinely imaginary coupling with a singular (zero) Schur block. -/
def imaginaryCoupling : Matrix (Fin 1) (Fin 1) ℂ := fun _ _ => Complex.I

theorem imaginary_schur_zero :
    Feshbach.schur (1 : Matrix (Fin 1) (Fin 1) ℂ) imaginaryCouplingᴴ imaginaryCoupling 1 = 0 := by
  ext i j
  fin_cases i
  fin_cases j
  simp [Feshbach.schur, imaginaryCoupling, Matrix.mul_apply, Matrix.conjTranspose]

theorem imaginary_reduced_diagonal :
    fromBlocks (0 : Matrix (Fin 1) (Fin 1) ℂ) (0 : Matrix (Fin 1) (Fin 1) ℂ)
      (0 : Matrix (Fin 1) (Fin 1) ℂ) 1 =
    Matrix.diagonal (Sum.elim (fun _ : Fin 1 => (0 : ℂ)) (fun _ : Fin 1 => (1 : ℂ))) := by
  ext i j
  cases i <;> cases j <;> simp [Matrix.fromBlocks, Matrix.diagonal, Matrix.one_apply]

theorem imaginary_fixture_zero_count :
    Fintype.card {i //
      (full_isHermitian (1 : Matrix (Fin 1) (Fin 1) ℂ) imaginaryCoupling 1
        Matrix.isHermitian_one Matrix.isHermitian_one).eigenvalues i = 0} = 1 := by
  rw [zero_count_schur _ _ _ Matrix.isHermitian_one Matrix.isHermitian_one,
    zero_count_eq_dim_sub_rank]
  rw [imaginary_schur_zero, imaginary_reduced_diagonal]
  rw [Matrix.rank_diagonal]
  have hc : Fintype.card {i : Fin 1 ⊕ Fin 1 //
      Sum.elim (fun _ : Fin 1 => (0 : ℂ)) (fun _ : Fin 1 => (1 : ℂ)) i ≠ 0} = 1 := by
    rw [Fintype.card_congr (Equiv.subtypeSum (p := fun i : Fin 1 ⊕ Fin 1 =>
      Sum.elim (fun _ : Fin 1 => (0 : ℂ)) (fun _ : Fin 1 => (1 : ℂ)) i ≠ 0))]
    simp
  rw [hc]
  simp

#print axioms imaginary_schur_zero
#print axioms imaginary_reduced_diagonal
#print axioms imaginary_fixture_zero_count
#print axioms shear_det
#print axioms exact_congruence
#print axioms full_isHermitian
#print axioms reduced_isHermitian
#print axioms zero_count_schur
#print axioms zero_count_schur_posDef
end ContinuousResearch.SchurZero
