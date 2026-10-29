# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.DictionaryRevisionStaleSlots

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b512945d7746db57e03aca144d62081e65b102a8` · SHA-256 `1dcd13fd6b0546b5c501f20a09b693c4ba2149650416d74239c75e0556d5c27f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DictionaryRevision

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected type mismatch: the old round-trip theorem cannot certify a reordered dictionary.
-- The dictionary lengths, reference count, and valid index bounds are unchanged.
example :
    unpack (⟨[8, 7], [(11, 0), (12, 1)]⟩ : Packed Nat Nat) =
      some [(11, 7), (12, 8)] :=
  unpack_pack [(11, 7), (12, 8)]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7fc29375bf36a5741770e8d2db3852f26a35b9817b0156ec683a676d2c14a1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DictionaryRevisionStaleSlots__SourceOccurrencedfaad213a6fd7f3111f8b7de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
