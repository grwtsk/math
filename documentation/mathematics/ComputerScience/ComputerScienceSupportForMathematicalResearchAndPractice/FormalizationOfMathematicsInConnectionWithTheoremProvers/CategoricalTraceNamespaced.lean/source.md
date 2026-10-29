# Categorical Trace Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `073abdf595923fa2a0e3e7a6ed30cd768596dc42` · SHA-256 `830ebb30b6cf74112bd9d7ffdef9bafb81845f7e272902550940b311bc24d44c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=809814e78cf378ab95aafd7a41b6d7df3a2b54ac0bcd55be65fc6ada52b3ba9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CategoricalTrace/Variant5cf61881a08e68af92f244aa6a2544712751ae7c5f41c774944a59bbed892a9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
