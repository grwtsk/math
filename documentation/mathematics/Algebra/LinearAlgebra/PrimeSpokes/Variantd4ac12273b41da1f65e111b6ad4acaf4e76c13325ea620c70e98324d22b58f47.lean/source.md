# Complete source: GRWTSK.Algebra.LinearAlgebra.PrimeSpokes.Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `141839729528779496e4b704141f2d454ebf7efb` · SHA-256 `d4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8051455bab76e263ac0b94a6298a7fd4baa0970be9fa4e47b74460559b9f7eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrimeSpokes/Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
