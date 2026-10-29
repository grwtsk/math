/-
FinitePrimeBlocksAndBlockDiagonalHermiticity — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47
Organized SHA-256: fdde04060d05c23d75570ba4f5019f7ba6bcbbdfade1eda0e44546909fcbefa1
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete finite prime-power package retains certified primality, positive exponent and real coefficient; exact character value; Hermitian two-sheet block and finite block-diagonal family with both full proof terms. Primality/exponent premises remain even though Hermiticity only uses conjugation. No infinite sum, convergence, trace formula, analytic operator or arithmetic realization is supplied. -/

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
