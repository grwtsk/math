import Surface.Prismatic.DeltaRing

namespace Surface.Prismatic

universe u

/-!
# Ideals and completion certificates

Formalized here: ideals as predicates closed under the operations needed by the
prism interface, plus certificate records for Cartier divisors, derived
completion, bounded torsion, and flatness.

Certificate-gated here: all derived-algebra content.

Not claimed: construction of derived completions or flatness proofs from first
principles.
-/

/-- Ideal-like predicate in a δ-ring. -/
structure IdealLike
    {p : Nat}
    (A : DeltaRing.{u} p) where
  contains : A.ops.carrier → Prop
  zero_mem : contains A.ops.zero
  add_mem :
    ∀ {x y}, contains x → contains y → contains (A.ops.add x y)
  neg_mem :
    ∀ {x}, contains x → contains (A.ops.neg x)
  mul_left_mem :
    ∀ a {x}, contains x → contains (A.ops.mul a x)
  label : String
  boundary : List String

/-- Certificate that an ideal is principal with a named generator. -/
structure Generates
    {p : Nat}
    {A : DeltaRing.{u} p}
    (d : A.ops.carrier)
    (I : IdealLike A) where
  generator_mem : I.contains d
  generates : Prop
  generatesCertified : generates
  boundary : List String

/-- Certificate that an ideal defines a Cartier divisor. -/
structure CartierDivisorCertificate
    {p : Nat}
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  cartier : Prop
  cartierCertified : cartier
  boundary : List String

/-- Derived `(p,I)`-adic completion certificate. -/
structure DerivedCompleteCertificate
    {p : Nat}
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  derivedComplete : Prop
  derivedCompleteCertified : derivedComplete
  boundary : List String

/-- Classical completion certificate. -/
structure ClassicalCompleteCertificate
    {p : Nat}
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  complete : Prop
  completeCertified : complete
  boundary : List String

/-- Bounded `p^∞`-torsion certificate for a quotient-like object. -/
structure BoundedPTorsionCertificate where
  quotientLabel : String
  boundedPTorsion : Prop
  boundedPTorsionCertified : boundedPTorsion
  boundary : List String

/-- Complete flatness certificate. -/
structure CompletelyFlatCertificate where
  sourceLabel : String
  targetLabel : String
  completelyFlat : Prop
  completelyFlatCertified : completelyFlat
  boundary : List String

/-- Faithful flatness certificate. -/
structure FaithfullyFlatCertificate where
  sourceLabel : String
  targetLabel : String
  faithfullyFlat : Prop
  faithfullyFlatCertified : faithfullyFlat
  boundary : List String

/-- Certificate that `p` lies in the prism ideal condition `I + φ(I)A`. -/
structure ContainsPCondition
    {p : Nat}
    (A : DeltaRing.{u} p)
    (I : IdealLike A) where
  containsP : Prop
  containsPCertified : containsP
  boundary : List String

/-- The total ideal in the unit δ-ring, used for interface examples. -/
def unitIdeal (p : Nat) : IdealLike (unitDeltaRing p) where
  contains := fun _ => True
  zero_mem := trivial
  add_mem := by intro x y hx hy; trivial
  neg_mem := by intro x hx; trivial
  mul_left_mem := by intro a x hx; trivial
  label := "unit ideal"
  boundary := [
    "Total ideal on the unit δ-ring.",
    "Used only as a trivial example of the interface."
  ]

end Surface.Prismatic
