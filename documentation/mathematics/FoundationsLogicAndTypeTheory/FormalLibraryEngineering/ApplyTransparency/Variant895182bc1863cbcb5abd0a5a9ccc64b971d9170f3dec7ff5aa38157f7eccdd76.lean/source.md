# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyTransparency.Variant895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47ec272271f91e49421385f52d35f7e78bc67e04` · SHA-256 `895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (add safe apply True.intro) (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (add safe apply (transparency := default) True.intro)
    (config := { terminal := true })

example : T := by
  aesop (add safe apply (transparency! := default) True.intro)

@[irreducible] def U := T

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply True.intro) (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply (transparency := default) True.intro)
    (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (add safe apply (transparency! := default) True.intro)
    (config := { terminal := true })

example : U := by
  aesop (add safe apply (transparency! := all) True.intro)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc7d489d92bfc9909e3147aeab010bf896a1f1b75536f434b100830e1b3579ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyTransparency/Variant895182bc1863cbcb5abd0a5a9ccc64b971d9170f3dec7ff5aa38157f7eccdd76.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
