-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.InfiniteOfCharZero.Variantdc44e115baf7aeba2313b9e0ac0573d968ee479465702cf133a338d90c055c65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc44e115baf7aeba2313b9e0ac0573d968ee479465702cf133a338d90c055c65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.InfiniteOfCharZero.Variantdc44e115baf7aeba2313b9e0ac0573d968ee479465702cf133a338d90c055c65","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"dc44e115baf7aeba2313b9e0ac0573d968ee479465702cf133a338d90c055c65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/AlgebraicCard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Algebra.Polynomial.Cardinal
public import Mathlib.RingTheory.Algebraic.Basic

/-!
# Cardinality of algebraic numbers

In this file, we prove variants of the following result: the cardinality of algebraic numbers under
an R-algebra is at most `#R[X] * ℵ₀`.

Although this can be used to prove that real or complex transcendental numbers exist, a more direct
proof is given by `Liouville.transcendental`.
-/


namespace GRWTSK.Algebra.InfiniteOfCharZero.Variantdc44e115baf7aeba2313b9e0ac0573d968ee479465702cf133a338d90c055c65

public section


universe u v

open Cardinal Polynomial Set

open Cardinal Polynomial

namespace Algebraic

theorem infinite_of_charZero (R A : Type*) [CommRing R] [Ring A] [Algebra R A]
    [CharZero A] : { x : A | IsAlgebraic R x }.Infinite := by
  let := MulActionWithZero.nontrivial R A
  exact infinite_of_injective_forall_mem Nat.cast_injective isAlgebraic_natCast

theorem aleph0_le_cardinalMk_of_charZero (R A : Type*) [CommRing R] [Ring A]
    [Algebra R A] [CharZero A] : ℵ₀ ≤ #{ x : A // IsAlgebraic R x } :=
  infinite_iff.1 (Set.infinite_coe_iff.2 <| infinite_of_charZero R A)

section lift

variable (R : Type u) (A : Type v) [CommRing R] [IsDomain R] [CommRing A] [IsDomain A] [Algebra R A]
  [Module.IsTorsionFree R A]

theorem cardinalMk_lift_le_mul :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } ≤ Cardinal.lift.{v} #R[X] * ℵ₀ := by
  rw [← mk_uLift, ← mk_uLift]
  choose g hg₁ hg₂ using fun x : { x : A | IsAlgebraic R x } => x.coe_prop
  refine lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le g fun f => ?_
  rw [lift_le_aleph0, le_aleph0_iff_set_countable]
  suffices MapsTo (↑) (g ⁻¹' {f}) (f.rootSet A) from
    this.countable_of_injOn Subtype.coe_injective.injOn (f.rootSet_finite A).countable
  rintro x (rfl : g x = f)
  exact mem_rootSet.2 ⟨hg₁ x, hg₂ x⟩

theorem cardinalMk_lift_le_max :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } ≤ max (Cardinal.lift.{v} #R) ℵ₀ :=
  (cardinalMk_lift_le_mul R A).trans <| by grw [lift_le.2 cardinalMk_le_max]; simp

@[simp]
theorem cardinalMk_lift_of_infinite [Infinite R] :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } = Cardinal.lift.{v} #R :=
  ((cardinalMk_lift_le_max R A).trans_eq (max_eq_left <| aleph0_le_mk _)).antisymm <|
    lift_mk_le'.2 ⟨⟨fun x => ⟨algebraMap R A x, isAlgebraic_algebraMap _⟩, fun _ _ h =>
      FaithfulSMul.algebraMap_injective R A (Subtype.ext_iff.1 h)⟩⟩

variable [Countable R]

@[simp]
protected theorem countable : Set.Countable { x : A | IsAlgebraic R x } := by
  rw [← le_aleph0_iff_set_countable, ← lift_le_aleph0]
  apply (cardinalMk_lift_le_max R A).trans
  simp

@[simp]
theorem cardinalMk_of_countable_of_charZero [CharZero A] :
    #{ x : A // IsAlgebraic R x } = ℵ₀ :=
  (Algebraic.countable R A).le_aleph0.antisymm (aleph0_le_cardinalMk_of_charZero R A)

end lift

section NonLift

variable (R A : Type u) [CommRing R] [IsDomain R] [CommRing A] [IsDomain A] [Algebra R A]
  [Module.IsTorsionFree R A]

theorem cardinalMk_le_mul : #{ x : A // IsAlgebraic R x } ≤ #R[X] * ℵ₀ := by
  rw [← lift_id #_, ← lift_id #R[X]]
  exact cardinalMk_lift_le_mul R A

@[stacks 09GK]
theorem cardinalMk_le_max : #{ x : A // IsAlgebraic R x } ≤ max #R ℵ₀ := by
  rw [← lift_id #_, ← lift_id #R]
  exact cardinalMk_lift_le_max R A

@[simp]
theorem cardinalMk_of_infinite [Infinite R] : #{ x : A // IsAlgebraic R x } = #R :=
  lift_inj.1 <| cardinalMk_lift_of_infinite R A

end NonLift

end Algebraic
