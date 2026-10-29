# Conjs — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9204571c027491621ea2803fdc5dd9f19ec17e86` · SHA-256 `b6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq Lean Elab Meta Tactic

elab "print_conjs" : tactic => do
  for ldecl in ← getLCtx do
    if let some ty ← checkTypeQ (u := Level.one) ldecl.type q(Prop) then
      if let ~q($p ∧ $q) := ty then
        logInfo m!"left = {p}, right = {q}"

/--
info: left = true = true, right = False
-/
#guard_msgs in
example (_ : true ∧ False) : true := by
  print_conjs
  trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efdef2b5489146bb8487160d7104fb3c1f987c962a669d041bab17c85f1462b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conjs/Variantb6fd267de2b3966f47d2a5d88f19c1b85dd580da04d012c392d9f0a62e9d29e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
