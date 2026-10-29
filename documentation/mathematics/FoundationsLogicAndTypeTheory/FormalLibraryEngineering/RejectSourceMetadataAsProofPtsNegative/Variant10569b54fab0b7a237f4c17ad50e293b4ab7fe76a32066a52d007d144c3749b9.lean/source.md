# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectSourceMetadataAsProofPtsNegative.Variant10569b54fab0b7a237f4c17ad50e293b4ab7fe76a32066a52d007d144c3749b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `370595031656a968f683856f898d14ea826d2dd5` · SHA-256 `10569b54fab0b7a237f4c17ad50e293b4ab7fe76a32066a52d007d144c3749b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Hostile mutation: the exact source record is not a theorem proof.
example : SourceBoundWeakToStrong N where
  source := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b913e1784aaa99572f4daa0310163d1de55052e285dba05a2f819cdbbeb72031 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectSourceMetadataAsProofPtsNegative/Variant10569b54fab0b7a237f4c17ad50e293b4ab7fe76a32066a52d007d144c3749b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
