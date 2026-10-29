# Trace Proof — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19c35a896954b4b082b9c28c8fbf4a3ec7a8cbb1` · SHA-256 `e73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

set_option trace.aesop.proof true

/--
error: Tactic `aesop` failed, made no progress
---
trace: [aesop.proof] <no proof>
-/
#guard_msgs in
example : α := by
  aesop

@[aesop norm simp]
def F := False

set_option pp.mvars false in
/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
---
trace: [aesop.proof] id ?_
-/
#guard_msgs in
example : F := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c16e351ed0c521e7de33a81dbc7c505beb65f6001642733a4860980063f348f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceProof/Variante73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
