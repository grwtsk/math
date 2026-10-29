# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1212d616ec54decf0d871238a7537f99a46453d5` · SHA-256 `f73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Rename

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => c, b => d
  exact (d, c)

example (a : Nat) (b : Int) : Int × Nat := by
  rename' a => b, b => a
  exact (a, b)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1c947153e4392e03a613d6086ab35850390074510d0969f32e1bbe5c4e1a016 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variantf73bf0a4995cc892d4f4eabc84fdbce7ee663753199486d7fb63ab5091434ced.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
