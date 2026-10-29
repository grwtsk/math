-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KtheoryIndexClassOfPerfectComplex.Variant962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KtheoryIndexClassOfPerfectComplex.Variant962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899","mathematical_subject":"Foundations.Unclassified","original_sha256":"962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/KTheoryIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.Theorem.DerivedSheaf.KTheoryIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory index facts, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KtheoryIndexClassOfPerfectComplex.Variant962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_index_class_of_perfect_complex
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    I.classOfPerfectComplex :=
  Folder.DerivedSheaf.ktheory_index_class_of_perfect_complex I

theorem ktheory_index_has_class
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    ∃ c : Folder.DerivedSheaf.KTheoryClass M.K, c = I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_has_class I

end DerivedSheaf
end Theorem
end Folder
