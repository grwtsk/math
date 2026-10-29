-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedObjectLocalized.Variant2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DerivedObjectLocalized.Variant2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230","mathematical_subject":"Foundations.Unclassified","original_sha256":"2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/DerivedObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.Theorem.DerivedSheaf.DerivedObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived-object boundary facts, not BinaryMatrix data.
Ontology: derived.derived_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivedObjectLocalized.Variant2824204f1d6673a4fca203043bb6ecaabb43b49f9acd9cbf43130d789d1d4230

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem derived_object_localized
    (D : Folder.DerivedSheaf.DerivedObject) :
    D.localizationByQuasiIso :=
  Folder.DerivedSheaf.derived_object_localized D

theorem quasi_iso_induces_cohomology_iso
    {A B : Folder.DerivedSheaf.SectionComplex}
    (q : Folder.DerivedSheaf.QuasiIsomorphism A B) :
    q.inducesCohomologyIso :=
  Folder.DerivedSheaf.quasi_iso_induces_cohomology_iso q

end DerivedSheaf
end Theorem
end Folder
