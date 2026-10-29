-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FinTopCat.Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FinTopCat.Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"bbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/FinTopCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.FintypeCat
public import Mathlib.Topology.Category.TopCat.Basic

/-!
# Category of finite topological spaces

Definition of the category of finite topological spaces with the canonical
forgetful functors.

-/


namespace GRWTSK.Topology.GeneralTopology.FinTopCat.Variantbbe40cbd68aec090e2e8933b192b3ae7e2a56542165a9781fc9fd76d2588f57a

@[expose] public section


universe u

open CategoryTheory

/-- A bundled finite topological space. -/
structure FinTopCat where
  /-- carrier of a finite topological space. -/
  toTop : TopCat.{u} -- TODO: turn this into an `extends`?
  [fintype : Fintype toTop]

namespace FinTopCat

instance : Inhabited FinTopCat :=
  ⟨{ toTop := ↧PEmpty }⟩

instance : CoeSort FinTopCat (Type u) :=
  ⟨fun X => X.toTop⟩

attribute [instance] fintype

instance : Category FinTopCat :=
  inferInstanceAs <| Category (InducedCategory _ toTop)

instance : ConcreteCategory FinTopCat (C(·, ·)) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toTop) _

/-- Construct a bundled `FinTopCat` from the underlying type and the appropriate typeclasses. -/
def of (X : Type u) [Fintype X] [TopologicalSpace X] : FinTopCat where
  toTop := ↧X
  fintype := ‹_›

open Lean.PrettyPrinter.Delaborator in
/-- This prints `FinTopCat.of X` as `↧X`. -/
@[app_delab FinTopCat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

@[simp]
theorem coe_of (X : Type u) [Fintype X] [TopologicalSpace X] :
    (of X : Type u) = X :=
  rfl

/-- The forgetful functor to `FintypeCat`. -/
instance : HasForget₂ FinTopCat FintypeCat :=
  HasForget₂.mk' (fun X ↦ ↧X) (fun _ ↦ rfl)
    (fun f ↦ FintypeCat.homMk f) HEq.rfl

instance (X : FinTopCat) : TopologicalSpace ((forget₂ FinTopCat FintypeCat).obj X) :=
  inferInstanceAs <| TopologicalSpace X

/-- The forgetful functor to `TopCat`. -/
instance : HasForget₂ FinTopCat TopCat :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toTop) _

instance (X : FinTopCat) : Fintype ((forget₂ FinTopCat TopCat).obj X) :=
  X.fintype

end FinTopCat

namespace FintypeCatDiscrete

/-- Scoped topological space instance on objects of the category of finite types, assigning
the discrete topology. -/
scoped instance (X : FintypeCat) : TopologicalSpace X := ⊥
scoped instance (X : FintypeCat) : DiscreteTopology X := ⟨rfl⟩

/-- The forgetful functor from finite types to topological spaces, forgetting discreteness.
This is a scoped instance. -/
scoped instance : HasForget₂ FintypeCat TopCat where
  forget₂.obj X := ↧X
  forget₂.map f := TopCat.ofHom ⟨f, continuous_of_discreteTopology⟩

end FintypeCatDiscrete
