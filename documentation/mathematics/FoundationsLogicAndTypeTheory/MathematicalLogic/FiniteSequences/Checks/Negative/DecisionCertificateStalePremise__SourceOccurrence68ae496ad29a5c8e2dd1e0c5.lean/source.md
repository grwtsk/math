# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.Checks.Negative.DecisionCertificateStalePremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ea9efd7c705a8c500e3d22cc21c27a87b68f844` · SHA-256 `cc13c388aecb3a6a78612022c366e0045047abb28bd1db774bbc47f722cd8196`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.DecisionCertificate

open GRWTSK.Logic.FiniteSequences.DictionaryRevision
open GRWTSK.Logic.FiniteSequences.DecisionCertificate

private def boundedPremise : Certificate Nat Nat :=
  ⟨[(11, 7)], (fun entries => ∀ entry ∈ entries, entry.2 ≤ 7), by simp⟩

-- Expected type mismatch: the actual revised payload eight violates the old bound seven.
-- Identical keys, dictionary lengths, occurrence counts and valid bounds do not repair it.
example : DecodesSatisfying (replaceDictionary boundedPremise.packed [8])
    boundedPremise.predicate :=
  boundedPremise.decodesSatisfying
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=049477b7cf30035ce6531b643d9f832e8f1e890acd1c5337d05bd98982d569df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/DecisionCertificateStalePremise__SourceOccurrence68ae496ad29a5c8e2dd1e0c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
