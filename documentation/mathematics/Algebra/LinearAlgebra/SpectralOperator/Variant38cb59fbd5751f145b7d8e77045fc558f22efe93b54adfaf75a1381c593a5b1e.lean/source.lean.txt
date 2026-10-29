-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BitfieldOperatorExpansion.Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BitfieldOperatorExpansion.Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/SpectralOperator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathematics.ConnesBitfield.System

/-!
# Bitfield-generated finite spectral operators

The Walsh expansion is finite and every accepted operator is Hermitian.
Functional symmetry is a separate involutive certificate.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BitfieldOperatorExpansion.Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649

namespace Mathematics.ConnesBitfield

open scoped BigOperators ComplexConjugate

structure BitfieldOperatorExpansion
    (system : RandomBitfieldSystem)
    (dim : Nat) where
  baseline : Matrix (Fin dim) (Fin dim) ℂ
  baselineHermitian : baseline.IsHermitian
  activeInteractions :
    Finset (Finset (Fin system.bits))
  interaction :
    Finset (Fin system.bits) →
      Matrix (Fin dim) (Fin dim) ℂ
  interactionHermitian :
    ∀ support,
      (interaction support).IsHermitian

noncomputable def BitfieldOperatorExpansion.operator
    {system : RandomBitfieldSystem}
    {dim : Nat}
    (expansion : BitfieldOperatorExpansion system dim)
    (state : Bitfield system.bits) :
    Matrix (Fin dim) (Fin dim) ℂ :=
  expansion.baseline +
    ∑ support ∈ expansion.activeInteractions,
      ((walshCharacter state support : ℝ) : ℂ) •
        expansion.interaction support

structure BitfieldSpectralOperator
    (system : RandomBitfieldSystem) where
  dim : Nat
  dimPositive : 0 < dim
  operator :
    Bitfield system.bits →
      Matrix (Fin dim) (Fin dim) ℂ
  selfAdjoint :
    ∀ state,
      (operator state).IsHermitian
  involution :
    Matrix (Fin dim) (Fin dim) ℂ
  involutionSquared :
    involution * involution = 1
  involutionUnitary :
    involutionᴴ * involution = 1
  functionalSymmetry :
    ∀ state,
      involution * operator state * involution =
        -operator (system.phase state)

structure BitfieldOperatorRealization
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system) where
  expansion :
    BitfieldOperatorExpansion system spectral.dim
  realizesExpansion :
    ∀ state,
      spectral.operator state =
        expansion.operator state

/-- Expectation against the pushforward operator ensemble. -/
noncomputable def operatorEnsembleExpectation
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (observable :
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ →
        ℂ) : ℂ :=
  system.law.expectation
    (fun state =>
      observable (spectral.operator state))

def spectralParameter (eigenvalue : ℝ) : ℂ :=
  (1 / 2 : ℂ) + Complex.I * eigenvalue

theorem spectralParameter_realPart
    (eigenvalue : ℝ) :
    (spectralParameter eigenvalue).re = (1 : ℝ) / 2 := by
  simp [spectralParameter]

/--
Operator sign reversal pairs `λ` with `-λ`.  On the parameter plane this is
complex conjugation, equivalently `s ↦ 1 - s`.
-/
theorem spectralParameter_neg
    (eigenvalue : ℝ) :
    spectralParameter (-eigenvalue) =
      star (spectralParameter eigenvalue) := by
  apply Complex.ext <;>
    simp [spectralParameter]

theorem spectralParameter_neg_eq_one_sub
    (eigenvalue : ℝ) :
    spectralParameter (-eigenvalue) =
      1 - spectralParameter eigenvalue := by
  apply Complex.ext <;>
    simp [spectralParameter]

/--
The standard functional-equation map `s ↦ 1 - conjugate s` fixes every point
on the model critical line.  It is distinct from the `λ ↦ -λ` pairing above.
-/
theorem spectralParameter_functional_fixed
    (eigenvalue : ℝ) :
    1 - star (spectralParameter eigenvalue) =
      spectralParameter eigenvalue := by
  apply Complex.ext <;>
    simp [spectralParameter]

noncomputable def finiteSpectralDeterminant
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system)
    (parameter : ℂ)
    (state : Bitfield system.bits) : ℂ :=
  Matrix.det
    (((parameter - (1 / 2 : ℂ)) •
        (1 :
          Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ)) -
      Complex.I • spectral.operator state)

end Mathematics.ConnesBitfield
