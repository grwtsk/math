-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/SpectralClosure/InvariantLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SpectralClosure.Contraction

/-!
# Invariant-law certificates and honest existence boundary
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLawCertificate.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d

namespace Mathematics.SpectralClosure

structure InvariantLawCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  law : FiniteLaw X
  invariant : IsInvariantLaw kernel law
  proofRef : SpectralId

structure FiniteInvariantLawExistenceObligation
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X) where
  existenceStatement : ∃ law, IsInvariantLaw kernel law
  status : ProofDisposition

inductive BoundaryTailClassification
  | exactBoundaryLaw
  | residualBoundaryLaw
  | unboundedBoundaryDefect
  | unknownBoundaryTail
  deriving DecidableEq, Repr

structure BoundaryTailCertificate where
  classification : BoundaryTailClassification
  residualRadius : Option ℝ
  classificationStatement : Prop
  status : ProofDisposition

theorem certified_invariant_laws_coincide
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (metric : LawMetric X)
    (contraction : ContractionCertificate kernel metric)
    (left right : InvariantLawCertificate kernel) :
    left.law = right.law :=
  invariantLaw_unique_under_strict_contraction
    kernel metric contraction left.law right.law
    left.invariant right.invariant

end Mathematics.SpectralClosure
