/-
Representation-indexed realization and conditional natural-isomorphism independence
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 89347c7f1ec30728d3489f0cc1546ea206704a12aa28695cd0516f1d6118db0c
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
Legacy DAF.Comparison.Properties, DAF.Comparison.Scope and DAF.Fabric.Refinement imports remain unresolved.
Representation independence requires an explicit natural isomorphism between the two selected functors and is evaluated only at the supplied fabric.
-/
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

open CategoryTheory

open DAF.Fabric

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NaturalTransformations.NaturalIsomorphisms.RepresentedRealizations.Variant89347c7f

universe u v

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


end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NaturalTransformations.NaturalIsomorphisms.RepresentedRealizations.Variant89347c7f
