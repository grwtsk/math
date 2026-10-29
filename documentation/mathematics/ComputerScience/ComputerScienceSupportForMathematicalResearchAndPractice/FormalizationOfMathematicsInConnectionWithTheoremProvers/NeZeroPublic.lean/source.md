# Ne Zero Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f8af227938d755885187cd670c62766859bea20` · SHA-256 `94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
module

prelude
public import Init.Data.Zero
public import Init.Core

public section


/-!
# `NeZero` typeclass

We create a typeclass `NeZero n` which carries around the fact that `(n : R) ≠ 0`.

## Main declarations

* `NeZero`: `n ≠ 0` as a typeclass.
-/


variable {R : Type _} [Zero R]

/-- A type-class version of `n ≠ 0`.  -/
class NeZero (n : R) : Prop where
  /-- The proposition that `n` is not zero. -/
  out : n ≠ 0

theorem NeZero.ne (n : R) [h : NeZero n] : n ≠ 0 :=
  h.out

theorem NeZero.ne' (n : R) [h : NeZero n] : 0 ≠ n :=
  h.out.symm

theorem neZero_iff {n : R} : NeZero n ↔ n ≠ 0 :=
  ⟨fun h ↦ h.out, NeZero.mk⟩

@[simp] theorem neZero_zero_iff_false {α : Type _} [Zero α] : NeZero (0 : α) ↔ False :=
  ⟨fun _ ↦ NeZero.ne (0 : α) rfl, fun h ↦ h.elim⟩

instance {p : Prop} [Decidable p] {n m : Nat} [NeZero n] [NeZero m] :
    NeZero (if p then n else m) := by
  split <;> infer_instance

instance {n m : Nat} [h : NeZero n] : NeZero (n + m) where
  out :=
    match n, h, m with
    | _ + 1, _, 0
    | _ + 1, _, _ + 1 => fun h => nomatch h

instance {n m : Nat} [h : NeZero m] : NeZero (n + m) where
  out :=
    match m, h, n with
    | _ + 1, _, 0 => fun h => nomatch h
    | _ + 1, _, _ + 1 => fun h => nomatch h

instance {n m : Nat} [hn : NeZero n] [hm : NeZero m] : NeZero (n * m) where
  out :=
    match n, hn, m, hm with
    | _ + 1, _, _ + 1, _ => fun h => nomatch h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25374b473ad629c89e4253207c82346cd1c2e852d1535d4e3dc8f9bf87dc5452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeZero/Variant94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
