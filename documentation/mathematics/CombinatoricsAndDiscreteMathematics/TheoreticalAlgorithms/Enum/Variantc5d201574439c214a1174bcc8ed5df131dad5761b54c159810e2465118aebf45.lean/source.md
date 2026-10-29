# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enum.Variantc5d201574439c214a1174bcc8ed5df131dad5761b54c159810e2465118aebf45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bc5b003288beef3f31062a184b91695007a55f8` · SHA-256 `c5d201574439c214a1174bcc8ed5df131dad5761b54c159810e2465118aebf45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Yakov Pechersky, Eric Wieser
-/
import Mathlib.Data.List.Basic

/-!
# Properties of `List.enum`

## Deprecation note

Many lemmas in this file have been replaced by theorems in Lean4,
in terms of `xs[i]?` and `xs[i]` rather than `get` and `get?`.

The deprecated results here are unused in Mathlib.
Any downstream users who can not easily adapt may remove the deprecations as needed.
-/

namespace List

variable {α : Type*}

theorem forall_mem_zipIdx {l : List α} {n : ℕ} {p : α × ℕ → Prop} :
    (∀ x ∈ l.zipIdx n, p x) ↔ ∀ (i : ℕ) (_ : i < length l), p (l[i], n + i) := by
  simp only [forall_mem_iff_getElem, getElem_zipIdx, length_zipIdx]

/-- Variant of `forall_mem_zipIdx` with the `zipIdx` argument specialized to `0`. -/
theorem forall_mem_zipIdx' {l : List α} {p : α × ℕ → Prop} :
    (∀ x ∈ l.zipIdx, p x) ↔ ∀ (i : ℕ) (_ : i < length l), p (l[i], i) :=
  forall_mem_zipIdx.trans <| by simp

theorem exists_mem_zipIdx {l : List α} {n : ℕ} {p : α × ℕ → Prop} :
    (∃ x ∈ l.zipIdx n, p x) ↔ ∃ (i : ℕ) (_ : i < length l), p (l[i], n + i) := by
  simp only [exists_mem_iff_getElem, getElem_zipIdx, length_zipIdx]

/-- Variant of `exists_mem_zipIdx` with the `zipIdx` argument specialized to `0`. -/
theorem exists_mem_zipIdx' {l : List α} {p : α × ℕ → Prop} :
    (∃ x ∈ l.zipIdx, p x) ↔ ∃ (i : ℕ) (_ : i < length l), p (l[i], i) :=
  exists_mem_zipIdx.trans <| by simp

@[deprecated (since := "2025-01-28")]
alias forall_mem_enumFrom := forall_mem_zipIdx
@[deprecated (since := "2025-01-28")]
alias forall_mem_enum := forall_mem_zipIdx'
@[deprecated (since := "2025-01-28")]
alias exists_mem_enumFrom := exists_mem_zipIdx
@[deprecated (since := "2025-01-28")]
alias exists_mem_enum := exists_mem_zipIdx'

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c36f13cd141e696346a5e7bc3cda0731f5981fdf723e9a930a60721db568800 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enum/Variantc5d201574439c214a1174bcc8ed5df131dad5761b54c159810e2465118aebf45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
