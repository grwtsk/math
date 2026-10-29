# Reject Source Metadata As Proof Positive — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdde775e96c6bbcc719930a30a1328faaf087e4d` · SHA-256 `4b76eadd278f9f01df9d0bd0ab408bf452cb3f327ed795bcc85e6ad941d697b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
example : SourceBoundRationalHodgeTheorem Examples.lineHodgeData :=
  Examples.lineSourceTheorem
example : Examples.lineHodgeData.IsSurjective :=
  Examples.lineSourceTheorem.surjective
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d3d76afe74b583f28f2876e8d3734a45dc7a13675c871f46ab3839c4975c551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectSourceMetadataAsProofPositive/Variant4b76eadd278f9f01df9d0bd0ab408bf452cb3f327ed795bcc85e6ad941d697b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
