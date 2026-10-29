# Reject Source Metadata As Proof Negative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6a1ac8aa3348787a71606377f7b91a413ce0889` · SHA-256 `0243d5b19f03cdb7a939777a036e8c6da86176e84c8624c39877cd60f0fe1942`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
-- A source identity is data, whereas this field requires a proof of surjectivity.
def metadataCannotProve : SourceBoundRationalHodgeTheorem Examples.lineHodgeData where
  source := openAICMRationalHodgeSource
  variety := "CM metadata only"
  codimension := 0
  realization := "unproved"
  surjective := openAICMRationalHodgeSource
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6beb965681c2c1a40c61a0b4879b861de43a05d6850c0b59a98b229dc05988b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectSourceMetadataAsProofNegative/Variant0243d5b19f03cdb7a939777a036e8c6da86176e84c8624c39877cd60f0fe1942.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
