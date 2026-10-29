-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CarrierRealization.Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CarrierRealization.Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Comparison.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Comparison.Properties
import DAF.Comparison.Scope
import DAF.Fabric.Refinement

/-!
# Fabric adapters for the typed comparison calculus

The categorical realization map has no underlying function until a concrete
carrier interpretation is supplied.  `CarrierRealization` is that explicit
adapter.  Reaction isomorphisms, levelwise factors, and refinement-preserving
implementation maps then produce only the comparison strengths they actually
prove.

Arithmetic or runtime realizations remain parameterized by their chosen
representation.  Independence is exposed only from a supplied natural
isomorphism between two represented realization functors.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CarrierRealization.Variant89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c

open CategoryTheory

namespace DAF.Fabric

universe u v

/-- An explicit underlying-carrier interpretation of realization morphisms. -/
structure CarrierRealization (R : RealizationTheory) where
  Carrier : R.Target → Type v
  mapCarrier :
    ∀ {X Y : R.Target}, (X ⟶ Y) → Carrier X → Carrier Y
  map_id :
    ∀ (X : R.Target), mapCarrier (𝟙 X) = _root_.id
  map_comp :
    ∀ {X Y Z : R.Target} (f : X ⟶ Y) (g : Y ⟶ Z),
      mapCarrier (f ≫ g) = mapCarrier g ∘ mapCarrier f

namespace CarrierRealization

/-- Carrier maps of target isomorphisms are bijective. -/
theorem mapIso_bijective
    {R : RealizationTheory}
    (C : CarrierRealization R)
    {X Y : R.Target}
    (i : X ≅ Y) :
    Function.Bijective (C.mapCarrier i.hom) := by
  have hleft :
      Function.LeftInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro x
    have hcomp := congrFun (C.map_comp i.hom i.inv) x
    rw [i.hom_inv_id] at hcomp
    have hid := congrFun (C.map_id X) x
    exact hcomp.symm.trans hid
  have hright :
      Function.RightInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro y
    have hcomp := congrFun (C.map_comp i.inv i.hom) y
    rw [i.inv_hom_id] at hcomp
    have hid := congrFun (C.map_id Y) y
    exact hcomp.symm.trans hid
  exact ⟨hleft.injective, hright.surjective⟩

end CarrierRealization

namespace Reaction

/-- A reaction realization as a typed function comparison on supplied carriers. -/
def toComparisonSpec
    {F G : Fabric}
    (reaction : Reaction F G)
    (R : RealizationTheory)
    (C : CarrierRealization R) :
    DAF.Comparison.Spec
      (C.Carrier (R.realize.obj F))
      (C.Carrier (R.realize.obj G)) :=
  ⟨C.mapCarrier (reaction.realizationMap R)⟩

/-- The state map of one cell as a typed comparison. -/
def cellStateComparisonSpec
    {F G : Fabric}
    (reaction : Reaction F G)
    {n : Nat}
    (x : F.Cell n) :
    DAF.Comparison.Spec
      (F.cellSystem x).State
      (G.cellSystem (reaction.mapCell x)).State :=
  ⟨(reaction.cellMap x).mapState⟩

end Reaction

namespace ReactionIso

/-- A complete reaction isomorphism realizes to a bijective carrier comparison. -/
theorem realizationComparison_isBijective
    {F G : Fabric}
    (η : ReactionIso F G)
    (R : RealizationTheory)
    (C : CarrierRealization R) :
    DAF.Comparison.IsBijective (η.hom.toComparisonSpec R C) :=
  C.mapIso_bijective (η.realizationIso R)

end ReactionIso

namespace LevelwiseSystemFactor

/-- Levelwise factor data proves surjectivity of each cell-state comparison. -/
theorem cellComparison_isSurjective
    {F G : Fabric}
    {reaction : Reaction F G}
    (h : LevelwiseSystemFactor reaction)
    {n : Nat}
    (x : F.Cell n) :
    DAF.Comparison.IsSurjective (reaction.cellStateComparisonSpec x) :=
  h.state_surjective x

end LevelwiseSystemFactor

namespace RefinementPreservingReaction

/-- The implementation state map underlying a refinement-preserving reaction. -/
def implementationStateSpec
    {F G : Fabric}
    {reaction : Reaction F G}
    {source : ImplementationFabric F}
    {target : ImplementationFabric G}
    (h : RefinementPreservingReaction reaction source target)
    {n : Nat}
    (x : F.Cell n) :
    DAF.Comparison.Spec
      (source.implementation x).impl.State
      (target.implementation (reaction.mapCell x)).impl.State :=
  ⟨(h.implementationMap x).mapState⟩

/--
Retain the proved abstraction square as a certified comparison property.  The
coefficient contexts and ownership scope are explicit; neither changes the
underlying theorem.
-/
def implementationStateCertified
    {F G : Fabric}
    {reaction : Reaction F G}
    {source : ImplementationFabric F}
    {target : ImplementationFabric G}
    (h : RefinementPreservingReaction reaction source target)
    {n : Nat}
    (x : F.Cell n)
    (coefficientSource coefficientTarget : DAF.Comparison.CoefficientContext)
    (scope : DAF.Comparison.Scope) :
    DAF.Comparison.Certified
      (source.implementation x).impl.State
      (target.implementation (reaction.mapCell x)).impl.State where
  spec := h.implementationStateSpec x
  coefficientSource := coefficientSource
  coefficientTarget := coefficientTarget
  scope := scope
  Property :=
    ∀ state,
      (source.implementation x).refinement.Valid state →
        (target.implementation (reaction.mapCell x)).refinement.abstract
            ((h.implementationMap x).mapState state) =
          (reaction.cellMap x).mapState
            ((source.implementation x).refinement.abstract state)
  Assumptions := True
  certified := fun _ state hstate ↦ h.abstraction_natural x state hstate

end RefinementPreservingReaction

/-- A family of realization functors retaining its representation parameter. -/
structure ParameterizedRealizationTheory (Representation : Type v) where
  Target : Type u
  [instCategoryTarget : Category.{u} Target]
  realize : Representation → FabricCategory ⥤ Target

attribute [instance] ParameterizedRealizationTheory.instCategoryTarget

/-- Proof that two selected representations yield naturally isomorphic realizations. -/
structure RepresentationIndependence
    {Representation : Type v}
    (P : ParameterizedRealizationTheory Representation)
    (left right : Representation) where
  naturalIso : P.realize left ≅ P.realize right

namespace RepresentationIndependence

/-- Independence at a fabric follows only by evaluating the supplied natural isomorphism. -/
def atFabric
    {Representation : Type v}
    {P : ParameterizedRealizationTheory Representation}
    {left right : Representation}
    (h : RepresentationIndependence P left right)
    (F : Fabric) :
    (P.realize left).obj F ≅ (P.realize right).obj F :=
  h.naturalIso.app F

end RepresentationIndependence

end DAF.Fabric
