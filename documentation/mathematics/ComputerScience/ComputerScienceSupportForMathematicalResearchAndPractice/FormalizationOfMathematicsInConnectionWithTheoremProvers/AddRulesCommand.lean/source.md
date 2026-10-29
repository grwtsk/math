# Add Rules Command — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb6dad481b1646f621db3fdb74bbf6c6a5eede2e` · SHA-256 `e1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Basic examples

structure TT₁ where

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₁ := by
  aesop

add_aesop_rules safe TT₁

example : TT₁ := by
  aesop

-- Local rules

structure TT₂ where

namespace Test

local add_aesop_rules safe TT₂

example : TT₂ := by
  aesop

end Test

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₂ := by
  aesop

-- Scoped rules

structure TT₃ where

namespace Test

scoped add_aesop_rules safe TT₃

example : TT₃ := by
  aesop

end Test

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₃ := by
  aesop

def Test.example : TT₃ := by
  aesop

-- Tactics

structure TT₄ where

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₄ := by
  aesop

add_aesop_rules safe (by exact TT₄.mk)

example : TT₄ := by
  aesop

-- Multiple rules

axiom T : Type
axiom U : Type
axiom f : T → U
axiom t : T

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : U := by
  aesop

add_aesop_rules safe [(by apply f), t]

noncomputable example : U := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f74c72a8a7a09941a62d9e4f8dbcc466ae7c8faa67dd7799387e886e4cdf398 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRulesCommand/Variante1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
