-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","mathematical_subject":"Foundations.Unclassified","original_sha256":"da05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/ProjectionProfile/Capacity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.ProjectionProfile.Definition

/-!
# Projection-capacity primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SoninProjectionProfileCapacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7

namespace Mathematics.SemiLocalDefect.SoninCore

def SoninProjectionProfile.capacity
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection S

theorem SoninProjectionProfile.capacity_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    OperatorNonnegative
      (P.capacity S) :=
  (P.projection_isProjection S).nonnegative

theorem SoninProjectionProfile.capacity_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    OperatorLE
      (P.capacity S)
      (P.capacity T) :=
  P.projection_mono hST

end Mathematics.SemiLocalDefect.SoninCore
