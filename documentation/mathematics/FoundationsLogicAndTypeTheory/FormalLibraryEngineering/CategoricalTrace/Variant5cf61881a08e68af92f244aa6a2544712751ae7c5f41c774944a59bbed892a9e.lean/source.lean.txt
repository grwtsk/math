-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTraceCyclic.Variantb4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CategoricalTraceCyclic.Variantb4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c","mathematical_subject":"Foundations.Unclassified","original_sha256":"b4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/CategoricalTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.CategoricalTrace
import Folder.CrystallineTensor.HattoriStallingsTrace

/-!
# Folder.Theorem.CrystallineTensor.CategoricalTrace

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports categorical trace boundary facts.
Ontology: proof.crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CategoricalTraceCyclic.Variantb4561603defca634d1a56efa074dba43d3f4b41fd77ecea283373364ff93d03c

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace CategoricalTrace

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : Folder.CrystallineTensor.CategoricalTrace alpha) :
    T.cyclic :=
  Folder.CrystallineTensor.categorical_trace_cyclic T

theorem hattori_stallings_trace_defined
    (T : Folder.CrystallineTensor.HattoriStallingsTraceContract) :
    T.traceDefined :=
  Folder.CrystallineTensor.hattori_stallings_trace_defined T

end CategoricalTrace
end CrystallineTensor
end Theorem
end Folder
