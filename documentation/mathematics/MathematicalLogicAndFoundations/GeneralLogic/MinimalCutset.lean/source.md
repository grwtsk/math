# Minimal Cutset — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d9a746c0430cef902e09ee61f4cdf9133896d65` · SHA-256 `456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Exact minimal route cutsets
-/

namespace Mathematics.ProofStrategy

universe u

def HitsEveryFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation)
    (cutset : Requirement Obligation) : Prop :=
  ∀ frontier ∈ frontiers,
    ∃ obligation, obligation ∈ cutset ∧ obligation ∈ frontier

structure MinimalCutset
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation) where
  cutset : Requirement Obligation
  hits : HitsEveryFrontier frontiers cutset
  indispensable :
    ∀ obligation ∈ cutset,
      ¬ HitsEveryFrontier frontiers (cutset.erase obligation)

theorem minimalCutset_nonempty_of_nonempty_frontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    {frontiers : FrontierFamily Obligation}
    (frontiers_nonempty : frontiers.Nonempty)
    (certificate : MinimalCutset frontiers) :
    certificate.cutset.Nonempty := by
  rcases frontiers_nonempty with ⟨frontier, frontier_member⟩
  rcases certificate.hits frontier frontier_member with
    ⟨obligation, obligation_in_cutset, _⟩
  exact ⟨obligation, obligation_in_cutset⟩

end Mathematics.ProofStrategy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65fb7e6a313c5c972755234323cd2076d3dd26aa54fe9ae327a08829abfa1966 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinimalCutset/Variant456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
