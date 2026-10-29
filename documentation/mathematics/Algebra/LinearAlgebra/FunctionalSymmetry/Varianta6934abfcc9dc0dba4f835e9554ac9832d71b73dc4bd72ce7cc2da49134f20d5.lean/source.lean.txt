-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FunctionalSymmetry.Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FunctionalSymmetry.Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/FunctionalSymmetry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.SelfAdjoint
import Mathlib.Algebra.Module.LinearMap.Basic

/-!
# Unitary-profile functional symmetry

The exact algebraic theorem sends an eigenpair at `λ` to an eigenpair at
`-λ` when a linear involution anticommutes with the operator.  Analytic
unitarity and arithmetic interpretation remain separate certificate fields.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FunctionalSymmetry.Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f

namespace Mathematics.SpectralClosure

structure FunctionalSymmetry
    (Vector : Type)
    [AddCommGroup Vector] [Module ℝ Vector] where
  operator : Vector →ₗ[ℝ] Vector
  involution : Vector →ₗ[ℝ] Vector
  involutive :
    involution.comp involution = LinearMap.id
  anticommutes :
    operator.comp involution =
      -(involution.comp operator)
  unitaryStatement : Prop
  unitaryStatus : ProofDisposition

def IsEigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (operator : Vector →ₗ[ℝ] Vector)
    (eigenvalue : ℝ)
    (vector : Vector) : Prop :=
  operator vector = eigenvalue • vector

theorem functional_symmetry_reflects_eigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (symmetry : FunctionalSymmetry Vector)
    (eigenvalue : ℝ)
    (vector : Vector)
    (eigenpair :
      IsEigenpair symmetry.operator eigenvalue vector) :
    IsEigenpair symmetry.operator (-eigenvalue)
      (symmetry.involution vector) := by
  unfold IsEigenpair at eigenpair ⊢
  have antiAt :=
    LinearMap.congr_fun symmetry.anticommutes vector
  simp only [LinearMap.comp_apply, LinearMap.neg_apply] at antiAt
  calc
    symmetry.operator (symmetry.involution vector) =
        -(symmetry.involution (symmetry.operator vector)) := antiAt
    _ = -(symmetry.involution (eigenvalue • vector)) := by
          rw [eigenpair]
    _ = (-eigenvalue) • symmetry.involution vector := by
          simp

structure ArithmeticPurityObligation where
  modelCriticalLineStatement : Prop
  arithmeticIdentificationStatement : Prop
  arithmeticStatus : ProofDisposition

end Mathematics.SpectralClosure
