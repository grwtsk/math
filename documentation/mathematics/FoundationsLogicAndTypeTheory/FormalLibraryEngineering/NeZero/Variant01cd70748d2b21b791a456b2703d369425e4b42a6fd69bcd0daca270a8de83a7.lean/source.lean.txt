-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeZero.Variant94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NeZero.Variant94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/NeZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
module

prelude
public import Init.Data.Zero
public import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeZero.Variant94e1883fd4fd9c5612da4a24a0cbc9bd6a656d31ce9a0123b9833175c5964df3

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
