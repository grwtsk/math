# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Positive.IndexedDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b36bccc0fdc80c5fdbc1bcc6bf93dae2b137e08b` · SHA-256 `3f70086fe03f46d0ff3b6dcb4343e3a3dc0dc8050e3689c43c62c215bcbbd453`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    unpack (pack entries) = some entries :=
  unpack_pack entries

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    (pack entries).dictionary.Nodup ∧ Valid (pack entries) :=
  ⟨pack_dictionary_nodup entries, pack_valid entries⟩

example {Key Payload : Type*} [DecidableEq Payload]
    (entries : List (Key × Payload)) :
    (pack entries).references.map Prod.fst = entries.map Prod.fst ∧
      (pack entries).references.length = entries.length :=
  ⟨pack_references_keys entries, pack_references_length entries⟩

-- Three occurrences of payload 7 use one dictionary slot; all four references remain.
-- The repeated key 11 is retained in precisely its source positions as well.
example :
    (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))).dictionary =
      [8, 7] := by
  decide

example :
    (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))).references =
      [(11, 1), (12, 1), (11, 0), (11, 1)] := by
  decide

example :
    unpack (pack ([(11, 7), (12, 7), (11, 8), (11, 7)] : List (Nat × Nat))) =
      some [(11, 7), (12, 7), (11, 8), (11, 7)] :=
  unpack_pack _

example : unpack (⟨[], [(11, 0)]⟩ : Packed Nat Nat) = none := rfl

example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none := rfl

example : unpack (⟨[7], []⟩ : Packed Nat Nat) = some [] := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=531e8166b36c3ad397d4a66ad17aba7c35a359dae772aa38b32b2b079405e23f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/IndexedDictionary__SourceOccurrence0cdbcacc2cc6d835127abfd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
