# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `009fd168411dc4ba0b727916ddc68f5c347baa2e` · SHA-256 `e36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Basic
import Std.Tactic.GuardMsgs

open Lean Elab Tactic Meta

elab "foo" : tactic => liftMetaTactic fun g => do
  g.assign (← mkFreshExprMVar (← g.getType))
  throwError ""

#guard_msgs in
example : True := by
  repeat' foo
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1622ec869a24f445bc40cc0784677e8b01a0b9c848d36f08e90cc446a60d7d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variante36ad7c90d52e307f7b07d59c7f151f18063c37392c46b4f4e08a074a0bbf82a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
