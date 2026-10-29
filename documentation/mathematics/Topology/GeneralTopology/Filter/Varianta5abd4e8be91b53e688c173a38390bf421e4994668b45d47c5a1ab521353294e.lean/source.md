# Complete source: GRWTSK.Topology.GeneralTopology.Filter.Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2eb87727e0a29eb14857fe760fe81ce999f036a1` · SHA-256 `a5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

namespace TBA

inductive List (α : Type) where
  | nil : List α
  | cons (head : α) (tail : List α) : List α

notation  (priority := high) "[" "]" => List.nil
infixr:67 (priority := high) " :: "  => List.cons

def filter (p : α → Prop) [DecidablePred p] (as : List α) : List α :=
  match as with
  | [] => []
  | a::as => if p a then a :: filter p as else filter p as

variable {p : α → Prop} [DecidablePred p] {as bs : List α}

@[simp]
theorem filter_cons_true (h : p a) : filter p (a :: as) = a :: filter p as := by
  simp [filter, h]

@[simp]
theorem filter_cons_false (h : ¬ p a) : filter p (a :: as) = filter p as := by
  simp [filter, h]

@[aesop 50% [constructors, cases]]
inductive Mem (a : α) : List α → Prop where
  | head {as : _} : Mem a (a::as)
  | tail {as : _} : Mem a as → Mem a (a'::as)

infix:50 " ∈ " => Mem

theorem mem_filter : a ∈ filter p as ↔ a ∈ as ∧ p a := by
  apply Iff.intro
  case mp =>
    intro h
    induction as with
    | nil => cases h
    | cons a' as ih => by_cases ha' : p a' <;> aesop
  case mpr =>
    intro h
    induction as with
    | nil => cases h.1
    | cons a' as ih =>
      cases h.1 with
      | head =>
        rw [filter_cons_true h.2]
        constructor
      | tail ha =>
        have : a ∈ filter p as := ih ⟨ha, h.2⟩
        by_cases hpa' : p a'
        case pos =>
          rw [filter_cons_true hpa']
          exact Mem.tail this
        case neg =>
          rw [filter_cons_false hpa']
          exact this

end TBA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97e83c69563aba7cf1c6baeeb8f1a8fc51775471d21fece6ca2ff5a0192ba0f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Varianta5abd4e8be91b53e688c173a38390bf421e4994668b45d47c5a1ab521353294e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
