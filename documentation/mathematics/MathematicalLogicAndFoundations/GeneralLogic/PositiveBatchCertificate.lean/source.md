# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Positive.BatchCertificate

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8cf45ecb086ad9f126506d4fa240345d5fd3c04` · SHA-256 `2a58d2f63f70e725bc7dc4df438f9c66d9e131d98a4f97d1ad69a740b286bef8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.BatchCertificate

open GRWTSK.Logic.FiniteSequences.IndexedDictionary
open GRWTSK.Logic.FiniteSequences.IncrementalDictionary
open GRWTSK.Logic.FiniteSequences.DecisionCertificate
open GRWTSK.Logic.FiniteSequences.BatchCertificate

set_option autoImplicit false

example {Key Payload : Type*} [DecidableEq Payload]
    (original : Packed Key Payload) (first second : List (Key × Payload))
    (hvalid : Valid original) (predicate : List (Key × Payload) → Prop) :
    DecodesSatisfying (appendEntries (appendEntries original first) second) predicate ↔
      DecodesSatisfying (appendEntries original (first ++ second)) predicate :=
  decodesSatisfying_sequential_iff_combined original first second hvalid predicate

example {Key Payload : Type*} [DecidableEq Payload]
    (certificate : Certificate Key Payload) (oldRows first second : List (Key × Payload))
    (hentries : certificate.entries = oldRows ++ (first ++ second)) :
    DecodesSatisfying (appendEntries (appendEntries (pack oldRows) first) second)
      certificate.predicate ∧
      DecodesSatisfying (appendEntries (pack oldRows) (first ++ second))
        certificate.predicate :=
  ⟨reuse_sequential certificate oldRows first second hentries,
    reuse_combined certificate oldRows first second hentries⟩

-- The concrete certificate proves length three of the FULL decoded history.
example :
    DecodesSatisfying (appendEntries
      (appendEntries (pack ([] : List (Nat × Nat))) [(11, 7), (12, 8)]) [(13, 7)])
      completeHistoryCertificate.predicate :=
  reuse_sequential completeHistoryCertificate [] _ _ rfl

-- A true criterion about the old empty history becomes false after actual successful append.
example :
    ¬ DecodesSatisfying (appendEntries emptyHistoryCertificate.packed [(11, 7)])
      emptyHistoryCertificate.predicate :=
  old_evidence_not_append_stable.2

example :
    unpack (appendEntries emptyHistoryCertificate.packed [(11, 7)]) = some [(11, 7)] :=
  unpack_appendEntries_pack [] [(11, 7)]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c296106d88c24850534a2a8cc84761130907bc2cd0675e60fb7e25d5e504930 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/BatchCertificate__SourceOccurrence135243e8c11945ad5a496948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
