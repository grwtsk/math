# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.IncrementalDictionaryMissingValidity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12aec054b363b033fd2aba2ba7946f42f4293db8` · SHA-256 `fd9eaec3a4a0b0d34dc283d60936bd8fad669a873e6d1fd21432684f6c7afb25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

private def invalid : Packed Nat Nat := ⟨[], [(11, 0)]⟩

-- Expected type mismatch: this theorem still requires Valid invalid, which is false here.
-- The expansion fills slot zero, so the original none decoding actually changes.
example : unpack (appendEntries invalid [(12, 7)]) =
    (unpack invalid).map (fun rows => rows ++ [(12, 7)]) :=
  unpack_appendEntries invalid [(12, 7)]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33e306a1d5f6953b1102963ec4c74a28bd0fb4cc0684f1183ab493317d56e198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/IncrementalDictionaryMissingValidity__SourceOccurrence09c2ac0fee17d352bfbf0cc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
