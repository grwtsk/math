# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.DictionaryRevisionStaleSlots

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5340c178fae8c52a8b0384ea6fe651adb018432` · SHA-256 `18c8e1385378f16688266c40d9abd8810f1f1649080a466f393da61b8ad06dbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.DictionaryRevision

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected type mismatch: the old round-trip theorem cannot certify a reordered dictionary.
-- The dictionary lengths, reference count, and valid index bounds are unchanged.
example :
    unpack (⟨[8, 7], [(11, 0), (12, 1)]⟩ : Packed Nat Nat) =
      some [(11, 7), (12, 8)] :=
  unpack_pack [(11, 7), (12, 8)]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fb57c1a4d4b2f6a29b0b26372224b3f561ebbcefda4b00e7de84c9c1d5903ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DictionaryRevisionStaleSlots__SourceOccurrenced104f1693789c923e6fc1fc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
