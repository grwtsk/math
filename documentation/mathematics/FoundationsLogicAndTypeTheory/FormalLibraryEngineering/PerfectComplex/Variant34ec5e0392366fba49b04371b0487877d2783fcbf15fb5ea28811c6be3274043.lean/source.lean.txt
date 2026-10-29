-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplexDualizable.Variant684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PerfectComplexDualizable.Variant684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1","mathematical_subject":"Foundations.Unclassified","original_sha256":"684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/PerfectComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.Theorem.DerivedSheaf.PerfectComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports perfect-complex facts, not BinaryMatrix data.
Ontology: derived.perfect_complex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PerfectComplexDualizable.Variant684a0fc2c0c37256319b63b6359e47cb124e9954bee7f2227349f59d6d2e29d1

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem perfect_complex_dualizable
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.dualizable :=
  Folder.DerivedSheaf.perfect_complex_dualizable P

theorem perfect_complex_locally_finite
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.locallyFinitePresentation :=
  Folder.DerivedSheaf.perfect_complex_locally_finite P

theorem perfect_complex_bounded_tor
    (P : Folder.DerivedSheaf.PerfectComplex) :
    P.boundedTorAmplitude :=
  Folder.DerivedSheaf.perfect_complex_bounded_tor P

end DerivedSheaf
end Theorem
end Folder
