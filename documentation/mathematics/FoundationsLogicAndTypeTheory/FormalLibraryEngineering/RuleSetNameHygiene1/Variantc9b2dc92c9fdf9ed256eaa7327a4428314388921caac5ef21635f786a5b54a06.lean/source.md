# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSetNameHygiene1.Variantc9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2124386356558f9736b9a39869db8ec587317ed0` · SHA-256 `c9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import AesopTest.RuleSetNameHygiene0

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

macro "aesop_test" : tactic => `(tactic| aesop (rule_sets := [test]))

@[aesop safe (rule_sets := [test])]
structure TT where

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : TT := by
  aesop (config := { terminal := true })

example : TT := by
  aesop_test
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5eafca6b0b48ce53fabfb766c46cfc288b581adaf5c31bd505901cc54a3cff3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSetNameHygiene1/Variantc9b2dc92c9fdf9ed256eaa7327a4428314388921caac5ef21635f786a5b54a06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
