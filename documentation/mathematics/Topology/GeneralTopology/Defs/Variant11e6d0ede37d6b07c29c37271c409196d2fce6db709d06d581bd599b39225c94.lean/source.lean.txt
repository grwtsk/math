-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousMap.Varianta4de4f3ae5c6d605a4c2449db2ace372e83b430e44da6919c808d633142711e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4de4f3ae5c6d605a4c2449db2ace372e83b430e44da6919c808d633142711e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousMap.Varianta4de4f3ae5c6d605a4c2449db2ace372e83b430e44da6919c808d633142711e3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a4de4f3ae5c6d605a4c2449db2ace372e83b430e44da6919c808d633142711e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/ContinuousMap/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Nicolò Cavalleri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nicolò Cavalleri, Yury Kudryashov
-/
module

public import Mathlib.Data.FunLike.Basic
public import Mathlib.Tactic.Continuity
public import Mathlib.Tactic.Lift
public import Mathlib.Topology.Defs.Basic

/-!
# Continuous bundled maps

In this file we define the type `ContinuousMap` of continuous bundled maps.

We use the `DFunLike` design, so each type of morphisms has a companion typeclass
which is meant to be satisfied by itself and all stricter types.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousMap.Varianta4de4f3ae5c6d605a4c2449db2ace372e83b430e44da6919c808d633142711e3

@[expose] public section

open Function
open scoped Topology

/-- The type of continuous maps from `X` to `Y`.

When possible, instead of parametrizing results over `(f : C(X, Y))`,
you should parametrize over `{F : Type*} [ContinuousMapClass F X Y] (f : F)`.

When you extend this structure, make sure to extend `ContinuousMapClass`. -/
structure ContinuousMap (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] where
  /-- The function `X → Y` -/
  protected toFun : X → Y
  /-- Proposition that `toFun` is continuous -/
  protected continuous_toFun : Continuous toFun := by fun_prop

/-- `C(X, Y)` is the type of continuous maps from `X` to `Y`. -/
notation "C(" X ", " Y ")" => ContinuousMap X Y

section

/-- `ContinuousMapClass F X Y` states that `F` is a type of continuous maps.

You should extend this class when you extend `ContinuousMap`. -/
class ContinuousMapClass (F : Type*) (X Y : outParam Type*)
    [TopologicalSpace X] [TopologicalSpace Y] [FunLike F X Y] : Prop where
  /-- Continuity -/
  map_continuous (f : F) : Continuous f

end

export ContinuousMapClass (map_continuous)

attribute [continuity, fun_prop] map_continuous

section ContinuousMapClass

variable {F X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [FunLike F X Y]
variable [ContinuousMapClass F X Y]

/-- Coerce a bundled morphism with a `ContinuousMapClass` instance to a `ContinuousMap`. -/
@[coe, reducible] def toContinuousMap (f : F) : C(X, Y) := ⟨f, map_continuous f⟩

instance : CoeTC F C(X, Y) := ⟨toContinuousMap⟩

end ContinuousMapClass

/-! ### Continuous maps -/


namespace ContinuousMap

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]

@[macro_inline]
instance instFunLike : FunLike C(X, Y) X Y where
  coe := ContinuousMap.toFun
  coe_injective f g h := by cases f; cases g; congr

instance instContinuousMapClass : ContinuousMapClass C(X, Y) X Y where
  map_continuous := ContinuousMap.continuous_toFun

@[simp]
theorem toFun_eq_coe {f : C(X, Y)} : f.toFun = (f : X → Y) :=
  rfl

instance : CanLift (X → Y) C(X, Y) DFunLike.coe Continuous := ⟨fun f hf ↦ ⟨⟨f, hf⟩, rfl⟩⟩

/-- See note [custom simps projection]. -/
def Simps.apply (f : C(X, Y)) : X → Y := f

-- this must come after the coe_to_fun definition
initialize_simps_projections ContinuousMap (toFun → apply)

@[simp]
protected theorem coe_coe {F : Type*} [FunLike F X Y] [ContinuousMapClass F X Y] (f : F) :
    ⇑(f : C(X, Y)) = f :=
  rfl

protected theorem coe_apply {F : Type*} [FunLike F X Y] [ContinuousMapClass F X Y] (f : F) (x : X) :
    (f : C(X, Y)) x = f x :=
  rfl

/-- Coercion to a `ContinuousMap` is injective.

The unprimed version `ContinuousMap.coe_injective`
is used for the coercion from `C(X, Y)` to `X → Y`. -/
protected theorem coe_injective' {F : Type*} [FunLike F X Y] [ContinuousMapClass F X Y] :
    Injective (toContinuousMap : F → C(X, Y)) :=
  .of_comp (f := DFunLike.coe) DFunLike.coe_injective

@[ext]
theorem ext {f g : C(X, Y)} (h : ∀ a, f a = g a) : f = g :=
  DFunLike.ext _ _ h

/-- Copy of a `ContinuousMap` with a new `toFun` equal to the old one. Useful to fix definitional
equalities. -/
protected def copy (f : C(X, Y)) (f' : X → Y) (h : f' = f) : C(X, Y) where
  toFun := f'
  continuous_toFun := h.symm ▸ f.continuous_toFun

@[simp]
theorem coe_copy (f : C(X, Y)) (f' : X → Y) (h : f' = f) : ⇑(f.copy f' h) = f' :=
  rfl

theorem copy_eq (f : C(X, Y)) (f' : X → Y) (h : f' = f) : f.copy f' h = f :=
  DFunLike.ext' h

/-- Deprecated. Use `map_continuous` instead. -/
protected theorem continuous (f : C(X, Y)) : Continuous f :=
  f.continuous_toFun

/-- Deprecated. Use `DFunLike.congr_fun` instead. -/
protected theorem congr_fun {f g : C(X, Y)} (H : f = g) (x : X) : f x = g x :=
  H ▸ rfl

/-- Deprecated. Use `DFunLike.congr_arg` instead. -/
protected theorem congr_arg (f : C(X, Y)) {x y : X} (h : x = y) : f x = f y :=
  h ▸ rfl

theorem coe_injective : Function.Injective (DFunLike.coe : C(X, Y) → (X → Y)) :=
  DFunLike.coe_injective

@[simp]
theorem coe_mk (f : X → Y) (h : Continuous f) : ⇑(⟨f, h⟩ : C(X, Y)) = f :=
  rfl

instance [Subsingleton Y] : Subsingleton C(X, Y) := DFunLike.subsingleton_cod
instance [IsEmpty X] : Subsingleton C(X, Y) := DFunLike.subsingleton_dom

end ContinuousMap
