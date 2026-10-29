import DAF.Arithmetic.GammaSpindle
import DAF.Hilbert.DifferentialComplex
import Mathlib.LinearAlgebra.Matrix.Kronecker
import Mathlib.Tactic.NoncommRing

/-!
# Graded finite DAF Hodge--Dirac operator

This module combines an exact finite terrain complex with any exact finite
Hermitian spindle matrix.  The grading anticommutation proof is data, so the
cross-term cancellation in `dafTotalOperator_sq` cannot be selected by a
runtime flag.
-/

noncomputable section

namespace DAF.Hilbert

open scoped Kronecker
open scoped InnerProductSpace

universe u v

/-- A finite differential complex with a Hermitian involutive grading that
anticommutes with its Hodge--Dirac matrix. -/
structure GradedTerrainComplex
    (Index : Type u) [Fintype Index] [DecidableEq Index] where
  complex : FiniteDifferentialComplex Index
  grading : FiniteOperator Index Index
  grading_isHermitian : grading.IsHermitian
  grading_square : grading * grading = 1
  grading_anticommutes :
    complex.hodgeDirac * grading + grading * complex.hodgeDirac = 0

namespace GradedTerrainComplex

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

/-- The finite product Hilbert carrier. -/
abbrev DAFHilbert
    (Index : Type u) (SpindleIndex : Type v)
    [Fintype Index] [Fintype SpindleIndex] :=
  FiniteHilbert (Index × SpindleIndex)

/-- `D_terrain ⊗ I + Γ_terrain ⊗ D_spindle`. -/
def DAFTotalOperator
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) :
    FiniteOperator (Index × SpindleIndex) (Index × SpindleIndex) :=
  terrain.complex.hodgeDirac ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
    terrain.grading ⊗ₖ spindle

/-- The total finite matrix is Hermitian. -/
theorem dafTotalOperator_selfAdjoint
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex)
    (spindleHermitian : spindle.IsHermitian) :
    (terrain.DAFTotalOperator spindle).IsHermitian := by
  rw [Matrix.IsHermitian]
  simp only [DAFTotalOperator, Matrix.conjTranspose_add,
    Matrix.conjTranspose_kronecker]
  rw [terrain.complex.hodgeDirac_isHermitian.eq,
    terrain.grading_isHermitian.eq, spindleHermitian.eq]
  simp

/-- The exact square has no mixed term. -/
theorem dafTotalOperator_sq
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) :
    terrain.DAFTotalOperator spindle * terrain.DAFTotalOperator spindle =
      (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) ⊗ₖ
          (1 : Matrix SpindleIndex SpindleIndex ℂ) +
        (1 : Matrix Index Index ℂ) ⊗ₖ (spindle * spindle) := by
  let D := terrain.complex.hodgeDirac
  let G := terrain.grading
  let S := spindle
  calc
    terrain.DAFTotalOperator spindle * terrain.DAFTotalOperator spindle =
        (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) *
            (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) +
          (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) * (G ⊗ₖ S) +
          (G ⊗ₖ S) * (D ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ)) +
          (G ⊗ₖ S) * (G ⊗ₖ S) := by
            simp only [DAFTotalOperator, D, G, S]
            noncomm_ring
    _ = (D * D) ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (D * G + G * D) ⊗ₖ S +
          (G * G) ⊗ₖ (S * S) := by
      rw [← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul, Matrix.one_mul,
        ← Matrix.mul_kronecker_mul, Matrix.mul_one,
        ← Matrix.mul_kronecker_mul]
      rw [Matrix.add_kronecker]
      abel
    _ = (D * D) ⊗ₖ (1 : Matrix SpindleIndex SpindleIndex ℂ) +
          (1 : Matrix Index Index ℂ) ⊗ₖ (S * S) := by
      rw [show D * G + G * D = 0 from terrain.grading_anticommutes,
        Matrix.zero_kronecker]
      simp only [add_zero]
      rw [show G * G = 1 from terrain.grading_square]
    _ = _ := rfl

/-- The exact Gamma-spindle specialization of the total square. -/
theorem dafGammaTotalOperator_sq
    (terrain : GradedTerrainComplex Index)
    (chi : Arithmetic.PrimitiveCharacter)
    (t : ℝ) :
    terrain.DAFTotalOperator (Arithmetic.GammaSpindleDirac chi t) *
        terrain.DAFTotalOperator (Arithmetic.GammaSpindleDirac chi t) =
      (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) ⊗ₖ
          (1 : Matrix (Fin 2) (Fin 2) ℂ) +
        (1 : Matrix Index Index ℂ) ⊗ₖ
          (Arithmetic.GammaSpindleDirac chi t *
            Arithmetic.GammaSpindleDirac chi t) :=
  terrain.dafTotalOperator_sq (Arithmetic.GammaSpindleDirac chi t)

/-- Matrix positivity is retained as an explicit quadratic-form predicate.
It is a theorem for the square of the Hermitian total operator. -/
def PositiveSquare
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex) : Prop :=
  ∀ vector : DAFHilbert Index SpindleIndex,
    0 ≤ (inner ℂ
      ((terrain.DAFTotalOperator spindle).toLinearMap
        ((terrain.DAFTotalOperator spindle).toLinearMap vector))
      vector).re

/-- The square of the finite self-adjoint total operator has nonnegative
quadratic form. -/
theorem dafTotalOperator_positiveSquare
    {SpindleIndex : Type v}
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    (terrain : GradedTerrainComplex Index)
    (spindle : FiniteOperator SpindleIndex SpindleIndex)
    (spindleHermitian : spindle.IsHermitian) :
    terrain.PositiveSquare spindle := by
  intro vector
  let total := terrain.DAFTotalOperator spindle
  have totalHermitian : total.IsHermitian :=
    terrain.dafTotalOperator_selfAdjoint spindle spindleHermitian
  have totalSymmetric : total.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff total |>.mpr totalHermitian
  change 0 ≤ (inner ℂ
    (total.toLinearMap (total.toLinearMap vector)) vector).re
  rw [totalSymmetric (total.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := total.toLinearMap vector)

end GradedTerrainComplex

end DAF.Hilbert
