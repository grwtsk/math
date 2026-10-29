# Exfalso — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a821aa0f321cd08d9703c4a8bde70d74bbcb184` · SHA-256 `15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Basic

private axiom test_sorry : ∀ {α}, α

example {A} (h : False) : A := by
  exfalso
  exact h

example {A} : False → A := by
  exfalso
  show False -- exfalso is not supposed to close the goal yet
  exact test_sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c55fc7b07c609f6612e7e4810b25b34d93f62167ebb9f2042fa9853558c8861a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exfalso/Variant15a137bf7821eecfdfb7171b6af602735aabbf61ddae864ee284d0590d88b4e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
