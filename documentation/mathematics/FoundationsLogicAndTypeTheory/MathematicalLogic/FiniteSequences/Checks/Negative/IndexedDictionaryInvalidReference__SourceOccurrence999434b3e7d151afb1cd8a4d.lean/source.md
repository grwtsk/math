# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.IndexedDictionaryInvalidReference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a57bfeab7e723e15f482c38ba12727f3822da249` · SHA-256 `0d06a5f63a7b8de95203289eb9d7feeb46dee28eb2f01178ba7ef50bbb53dabf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected kernel failure: an absent dictionary slot cannot yield a payload.
-- This uses the actual decoder, so no missing-input error should satisfy the control.
example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = some [(11, 7)] :=
  (show unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none from rfl)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d340f40727492f8a69cf5ed498afa9bde776e0987dfd5f1e944eef5f8fbf27e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/IndexedDictionaryInvalidReference__SourceOccurrence999434b3e7d151afb1cd8a4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
