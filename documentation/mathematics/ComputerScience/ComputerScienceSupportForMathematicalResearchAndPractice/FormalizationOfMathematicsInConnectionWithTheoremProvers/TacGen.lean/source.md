# Tac Gen — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a03b28ec64836bbce36ce0589f178ef8350937e` · SHA-256 `3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

open Lean
open Lean.Meta

theorem foo (a b c : Nat) : a + b + c = c + b + a := by
  rw [Nat.add_assoc, Nat.add_comm, Nat.add_comm b]

@[aesop 100%]
def tacGen₁ : Aesop.TacGen := λ _ => do
 return #[("apply foo", 1.0)]

example (a b c : Nat) : a + b + c = c + b + a := by
  aesop

@[aesop 100%]
def tacGen₂ : Aesop.TacGen := λ _ =>
  return #[
    ("rw [Nat.add_comm b]", 0.5),
    ("rw [Nat.add_assoc]", 0.9),
    ("rw [Nat.add_comm]", 0.8)
  ]

example (a b c : Nat) : a + b + c = c + b + a := by
  aesop (erase tacGen₁)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13d58b811885e50ded1d8e63ae0ce9bbfb879620dade0e917c3442648fdc85ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacGen/Variant3b06829b92ee2800d14dbf91f5b40ae38bd8c94440460e1e43ced565fdf81135.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
