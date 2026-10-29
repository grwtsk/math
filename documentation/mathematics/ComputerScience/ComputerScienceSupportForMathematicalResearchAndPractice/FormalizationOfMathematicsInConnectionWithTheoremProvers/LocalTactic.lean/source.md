# Local Tactic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3771fbe3668ac87698071c951a83379466a53a3` · SHA-256 `5e84a9b27eed24c859c6f8562d14e9886359f7dbed49683c480c788d58009e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (m n : Nat) : m * n = n * m := by
  aesop

example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by rw [Nat.mul_comm]))

example (m n : Nat) : m * n = n * m := by
  aesop (add safe tactic (by rw [Nat.mul_comm m n]))

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by rw [Nat.mul_comm m m]))

example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by apply Nat.mul_comm; done))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d34b580462f137f6093228d27a045b18bf7961700d950604d0abd4c192985ddd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalTactic/Variant5e84a9b27eed24c859c6f8562d14e9886359f7dbed49683c480c788d58009e74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
