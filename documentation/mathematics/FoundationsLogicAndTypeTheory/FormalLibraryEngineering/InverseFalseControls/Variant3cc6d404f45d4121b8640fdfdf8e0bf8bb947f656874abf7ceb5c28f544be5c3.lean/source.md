# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InverseFalseControls.Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `234dc83f3f4c4789240fe37dac488f7b2325ee0e` · SHA-256 `3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.InverseControls
open C2

/- Three expected failures: count, key length, and child fuel. -/
example : parseValue 2 (emit (.map (List.replicate 65 ([], .bool true))) ++ ['!']) =
    some (.map (List.replicate 65 ([], .bool true)), ['!']) := by
  rw [map_count_reject 1 _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 2 (emit (.map [(List.replicate 16385 'a', .bool true)]) ++ ['!']) =
    some (.map [(List.replicate 16385 'a', .bool true)], ['!']) := by
  rw [map_key_reject 0 _ _ _ (by simp only [List.length_replicate]; omega)]
  rfl

example : parseValue 1 (emit (.map [([], .bool true)]) ++ ['!']) =
    some (.map [([], .bool true)], ['!']) := by
  rw [map_fuel_reject]
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=238c7cebd36d158e75b77ad7f2d10efdd5ad9c8917f646533f0a4b29b8b24b12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseFalseControls/Variant3cc6d404f45d4121b8640fdfdf8e0bf8bb947f656874abf7ceb5c28f544be5c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
