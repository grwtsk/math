-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Canonical.Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Canonical.Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Nonneg/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public import Mathlib.Algebra.Order.GroupWithZero.Canonical
public import Mathlib.Algebra.Order.Nonneg.Basic
public import Mathlib.Algebra.Order.Nonneg.Lattice
public import Mathlib.Algebra.Order.Ring.InjSurj
public import Mathlib.Tactic.FastInstance

/-!
# Bundled ordered algebra instance on the type of nonnegative elements

This file defines instances and prove some properties about the nonnegative elements
`Nonneg α` of an arbitrary type `α`.

Currently we only state instances and states some `simp`/`norm_cast` lemmas.

When `α` is `ℝ`, this will give us some properties about `ℝ≥0`.

## Implementation Notes

Instead of `{x : α // 0 ≤ x}` we could also use `Set.Ici (0 : α)`, which is definitionally equal.
However, using the explicit subtype has a big advantage: when writing an element explicitly
with a proof of nonnegativity as `⟨x, hx⟩`, the `hx` is expected to have type `0 ≤ x`. If we would
use `Ici 0`, then the type is expected to be `x ∈ Ici 0`. Although these types are definitionally
equal, this often confuses the elaborator. Similar problems arise when doing cases on an element.

The disadvantage is that we have to duplicate some instances about `Set.Ici` to this subtype.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Canonical.Variant6fadb04fadb9f76761d6ea689459c2817228b437da19be4343963828c79a11af

public section

variable {α : Type*}

namespace Nonneg

instance isOrderedAddMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedAddMonoid (Nonneg α) :=
  Function.Injective.isOrderedAddMonoid Subtype.val Nonneg.coe_add .rfl

instance isOrderedCancelAddMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α] :
    IsOrderedCancelAddMonoid (Nonneg α) :=
  Function.Injective.isOrderedCancelAddMonoid _ Nonneg.coe_add .rfl

instance isOrderedRing [Semiring α] [PartialOrder α] [IsOrderedRing α] :
    IsOrderedRing (Nonneg α) :=
  Function.Injective.isOrderedRing Subtype.val Nonneg.coe_zero Nonneg.coe_one Nonneg.coe_add
    Nonneg.coe_mul .rfl

instance isStrictOrderedRing [Semiring α] [PartialOrder α] [IsStrictOrderedRing α] :
    IsStrictOrderedRing (Nonneg α) :=
  Function.Injective.isStrictOrderedRing Subtype.val Nonneg.coe_zero Nonneg.coe_one Nonneg.coe_add
    Nonneg.coe_mul .rfl .rfl

instance existsAddOfLE [Semiring α] [PartialOrder α] [IsStrictOrderedRing α] [ExistsAddOfLE α] :
    ExistsAddOfLE (Nonneg α) :=
  ⟨fun {a b} h ↦ by
    rw [← Subtype.coe_le_coe] at h
    obtain ⟨c, hc⟩ := exists_add_of_le h
    refine ⟨⟨c, ?_⟩, by simp [Subtype.ext_iff, hc]⟩
    rw [← add_zero a.val, hc] at h
    exact le_of_add_le_add_left h⟩

instance nontrivial [Semiring α] [LinearOrder α] [IsStrictOrderedRing α] :
    Nontrivial (Nonneg α) :=
  ⟨⟨0, 1, fun h => zero_ne_one (congr_arg Subtype.val h)⟩⟩

instance [Nontrivial α] [AddGroup α] [LinearOrder α] [AddLeftMono α] :
    Nontrivial (Nonneg α) := by
  have ⟨a, ha⟩ := exists_ne (0 : α)
  obtain lt | lt := ha.lt_or_gt
  · exact ⟨0, ⟨-a, neg_nonneg.mpr lt.le⟩, Subtype.coe_ne_coe.mp (neg_ne_zero.mpr ha).symm⟩
  · exact ⟨0, ⟨a, lt.le⟩, Subtype.coe_ne_coe.mp ha.symm⟩

instance linearOrderedCommMonoidWithZero [CommSemiring α] [LinearOrder α] [IsStrictOrderedRing α] :
    LinearOrderedCommMonoidWithZero (Nonneg α) where
  isBot_zero a := a.2

instance canonicallyOrderedAdd [Ring α] [PartialOrder α] [IsOrderedRing α] :
    CanonicallyOrderedAdd (Nonneg α) where
  le_add_self _ b := le_add_of_nonneg_left b.2
  le_self_add _ b := le_add_of_nonneg_right b.2
  exists_add_of_le := fun {a b} h =>
    ⟨⟨b - a, sub_nonneg_of_le h⟩, Subtype.ext (add_sub_cancel _ _).symm⟩

instance noZeroDivisors [Semiring α] [PartialOrder α] [IsOrderedRing α] [NoZeroDivisors α] :
    NoZeroDivisors (Nonneg α) :=
  { eq_zero_or_eq_zero_of_mul_eq_zero := by
      rintro ⟨a, ha⟩ ⟨b, hb⟩
      simp only [mk_mul_mk, mk_eq_zero, mul_eq_zero, imp_self] }

instance orderedSub [Ring α] [LinearOrder α] [IsStrictOrderedRing α] :
    OrderedSub (Nonneg α) :=
  ⟨by
    rintro ⟨a, ha⟩ ⟨b, hb⟩ ⟨c, hc⟩
    simp only [sub_le_iff_le_add, Subtype.mk_le_mk, mk_sub_mk, mk_add_mk, toNonneg_le]⟩

end Nonneg
