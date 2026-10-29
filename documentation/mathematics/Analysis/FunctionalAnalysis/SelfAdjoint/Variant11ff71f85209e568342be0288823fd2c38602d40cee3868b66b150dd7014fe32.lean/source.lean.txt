-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SelfAdjointCoefficientCertificate.Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SelfAdjointCoefficientCertificate.Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73","mathematical_subject":"Foundations.Unclassified","original_sha256":"043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/SelfAdjoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.CrossedProduct

/-!
# Finite self-adjoint coefficient check

Over real coefficients, self-adjointness is symmetry of the represented finite
matrix.  The construction theorem consumes an explicit coefficient-symmetry
certificate.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.SelfAdjointCoefficientCertificate.Variant043d5ac0bac9c2e6078e759b929aa286346c39e0c8564b9da7af5ad20792cd73

namespace Mathematics.SpectralClosure

abbrev FiniteOperator (Index : Type) :=
  Index → Index → ℝ

def IsSelfAdjoint
    {Index : Type}
    (operator : FiniteOperator Index) : Prop :=
  ∀ row column, operator row column = operator column row

def diagonalOperator
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    FiniteOperator Index :=
  fun row column =>
    if row = column then potential row else 0

def addOperator
    {Index : Type}
    (left right : FiniteOperator Index) :
    FiniteOperator Index :=
  fun row column => left row column + right row column

theorem diagonalOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    IsSelfAdjoint (diagonalOperator potential) := by
  intro row column
  by_cases same : row = column
  · subst column
    rfl
  · have reverse : column ≠ row := Ne.symm same
    simp [diagonalOperator, same, reverse]

structure SelfAdjointCoefficientCertificate
    {Index : Type}
    (transport : FiniteOperator Index) where
  transportSymmetry :
    ∀ row column,
      transport row column = transport column row
  proofRef : SpectralId

theorem crossedProductOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ)
    (transport : FiniteOperator Index)
    (certificate : SelfAdjointCoefficientCertificate transport) :
    IsSelfAdjoint
      (addOperator
        (diagonalOperator potential)
        transport) := by
  intro row column
  unfold addOperator
  rw [diagonalOperator_selfAdjoint potential row column]
  rw [certificate.transportSymmetry row column]

structure JordanSemisimplicityObligation
    {Index : Type}
    (operator : FiniteOperator Index) where
  diagonalizableStatement : Prop
  zeroJordanContributionStatement : Prop
  status : ProofDisposition

end Mathematics.SpectralClosure
