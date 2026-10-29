import Mathlib.AlgebraicTopology.SimplicialObject.Basic
import Mathlib.CategoryTheory.Functor.KanExtension.Basic

/-!
# Left Kan extensions and certified simplicial resolutions

This module records a genuine Mathlib left Kan extension together with optional
resolution data.  A simplicial diagram is not automatically a homotopy-correct
resolution: `ResolutionFormula` separately retains both an effectiveness proof
and the resulting realization isomorphism.  Likewise, the word "derived" is
used only when a supplied derived model and localization certificate are
present.
-/

open CategoryTheory

namespace DAF.Fabric

universe u v w

/-- Atomic semantics together with a certified left Kan extension to composite sources. -/
structure LeftKanExtensionDatum where
  Atomic : Type u
  Source : Type v
  Target : Type w
  [instCategoryAtomic : Category.{u} Atomic]
  [instCategorySource : Category.{v} Source]
  [instCategoryTarget : Category.{w} Target]
  inclusion : Atomic ⥤ Source
  localSemantics : Atomic ⥤ Target
  globalSemantics : Source ⥤ Target
  unit : localSemantics ⟶ inclusion ⋙ globalSemantics
  universal : globalSemantics.IsLeftKanExtension unit

attribute [instance] LeftKanExtensionDatum.instCategoryAtomic
  LeftKanExtensionDatum.instCategorySource LeftKanExtensionDatum.instCategoryTarget

/--
A left Kan extension equipped with an explicit derived/localized model.

The fields are an interface to a chosen derived construction; they do not
assert that every object called `DerivedModel` is a derived category object.
-/
structure DerivedLeftKanExtensionDatum extends LeftKanExtensionDatum where
  DerivedModel : Type w
  derivedModel : Source → DerivedModel
  Localized : DerivedModel → Prop
  localizationCertificate : ∀ X, Localized (derivedModel X)

/-- A simplicial atomic resolution augmented to a selected composite source. -/
structure SimplicialResolution
    (K : LeftKanExtensionDatum)
    (X : K.Source) where
  resolution : SimplicialObject K.Atomic
  augmentation :
    resolution ⋙ K.inclusion ⟶ (SimplicialObject.const K.Source).obj X
  cofinalOrEffective : Prop

/--
Certified evidence that a selected realization of local semantics computes the
global left-Kan-extension value at `X`.
-/
structure ResolutionFormula
    {K : LeftKanExtensionDatum}
    {X : K.Source}
    (R : SimplicialResolution K X) where
  realize : SimplicialObject K.Target ⥤ K.Target
  effective : R.cofinalOrEffective
  realizationIso :
    realize.obj (R.resolution ⋙ K.localSemantics) ≅ K.globalSemantics.obj X

end DAF.Fabric
