-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NontrivialOfLt.Variantd345dca67d82171bddfea57bc900a80b6a249b44a33beae8f126c1c47dd5def6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d345dca67d82171bddfea57bc900a80b6a249b44a33beae8f126c1c47dd5def6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.NontrivialOfLt.Variantd345dca67d82171bddfea57bc900a80b6a249b44a33beae8f126c1c47dd5def6","mathematical_subject":"Logic.Foundations","original_sha256":"d345dca67d82171bddfea57bc900a80b6a249b44a33beae8f126c1c47dd5def6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Nontrivial/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Basic.Nontrivial.Defs
public import Mathlib.Basic.Unique
public import Mathlib.Data.Prod.Basic
public import Mathlib.Logic.Function.Basic
public import Mathlib.Order.Defs.LinearOrder

/-!
# Nontrivial types

Results about `Nontrivial`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NontrivialOfLt.Variantd345dca67d82171bddfea57bc900a80b6a249b44a33beae8f126c1c47dd5def6

@[expose] public section

variable {α : Type*} {β : Type*}

-- `x` and `y` are explicit here, as they are often needed to guide typechecking of `h`.
@[to_dual self]
theorem nontrivial_of_lt [Preorder α] (x y : α) (h : x < y) : Nontrivial α :=
  ⟨⟨x, y, ne_of_lt h⟩⟩

@[to_dual none]
theorem exists_pair_lt (α : Type*) [Nontrivial α] [LinearOrder α] : ∃ x y : α, x < y := by
  rcases exists_pair_ne α with ⟨x, y, hxy⟩
  cases lt_or_gt_of_ne hxy <;> exact ⟨_, _, ‹_›⟩

@[to_dual none]
theorem nontrivial_iff_lt [LinearOrder α] : Nontrivial α ↔ ∃ x y : α, x < y :=
  ⟨fun h ↦ @exists_pair_lt α h _, fun ⟨x, y, h⟩ ↦ nontrivial_of_lt x y h⟩

theorem Subtype.nontrivial_iff_exists_ne (p : α → Prop) (x : Subtype p) :
    Nontrivial (Subtype p) ↔ ∃ (y : α) (_ : p y), y ≠ x := by
  simp only [_root_.nontrivial_iff_exists_ne x, Subtype.exists, Ne, Subtype.ext_iff]

open scoped Classical in
/-- An inhabited type is either nontrivial, or has a unique element. -/
noncomputable def nontrivialPSumUnique (α : Type*) [Inhabited α] :
    Nontrivial α ⊕' Unique α :=
  if h : Nontrivial α then PSum.inl h
  else
    PSum.inr
      { default := default,
        uniq := fun x : α ↦ by
          by_contra H
          exact h ⟨_, _, H⟩ }

instance Option.nontrivial [Nonempty α] : Nontrivial (Option α) := by
  inhabit α
  exact ⟨none, some default, nofun⟩

instance nontrivial_prod_right [Nonempty α] [Nontrivial β] : Nontrivial (α × β) :=
  Prod.snd_surjective.nontrivial

instance nontrivial_prod_left [Nontrivial α] [Nonempty β] : Nontrivial (α × β) :=
  Prod.fst_surjective.nontrivial

instance [Nontrivial α] : Nontrivial (α ⊕ β) :=
  have ⟨a, b, h⟩ := ‹Nontrivial α›.exists_pair_ne
  ⟨.inl a, .inl b, by simpa⟩

instance [Nontrivial β] : Nontrivial (α ⊕ β) :=
  have ⟨a, b, h⟩ := ‹Nontrivial β›.exists_pair_ne
  ⟨.inr a, .inr b, by simpa⟩

instance [Nonempty α] [Nonempty β] : Nontrivial (α ⊕ β) :=
  ⟨.inl <| Classical.arbitrary α, .inr <| Classical.arbitrary β, by simp⟩

instance [Subsingleton α] [IsEmpty β] : Subsingleton (α ⊕ β) where
  allEq
  | .inr a, _ => ‹IsEmpty β›.elim a
  | _, .inr b => ‹IsEmpty β›.elim b
  | .inl a, .inl b => congrArg _ <| Subsingleton.elim a b

instance [IsEmpty α] [Subsingleton β] : Subsingleton (α ⊕ β) where
  allEq
  | .inl a, _ => ‹IsEmpty α›.elim a
  | _, .inl b => ‹IsEmpty α›.elim b
  | .inr a, .inr b => congrArg _ <| Subsingleton.elim a b

namespace Pi

variable {I : Type*} {f : I → Type*}

/-- A pi type is nontrivial if it's nonempty everywhere and nontrivial somewhere. -/
theorem nontrivial_at (i' : I) [inst : ∀ i, Nonempty (f i)] [Nontrivial (f i')] :
    Nontrivial (∀ i : I, f i) := by
  classical
  let := Classical.decEq (∀ i : I, f i)
  exact (Function.update_injective (fun i ↦ Classical.choice (inst i)) i').nontrivial

/-- As a convenience, provide an instance automatically if `(f default)` is nontrivial.

If a different index has the non-trivial type, then use `haveI := nontrivial_at that_index`.
-/
instance nontrivial [Inhabited I] [∀ i, Nonempty (f i)] [Nontrivial (f default)] :
    Nontrivial (∀ i : I, f i) :=
  nontrivial_at default

end Pi

instance Function.nontrivial [h : Nonempty α] [Nontrivial β] : Nontrivial (α → β) :=
  h.elim fun a ↦ Pi.nontrivial_at a

@[nontriviality]
protected theorem Subsingleton.le [Preorder α] [Subsingleton α] (x y : α) : x ≤ y :=
  le_of_eq (Subsingleton.elim x y)
