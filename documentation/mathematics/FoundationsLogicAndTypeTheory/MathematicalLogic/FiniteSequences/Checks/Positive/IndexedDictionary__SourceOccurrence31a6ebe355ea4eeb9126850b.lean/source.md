# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Positive.IndexedDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1217c2a51055d144cb6d71fd143ceb4ce5930e8` · SHA-256 `421c43bcf34cdb8deac3f4d959e247abeecdaecc60b3dd2c51a2c5799163fd2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.IndexedDictionary

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceb8df1ef6bc59ee80140288b791c1bdd394494c0f02e775982321292f668ff5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/IndexedDictionary__SourceOccurrence31a6ebe355ea4eeb9126850b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
