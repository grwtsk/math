-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalTransmission.Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CanonicalTransmission.Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/CanonicalTransmission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.ConditionalPassivity

/-!
# Canonical transmission reconstructed from capacity

Functional calculus and the reduced Douglas solution are explicit bridge
data; they are not inferred from an operator digest.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CanonicalTransmission.Variant177fe85677553b4571d7fd655cd6e834571524d7094854f78b182af2f3a8ed2b

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

structure CanonicalTransmission
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime) where
  transmission :
    Finset Prime → model.Operator
  gram :
    Finset Prime → model.Operator
  gram_eq_complement :
    ∀ cut,
      gram cut =
        model.identity - capacity.defect cut
  squareRootFunctionalCalculus : Prop
  squareRootFunctionalCalculusProof :
    squareRootFunctionalCalculus
  gram_monotone_reverse :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (gram target) (gram source)

structure HardyCanonicalTransmissionBridge
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {capacity :
      PrimeCutDefectCapacity model Prime}
    (canonical :
      CanonicalTransmission capacity) where
  hardyTransmission :
    Finset Prime → model.Operator
  comparisonDefect :
    Finset Prime → model.Operator
  comparison :
    ∀ cut,
      hardyTransmission cut =
        canonical.transmission cut +
          comparisonDefect cut

end Mathematics.SemiLocalDefect.Hardy
