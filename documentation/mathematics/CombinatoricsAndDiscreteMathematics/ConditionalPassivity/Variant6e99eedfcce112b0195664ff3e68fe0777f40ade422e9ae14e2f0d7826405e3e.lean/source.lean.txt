-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ConditionalPlacePassivity.Variant1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ConditionalPlacePassivity.Variant1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/ConditionalPassivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.HardyDefect

/-!
# Conditional place passivity

Quasi-inner compactness and monotone Hardy defect growth are independent
certificates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ConditionalPlacePassivity.Variant1f7fa4b67c1864e2d59dd9088062a43fbf09401b162ecd542b32c55338f69fd2

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime

def hardyInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (hardy : HardyDefectFamily model Prime)
    (cut : Finset Prime)
    (prime : Prime) :
    model.Operator :=
  hardy.defect (insert prime cut) -
    hardy.defect cut

structure ConditionalPlacePassivity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (hardy : HardyDefectFamily model Prime) where
  passive :
    ∀ cut prime,
      model.Nonnegative
        (hardyInteraction hardy cut prime)
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (hardy.defect source)
        (hardy.defect target)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (hardy.defect cut) model.identity

def ConditionalPlacePassivity.toCapacity
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {hardy : HardyDefectFamily model Prime}
    (passivity :
      ConditionalPlacePassivity hardy) :
    PrimeCutDefectCapacity model Prime where
  defect := hardy.defect
  selfAdjoint := hardy.selfAdjoint
  nonnegative := hardy.nonnegative
  boundedByIdentity :=
    passivity.boundedByIdentity
  monotone := passivity.monotone
  digest := ⟨hardy.digest.value⟩

end Mathematics.SemiLocalDefect.Hardy
