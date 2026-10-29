# Kan Extension — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8cd7405d080f47d1d4055f6d40ec7e3a20c1cb4` · SHA-256 `72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a078cc86a20f01813d6c3c563927dc0a6b64fb235ce9205ce749ed453ea4985a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant72c0152ff74ce4c9ce67f0b7bb6734388c3a83a3db82bce2ade5f050e70122ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
