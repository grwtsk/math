# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArrayFalseControl.Variant78867e5f648421cca73a2762e8e14349b704de0276efa35e096766b2774e958a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7be61ffbdd6ceaba587a5b2b39bdc6b844abca94` · SHA-256 `78867e5f648421cca73a2762e8e14349b704de0276efa35e096766b2774e958a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.ArrayControls
open C2

/- Expected failure: deleting the count premise cannot permit 257 elements. -/
example : parseValue 2
    (emit (.array (List.replicate 257 (.bool true))) ++ ['!', 't']) =
    some (.array (List.replicate 257 (.bool true)), ['!', 't']) := by
  rw [array_boundary_257]
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54af0152fcd055f09d3651de6472faecbc01d1709e1d74a98bd7896c3fef4649 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArrayFalseControl/Variant78867e5f648421cca73a2762e8e14349b704de0276efa35e096766b2774e958a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
