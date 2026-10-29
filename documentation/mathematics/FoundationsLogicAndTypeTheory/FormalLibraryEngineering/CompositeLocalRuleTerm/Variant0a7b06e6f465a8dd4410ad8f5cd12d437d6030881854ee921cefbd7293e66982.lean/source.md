# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompositeLocalRuleTerm.Variant0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c814ba976f8e7d432cd3ea6affebf8f1531e2bf9` · SHA-256 `0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Composite terms are supported by the `apply` and `forward` builders...

structure A where

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (h : A → β → γ) (b : β) : γ := by
  aesop

example (h : A → β → γ) (b : β) : γ := by
  aesop (add safe apply (h {}))

example (h : A → β → γ) (b : β) : γ := by
  aesop (add safe forward (h {}))

-- ... and also by the `simp` builder.

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example {P : α → Prop} (h : A → x = y) (p : P x) : P y := by
  aesop

example {P : α → Prop} (h : A → x = y) (p : P x) : P y := by
  aesop (add simp (h {}))

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example {P : α → Prop} (h₁ : A → x = y) (h₂ : A → y = z) (p : P x) : P z := by
  aesop

example {P : α → Prop} (h₁ : A → x = y) (h₂ : A → y = z) (p : P x) : P z := by
  aesop (add simp [(h₁ {}), (h₂ {})])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcc7fb864aa0a625f331717694aa0f3e9abc36563ccccd3e179c2dcf5e4ccf66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompositeLocalRuleTerm/Variant0a7b06e6f465a8dd4410ad8f5cd12d437d6030881854ee921cefbd7293e66982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
