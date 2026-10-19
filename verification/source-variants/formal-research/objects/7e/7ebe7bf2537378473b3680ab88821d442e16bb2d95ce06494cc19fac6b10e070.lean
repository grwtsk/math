import DAF.Arithmetic.Interface
import DAF.Comparison.Construction
import DAF.Comparison.LogicalStatus
import DAF.Comparison.Properties
import DAF.Comparison.Scope

/-!
# Comparison-calculus adapters for arithmetic data

This module turns supplied arithmetic maps into typed comparison objects.  It
does not construct a representation, algebraic K-theory functor, or etale
comparison theorem.  Provenance is independent of logical status: fixing a
representation selects a definite map, while bijectivity can remain
conditional or conjectural.

The representation parameter is retained by `RepresentationFamily.comparison`.
The etale adapter retains its explicit coefficient change and produces a
conditional certificate whose hypothesis is exactly the one stored by the
caller.  Architectural metadata such as scope never proves a map property.
-/

namespace DAF.Arithmetic

open scoped MonoidAlgebra

universe uP uS uT uRG uRN uR uC uK uE

namespace KTheoryFunctoriality

/-- The K-theory realization map selected in one degree. -/
def comparison
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int) :
    Comparison.Spec (K.Source degree) (K.Target degree) :=
  ⟨K.kTheoryMap degree⟩

@[simp]
theorem comparison_apply
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int)
    (x : K.Source degree) :
    (K.comparison degree).map x = K.kTheoryMap degree x :=
  rfl

/--
The representation-induced map as an unconditional, integral certified
comparison.  Its proved property is functorial provenance, not bijectivity.
-/
def certified
    {A : RepresentationDatum}
    (K : KTheoryFunctoriality A)
    (degree : Int)
    (scope : Comparison.Scope) :
    Comparison.Certified (K.Source degree) (K.Target degree) :=
  Comparison.Certified.ofProof
    (K.comparison degree)
    Comparison.CoefficientContext.integral
    Comparison.CoefficientContext.integral
    scope
    (K.InducedBy A.groupRingMap K.kTheoryMap)
    K.induced_by_groupRingMap

end KTheoryFunctoriality

/--
A representation-indexed family of K-theory realization maps with common
source and target types.

The proof predicate is supplied by the chosen K-theory model.  Every selected
map is proved to be induced by the corresponding representation's group-ring
homomorphism.
-/
structure RepresentationFamily
    (Representation : Type uP) where
  datum : Representation → RepresentationDatum.{uRG, uRN}
  Source : Int → Type uS
  Target : Int → Type uT
  map :
    Representation →
      (degree : Int) → Source degree → Target degree
  InducedBy :
    (representation : Representation) →
      (MonoidAlgebra ℤ (datum representation).Group →+*
        (datum representation).NumberRing) →
      ((degree : Int) → Source degree → Target degree) → Prop
  induced_by_groupRingMap :
    ∀ representation,
      InducedBy representation
        (datum representation).groupRingMap
        (map representation)

namespace RepresentationFamily

/--
The realization family as a representation-parameterized comparison.  No
existential hides the selected representation.
-/
def comparison
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (degree : Int) :
    Comparison.Parameterized
      Representation
      (F.Source degree)
      (F.Target degree) :=
  ⟨fun representation ↦ F.map representation degree⟩

@[simp]
theorem comparison_apply
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int)
    (x : F.Source degree) :
    (F.comparison degree).map representation x =
      F.map representation degree x :=
  rfl

/-- A fixed representation selects an ordinary comparison, without erasing the family. -/
def comparisonAt
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int) :
    Comparison.Spec (F.Source degree) (F.Target degree) :=
  (F.comparison degree).at representation

end RepresentationFamily

namespace EtaleComparisonDatum

/-- The map part of an arithmetic/etale comparison datum. -/
def spec
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S) :
    Comparison.Spec E.KTheoryObject.Carrier E.EtaleObject.Carrier :=
  ⟨E.comparison⟩

@[simp]
theorem spec_apply
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S)
    (x : E.KTheoryObject.Carrier) :
    E.spec.map x = E.comparison x :=
  rfl

/-- The explicitly stated bijectivity claim for the comparison. -/
def bijectivityClaim
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S) :
    Comparison.Claim E.spec where
  statement := Comparison.IsBijective E.spec

/--
The stored arithmetic hypothesis proves the stated claim; without an
inhabitant of `E.Hypothesis`, this yields no bijectivity theorem.
-/
def conditionalCertificate
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uC}}
    (E : EtaleComparisonDatum R S) :
    Comparison.ConditionalCertificate E.spec E.bijectivityClaim where
  Hypothesis := E.Hypothesis
  proof := E.comparison_bijective

/--
Package the etale comparison as a conditional certified comparison.  The
source and target coefficient contexts may differ only because `E` contains
the explicit `coefficientChange` witnessing that transition.
-/
def certified
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uR}}
    (E : EtaleComparisonDatum R S)
    (scope : Comparison.Scope) :
    Comparison.Certified E.KTheoryObject.Carrier E.EtaleObject.Carrier where
  spec := E.spec
  coefficientSource := R
  coefficientTarget := S
  scope := scope
  Property := Comparison.IsBijective E.spec
  Assumptions := E.Hypothesis
  certified := E.comparison_bijective

theorem certified_property
    {R : Comparison.CoefficientContext.{uR}}
    {S : Comparison.CoefficientContext.{uR}}
    (E : EtaleComparisonDatum R S)
    (scope : Comparison.Scope)
    (h : E.Hypothesis) :
    (E.certified scope).Property :=
  (E.certified scope).certified h

end EtaleComparisonDatum

end DAF.Arithmetic
