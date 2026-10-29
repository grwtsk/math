# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9ed71934cce08e5828162a0dbe8e101d70523dc` · SHA-256 `bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

def mkPairwiseEquality {α : Q(Sort u)} : List Q($α) → Q(Prop)
  | [a, b] => q($a = $b)
  | a :: b :: cs => q($a = $b ∧ $(mkPairwiseEquality (b :: cs)))
  | _ => q(True)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15c09c526d96ca280dbfb38164cfae879717bcaad5aa5af00845f1e872e1407e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkPairwiseEquality/Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
