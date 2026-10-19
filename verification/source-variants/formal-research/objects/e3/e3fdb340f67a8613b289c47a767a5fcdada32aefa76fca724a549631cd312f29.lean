import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Matrix block Schur reduction

This module specializes the Positive Atlas provenance reduction to concrete
finite coordinate spaces.

A matrix block realization records the provenance matrix A, cross matrix B,
autonomous matrix C, and a two-sided inverse witness for A.  The compatibility
fields identify those matrices with the corresponding blocks of an ambient
PositiveForm.  From this data the module constructs the explicit solver

  Ainv * B,

proves the block normal equations, and identifies the Schur residual in matrix
coordinates.

The final matrix-product normalization C - Bᵀ Ainv B is left to a subsequent
module; this file establishes the coordinate formula required for that step.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ]

/-- A concrete finite-coordinate realization of an ambient positive block form. -/
structure MatrixBlockRealization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ))) where
  provenanceMatrix : Matrix ι ι ℝ
  crossMatrix : Matrix ι κ ℝ
  autonomousMatrix : Matrix κ κ ℝ
  inverseProvenanceMatrix : Matrix ι ι ℝ
  mul_inverse : provenanceMatrix * inverseProvenanceMatrix = 1
  inverse_mul : inverseProvenanceMatrix * provenanceMatrix = 1
  provenance_block : ∀ p q,
    G.form (provenanceInclusion p) (provenanceInclusion q) =
      p ⬝ᵥ provenanceMatrix.mulVec q
  cross_block : ∀ p u,
    G.form (provenanceInclusion p) (autonomousInclusion u) =
      p ⬝ᵥ crossMatrix.mulVec u
  autonomous_block : ∀ u v,
    G.form (autonomousInclusion u) (autonomousInclusion v) =
      u ⬝ᵥ autonomousMatrix.mulVec v

namespace MatrixBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The explicit matrix normal-equation solver Ainv * B. -/
def solve (D : MatrixBlockRealization G) :
    (κ → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  D.inverseProvenanceMatrix.mulVecLin.comp D.crossMatrix.mulVecLin

@[simp]
theorem solve_apply (D : MatrixBlockRealization G) (u : κ → ℝ) :
    D.solve u =
      D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u) :=
  rfl

/-- Multiplication by A sends the explicit solver back to the cross block. -/
theorem provenance_mulVec_solve (D : MatrixBlockRealization G) (u : κ → ℝ) :
    D.provenanceMatrix.mulVec (D.solve u) =
      D.crossMatrix.mulVec u := by
  rw [solve_apply]
  rw [Matrix.mulVec_mulVec]
  rw [D.mul_inverse]
  exact Matrix.one_mulVec (D.crossMatrix.mulVec u)

omit [Fintype ι] [DecidableEq ι] [Fintype κ] in
private theorem form_sub_right
    (H : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (x y z : (ι → ℝ) × (κ → ℝ)) :
    H.form x (y - z) = H.form x y - H.form x z := by
  rw [sub_eq_add_neg, H.add_right]
  have h := H.smul_right (-1 : ℝ) x z
  simp only [neg_smul, one_smul, neg_mul, one_mul] at h
  rw [h]
  ring

/-- The explicit matrix solver satisfies the block normal equations. -/
def blockSchurSolver (D : MatrixBlockRealization G) :
    BlockSchurSolver G where
  solve := D.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [D.cross_block, D.provenance_block]
    rw [D.provenance_mulVec_solve]
    ring

@[simp]
theorem blockSchurSolver_solve (D : MatrixBlockRealization G) :
    D.blockSchurSolver.solve = D.solve :=
  rfl

/-- The coordinate Schur residual is the autonomous matrix pairing minus the
energy of the explicit provenance correction. -/
theorem schur_eq_matrix_coordinates
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    D.blockSchurSolver.schurForm.form u v =
      u ⬝ᵥ D.autonomousMatrix.mulVec v -
        (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec v := by
  rw [D.blockSchurSolver.schurForm_eq_sub]
  rw [D.autonomous_block, D.provenance_block]
  rw [D.blockSchurSolver_solve, D.provenance_mulVec_solve v, D.solve_apply]

/-- The explicit matrix Schur subtraction is nonnegative on the diagonal. -/
theorem matrix_schur_diagonal_nonnegative
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    0 ≤
      u ⬝ᵥ D.autonomousMatrix.mulVec u -
        (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u := by
  rw [← D.schur_eq_matrix_coordinates u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- The pure autonomous block energy decomposes into explained provenance energy
plus the positive matrix Schur residual. -/
theorem matrix_autonomous_energy_decomposition
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        D.blockSchurSolver.schurForm.form u u := by
  linarith [D.schur_eq_matrix_coordinates u u]

end MatrixBlockRealization

end FormalResearch.PositiveAtlas
