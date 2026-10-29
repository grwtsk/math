-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RArray.Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/RArray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Init.GetElem
import Init.PropLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant8567fe0ea5f15f70159d8eec4b8a46cf0a0ab28f81247e99010a4c23bfc81350

public section

@[expose] section

namespace Lean

/--
A `RArray` can model `Fin n → α` or `Array α`, but is optimized for a fast kernel-reducible `get`
operation.

The primary intended use case is the “denote” function of a typical proof by reflection proof, where
only the `get` operation is necessary. It is not suitable as a general-purpose data structure.

There is no well-formedness invariant attached to this data structure, to keep it concise; it's
semantics is given through `RArray.get`. In that way one can also view an `RArray` as a decision
tree implementing `Nat → α`.

See `RArray.ofFn` and `RArray.ofArray` in module `Lean.Data.RArray` for functions that construct an
`RArray`.
-/
inductive RArray (α : Type u) : Type u where
  | leaf : α → RArray α
  | branch : Nat → RArray α → RArray α → RArray α

variable {α : Type u}

/-- The crucial operation, written with very little abstractional overhead -/
noncomputable abbrev RArray.get (a : RArray α) (n : Nat) : α :=
  RArray.rec (fun x => x) (fun p _ _ l r => (Nat.ble p n).rec l r) a

private theorem RArray.get_eq_def (a : RArray α) (n : Nat) :
  a.get n = match a with
    | .leaf x => x
    | .branch p l r => (Nat.ble p n).rec (l.get n) (r.get n) := by
  conv => lhs; unfold RArray.get
  split <;> rfl

/-- `RArray.get`, implemented conventionally -/
def RArray.getImpl (a : RArray α) (n : Nat) : α :=
  match a with
  | .leaf x => x
  | .branch p l r => if n < p then l.getImpl n else r.getImpl n

@[csimp]
theorem RArray.get_eq_getImpl : @RArray.get = @RArray.getImpl := by
  funext α a n
  induction a with
  | leaf _ => rfl
  | branch p l r ihl ihr =>
    rw [RArray.getImpl, RArray.get_eq_def]
    simp only [ihl, ihr, ← Nat.not_le, ← Nat.ble_eq, ite_not]
    cases hnp : Nat.ble p n <;> rfl

instance : GetElem (RArray α) Nat α (fun _ _ => True) where
  getElem a n _ := a.get n

def RArray.size : RArray α → Nat
  | leaf _ => 1
  | branch _ l r => l.size + r.size

end Lean
