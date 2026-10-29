-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FinitePrimeSpoke.Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FinitePrimeSpoke.Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Arithmetic/PrimeSpokes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LinearAlgebra.FinitePrimeSpoke.Variantd4ac12273b41da1f65e111b6ad4acaf4e76c13325ea620c70e98324d22b58f47

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
