# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defeqs.Variantbe559c22ce88d0ff075709bcdb360adc15437fdd22deb0758fcb6da75995f61c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52badcb1147c0f7a0e3937e341b4296dd97552f5` · SHA-256 `be559c22ce88d0ff075709bcdb360adc15437fdd22deb0758fcb6da75995f61c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

example {α : Q(Sort u)} (a : Q($α)) : Unit :=
  have : u =QL 1 := ⟨⟩
  have : $α =Q Nat := ⟨⟩
  have : $a =Q 42 := ⟨⟩
  by exact -- TODO
  have : Q($a > 10) := q(by decide)
  ()
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a994b21b0a1184a5dd8a0192e2246e8ab64aa18484396f568ad6622046f91efc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defeqs/Variantbe559c22ce88d0ff075709bcdb360adc15437fdd22deb0758fcb6da75995f61c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
