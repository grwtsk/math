# Metas — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd7a0b82e4f9c6bc8d2e3c4952c48d8a37a904ec` · SHA-256 `7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

example (P : α → Prop) (a : α) (h : P a) : ∃ a, P a := by
  aesop

example (P : α → β → Prop) (a : α) (b : β) (h : P a b) : ∃ a b, P a b := by
  aesop

example (P : α → Type) (a : α) (h : P a) : Σ a, P a := by
  aesop

example (P : α → β → Type) (a : α) (b : β) (h : P a b) : Σ a b, P a b := by
  aesop

example (P Q : α → Prop) (hPQ : ∀ a, P a → Q a) (a : α) (h : P a) : ∃ a, Q a := by
  aesop

example (P Q Dead R : α → Prop)
    (hPQ : ∀ a, P a → Q a)
    (hDeadR : ∀ a, Dead a → R a)
    (hQR : ∀ a, Q a → R a)
    (a : α) (h : P a) :
    ∃ a, R a := by
  aesop

example (R : α → α → Prop) (R_trans : ∀ x y z, R x y → R y z → R x z) (a b c d)
    (hab : R a b) (hbc : R b c) (hcd : R c d) : R a d := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2045e317376ebafa4d163b6f3a564e45820566a7be7a150b37574f76fbd101 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metas/Variant7926ed6fc8712154633f913948e9e1252f0d2da6f5c75e6236b0e0ad1a327cd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
