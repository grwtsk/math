-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","mathematical_subject":"Foundations.Unclassified","original_sha256":"f8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/TAN01_EffectiveTannaka.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tan01EffectiveTannaka.Variantf8192aa34b6999c697b07260a34d84d630f34ebcbf6e0ae8dfea9ad6540f4eb2

namespace FCRS.Algebraization.Theorems

/-- Tannakian reconstruction with values in effective Henselian semantics. -/
theorem tan01_effectiveTannaka
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    TAN01Claim S :=
  registry.tan01

end FCRS.Algebraization.Theorems
