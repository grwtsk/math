# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssumptionTransparency.Variantfb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b51f829ee72d66e17ed42393eb964b6e11c9ff76` · SHA-256 `fb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def T := Empty

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)
    (config := { assumptionTransparency := .reducible, terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)
    (config := { assumptionTransparency := .reducible, terminal := true })

example (h : T) : Empty := by
  aesop (erase Aesop.BuiltinRules.applyHyps)

@[irreducible] def U := False

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : U) : False := by
  aesop (config := { terminal := true })

example (h : U) : False := by
  aesop (config := { assumptionTransparency := .all })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=135da4286063ce1d5d059e78b21485c996c8a1d246f6e799337ca9df8c57fd5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AssumptionTransparency/Variantfb5c2eb994623cc887330416d94943f2ed8a39b811bda71c028095997181c7eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
