-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SolverChoiceComparison.Variante7dbc8bd86858f902dcff6b1eca90368efeaf92aacfc9a02d5814172909769a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7dbc8bd86858f902dcff6b1eca90368efeaf92aacfc9a02d5814172909769a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SolverChoiceComparison.Variante7dbc8bd86858f902dcff6b1eca90368efeaf92aacfc9a02d5814172909769a4","mathematical_subject":"Logic.Foundations","original_sha256":"e7dbc8bd86858f902dcff6b1eca90368efeaf92aacfc9a02d5814172909769a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/CertificationSolverChoice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.CertificationEquivalence
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient

/-!
# Coherent comparison of actual solver-choice Structural Quines

The existing solver-choice quotient supplies the actual sufficient representation,
minimality and reconstruction section. Its comparison is unique and preserves
all independently specified residual bilinear pairings.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SolverChoiceComparison.Variante7dbc8bd86858f902dcff6b1eca90368efeaf92aacfc9a02d5814172909769a4

namespace FormalResearch.PositiveAtlas

universe u v

namespace PhaseIIResidualQuotient

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]
variable {G : PositiveForm (P × U)}

/-- The existing solver-choice Structural Quines have the unique coherent
comparison supplied by their sections and their actual minimality proofs. -/
noncomputable def solverChoiceComparison (Q R : PhaseIIResidualQuotient G) : Unit ≃ Unit :=
  StructuralQuine.comparison Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine

theorem solverChoiceComparison_eq_refl (Q R : PhaseIIResidualQuotient G) :
    solverChoiceComparison Q R = Equiv.refl Unit := by
  apply Equiv.ext
  intro x
  have hs := StructuralQuine.comparison_compress
    Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine Q.representative
  cases x
  exact hs

/-- Every residual pairing is preserved by the actual solver-choice comparison. -/
theorem solverChoiceComparison_pairing (Q R : PhaseIIResidualQuotient G)
    (uv : U × U) (x : Unit) :
    R.solverChoiceRepresentation.recover uv (solverChoiceComparison Q R x) =
      Q.solverChoiceRepresentation.recover uv x :=
  StructuralQuine.comparison_recover
    Q.solverChoiceStructuralQuine R.solverChoiceStructuralQuine uv x

end PhaseIIResidualQuotient

end FormalResearch.PositiveAtlas
