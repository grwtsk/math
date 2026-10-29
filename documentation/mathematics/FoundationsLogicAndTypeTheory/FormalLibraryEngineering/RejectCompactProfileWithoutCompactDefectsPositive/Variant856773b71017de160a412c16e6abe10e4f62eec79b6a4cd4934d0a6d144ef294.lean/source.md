# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCompactProfileWithoutCompactDefectsPositive.Variant856773b71017de160a412c16e6abe10e4f62eec79b6a4cd4934d0a6d144ef294

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d6e7160f92b46a67bfdd66f7e025131f41e4aed` · SHA-256 `856773b71017de160a412c16e6abe10e4f62eec79b6a4cd4934d0a6d144ef294`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.BoundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Exact operator laws supply genuine compact defect proofs.
example (X : ExactCycle A H) : Cycle A H := X.toCycle
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9199e0ceaa80b15bd96c185bf04774036547c215e023c9e7e61e0f68247fe842 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectCompactProfileWithoutCompactDefectsPositive/Variant856773b71017de160a412c16e6abe10e4f62eec79b6a4cd4934d0a6d144ef294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
