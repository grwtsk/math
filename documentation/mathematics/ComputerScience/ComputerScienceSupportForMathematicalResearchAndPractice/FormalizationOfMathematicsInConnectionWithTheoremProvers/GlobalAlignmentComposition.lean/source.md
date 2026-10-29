# Global Alignment Composition — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68b000b9605230386af0fb304f52259fcd0448b8` · SHA-256 `ab23f89079d8ee2c9fe8c025fcd543ba58e314fcfb8111cf764ffd6191aafe68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.GlobalAlignmentComposition

/-!
# Folder.Theorem.CanonicalPath.GlobalAlignmentComposition

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports global alignment composition facts.
Ontology: proof.canonical_path.contract_composition
Pivot role: dual
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem canonical_path_global_alignment_if_supplied
    (C : Folder.CanonicalPath.CanonicalPathGlobalAlignmentContract) :
    C.allZerosOnCriticalLine :=
  Folder.CanonicalPath.canonical_path_global_alignment_if_supplied C

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d7c0e65d0310408da89bf6fc70bd69ff0a0e15291bae268b1a469848fa59d9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAlignmentComposition/Variantab23f89079d8ee2c9fe8c025fcd543ba58e314fcfb8111cf764ffd6191aafe68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
