-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChernRealizationAdditive.Variant636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ChernRealizationAdditive.Variant636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb","mathematical_subject":"Foundations.Unclassified","original_sha256":"636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/ChernRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.ChernRealization

/-!
# Folder.Theorem.DerivedSheaf.ChernRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Chern realization facts, not BinaryMatrix data.
Ontology: derived.chern_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ChernRealizationAdditive.Variant636a534c8b6f6d2b73514356a6f3be23e016ee973f3c08ed055b33d269d312eb

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem chern_realization_additive
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.additive :=
  Folder.DerivedSheaf.chern_realization_additive ch

theorem chern_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.compatibleWithPerfectComplexes :=
  Folder.DerivedSheaf.chern_realization_compatible ch

end DerivedSheaf
end Theorem
end Folder
