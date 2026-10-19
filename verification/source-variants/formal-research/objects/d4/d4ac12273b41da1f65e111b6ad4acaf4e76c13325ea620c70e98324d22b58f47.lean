import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Hilbert.Finite
import Mathlib.Data.Matrix.Reflection
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring

/-!
# Optional finite-prime spokes

Only a finite family of prime-power observations is represented.  The module
proves Hermiticity of each exact block and of their finite block sum.  It makes
no convergence, trace-formula, or infinite-prime-operator claim.
-/

noncomputable section

namespace DAF.Arithmetic

open scoped ComplexConjugate

/-- One finite prime-power spoke with a real test coefficient.  Primality is
retained as evidence because it matters to arithmetic interpretation, though
Hermiticity itself uses only conjugation. -/
structure FinitePrimeSpoke where
  prime : Nat
  primeCertified : Nat.Prime prime
  exponent : Nat
  exponent_pos : 0 < exponent
  coefficient : ℝ

/-- Character value at the selected prime power. -/
def FinitePrimeSpoke.characterValue
    (spoke : FinitePrimeSpoke)
    (chi : PrimitiveDirichletCharacter) : ℂ :=
  chi.character (spoke.prime : ZMod chi.conductor) ^ spoke.exponent

/-- Exact Hermitian two-sheet spoke block. -/
def finitePrimeSpokeBlock
    (chi : PrimitiveDirichletCharacter)
    (spoke : FinitePrimeSpoke) : Matrix (Fin 2) (Fin 2) ℂ :=
  !![0, (spoke.coefficient : ℂ) * conj (spoke.characterValue chi);
     (spoke.coefficient : ℂ) * spoke.characterValue chi, 0]

theorem finitePrimeSpokeBlock_selfAdjoint
    (chi : PrimitiveDirichletCharacter)
    (spoke : FinitePrimeSpoke) :
    (finitePrimeSpokeBlock chi spoke).IsHermitian := by
  rw [Matrix.IsHermitian]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [finitePrimeSpokeBlock, Matrix.conjTranspose_apply]

/-- A finite spoke operator is a block-diagonal family indexed by a finite
type. -/
def finitePrimeSpokeOperator
    {SpokeIndex : Type} [Fintype SpokeIndex] [DecidableEq SpokeIndex]
    (chi : PrimitiveDirichletCharacter)
    (spokes : SpokeIndex → FinitePrimeSpoke) :
    Matrix (Fin 2 × SpokeIndex) (Fin 2 × SpokeIndex) ℂ :=
  Matrix.blockDiagonal fun index ↦ finitePrimeSpokeBlock chi (spokes index)

theorem finitePrimeSpokeOperator_selfAdjoint
    {SpokeIndex : Type} [Fintype SpokeIndex] [DecidableEq SpokeIndex]
    (chi : PrimitiveDirichletCharacter)
    (spokes : SpokeIndex → FinitePrimeSpoke) :
    (finitePrimeSpokeOperator chi spokes).IsHermitian := by
  exact Matrix.isHermitian_blockDiagonal_iff.mpr fun index ↦
    finitePrimeSpokeBlock_selfAdjoint chi (spokes index)

end DAF.Arithmetic
