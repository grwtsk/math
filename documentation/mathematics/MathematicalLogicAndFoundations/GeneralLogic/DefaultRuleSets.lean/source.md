# Default Rule Sets — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d04034892cb503d8be47ccb27550f864dac6f96` · SHA-256 `b077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.DefaultRuleSetsInit

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop norm unfold (rule_sets := [regular₁])]
def T := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : T := by
  aesop (config := { terminal := true })

example : T := by
  aesop (rule_sets := [regular₁])

@[aesop norm unfold (rule_sets := [regular₂, dflt₁])]
def U := True

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : U := by
  aesop (rule_sets := [-dflt₁]) (config := { terminal := true })

example : U := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b83eacad48f596b1d526b7f3611620c7ded1eadbdc46c436b44062e4fa92f20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefaultRuleSets/Variantb077a15a74046b7157f7a9c200b42b6cd0da8f92a10dca375443097d722183f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
