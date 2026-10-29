# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.AppendOnlyHistoryReorder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `601c88fdb5834258dcdad356edff8dc460b294dc` · SHA-256 `d24ae0280ece9a802780ad1c75d42c88db43baeb773c85302c732ea05e171d65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.AppendOnlyHistory

open GRWTSK.Logic.FiniteSequences.AppendOnlyHistory

-- Expected type mismatch: reflexive prefix acceptance cannot certify reordered history.
example : checkPrefix ([1, 2] : List Nat) [2, 1] = true :=
  checkPrefix_refl ([1, 2] : List Nat)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d531eacaa896978eac807825a9fc85e1ce1f2625eda4683774fa0c7168afba7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/AppendOnlyHistoryReorder__SourceOccurrenced69b19c3ab2d7db8240145c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
