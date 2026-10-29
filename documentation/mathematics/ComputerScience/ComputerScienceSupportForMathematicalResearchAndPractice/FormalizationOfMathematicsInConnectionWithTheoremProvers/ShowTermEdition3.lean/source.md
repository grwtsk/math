# Show Term Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b6aacb1d439169fce9b76c1a99eebc72787ea5` · SHA-256 `98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Tactic.ShowTerm
import Std.Tactic.GuardMsgs

/-- info: Try this: exact (n, 37) -/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/-- info: Try this: refine (?fst, ?snd) -/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/-- info: Try this: fun {X} => X -/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d13b4b42ac7cee90ede5591a3c2596443ee9bb78c8911d5f555964ed1d32a2a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variant98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
