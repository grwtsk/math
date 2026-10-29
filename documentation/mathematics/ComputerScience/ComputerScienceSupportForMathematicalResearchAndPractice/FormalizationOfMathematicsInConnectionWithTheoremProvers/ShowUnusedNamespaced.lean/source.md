# Show Unused Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cb4acbb55a09780b044f8d2dfff5edb96e788de` · SHA-256 `6de1f35d28173ad8e2f41c225eeb3038c738434f37e71b5f20e9fec169267abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/show_unused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.ShowUnused


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant2283ad7f843c0d0aa6d42e99d70805faeab59b47fbd9d98b25f7c6af53dca200

def foo := 1
def baz := 2
def bar := foo

/--
warning: #show_unused (line 14) says:
baz is not used transitively by [bar]
---
warning: unused definitions in this file:
baz
-/
#guard_msgs in #show_unused bar
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58c9d83dedff1577fd6094dc39bebf5763548538f9177b39927b5e533c5441b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowUnused/Variant4484b058f0443a7833897c7ee635dedb72b11c7558d6faab4ffbead9738b0aea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
