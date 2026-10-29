# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Obstruction.Variantfba49c4361f214efa73cd81b2988e6f59dcd1e850a92d1450b3890a325182252

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a75f856e3861c3a4ac7ba3acd72c56bb0bf5f566` · SHA-256 `ce298097ea7bc05a64d6ef24d8aea921a0e4807ac82d7e65c0ca80a1f5b427e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","mathematical_subject":"Foundations.Unclassified","original_sha256":"6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Surgery/Obstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Orbit.All

/-! # Orbit boundaries and obstructions -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObstructionKind.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38

namespace Mathematics.Surgery

inductive ObstructionKind
  | orbitTypeBoundary
  | endpointFailure
  | regularityFailure
  | residualDivergence
  | cohomologyClass
  deriving DecidableEq, Repr

structure Obstruction where
  kind : ObstructionKind
  evidence : EvidenceId
  explanation : String
  deriving DecidableEq, Repr

end Mathematics.Surgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d590dc5bfd74d04d87ee1da1fc7ca6ae9f5f96e1575cd7f6672b8ce0033218d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Obstruction/Variantfba49c4361f214efa73cd81b2988e6f59dcd1e850a92d1450b3890a325182252.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
