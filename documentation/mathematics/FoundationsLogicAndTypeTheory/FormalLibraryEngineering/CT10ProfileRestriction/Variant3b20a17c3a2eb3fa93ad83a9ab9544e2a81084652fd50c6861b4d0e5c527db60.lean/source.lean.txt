-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","mathematical_subject":"Foundations.Unclassified","original_sha256":"c5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/CT10_ProfileRestriction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct10ProfileRestriction.Variantc5e407a17b313bd748382ba169b41ab077af91082c32716382722bd934bf4b2f

namespace FCRS.Theorems

/--
CT-10: restriction to the selected profiles.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct10_profileRestriction
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT10Claim S :=
  registry.ct10

end FCRS.Theorems
