# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Positive.IncrementalDictionary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee0fa4d525d161fe1cb70b2ad000abe4ef05c5bd` · SHA-256 `1bf2a56d4977a25fd8a5740c513220e1cc024bc3ec8aa05400337424446fa0b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IncrementalDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) :
    unpack (appendEntries original entries) =
      (unpack original).map (fun rows => rows ++ entries) :=
  unpack_appendEntries original entries hvalid

example {Key Payload : Type*} [DecidableEq Payload]
    (oldRows entries : List (Key × Payload)) :
    unpack (appendEntries (pack oldRows) entries) = some (oldRows ++ entries) :=
  unpack_appendEntries_pack oldRows entries

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (entries : List (Key × Payload))
    (hvalid : Valid original) (hnodup : original.dictionary.Nodup) :
    Valid (appendEntries original entries) ∧
      (appendEntries original entries).dictionary.Nodup :=
  ⟨appendEntries_valid original entries hvalid,
    expandedDictionary_nodup original.dictionary entries hnodup⟩

-- Previously present 7 keeps its old slot; new repeated 9 occupies exactly one new slot.
example :
    (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]).dictionary = [7, 8, 9] := rfl

-- All repeated key/payload occurrences still have their own ordered references.
example :
    (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]).references =
      [(11, 0), (12, 1), (13, 0), (11, 2), (11, 2)] := rfl

example :
    unpack (appendEntries (pack ([(11, 7), (12, 8)] : List (Nat × Nat)))
      [(13, 7), (11, 9), (11, 9)]) =
      some [(11, 7), (12, 8), (13, 7), (11, 9), (11, 9)] :=
  unpack_appendEntries_pack _ _

example :
    unpack (appendEntries (pack ([] : List (Nat × Nat))) [(11, 7), (11, 7)]) =
      some [(11, 7), (11, 7)] :=
  unpack_appendEntries_pack _ _

example {Key Payload : Type*} [DecidableEq Payload] (original : Packed Key Payload) :
    appendEntries original [] = original :=
  appendEntries_nil original

-- The invalid old slot becomes populated, demonstrating why the main theorem needs validity.
example :
    unpack (appendEntries (⟨[], [(11, 0)]⟩ : Packed Nat Nat) [(12, 7)]) =
      some [(11, 7), (12, 7)] := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2bc61ca7a18904cfd34742c2118ad1731ff32610f7ce58f0031ee4859f11e34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/IncrementalDictionary__SourceOccurrenceb64e03402a135f63b94e513d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
