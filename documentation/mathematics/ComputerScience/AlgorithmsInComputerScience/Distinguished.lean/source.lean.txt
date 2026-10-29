import Surface.Prismatic.Completion

namespace Surface.Prismatic

universe u

/-!
# Distinguished elements

Formalized here: distinguished elements as elements whose δ-value carries a
unit certificate, not as Boolean flags.

Certificate-gated here: stability under maps and unit-multiple stability when
the required locality/radical hypotheses are not developed.
-/

/-- Explicit unit certificate in a ring-operation interface. -/
structure UnitCertificate
    {p : Nat}
    (A : DeltaRing.{u} p)
    (x : A.ops.carrier) where
  inverse : A.ops.carrier
  left_inverse : A.ops.mul inverse x = A.ops.one
  right_inverse : A.ops.mul x inverse = A.ops.one
  boundary : List String

/-- A distinguished element of a δ-ring. -/
structure DistinguishedElement
    {p : Nat}
    (A : DeltaRing.{u} p) where
  d : A.ops.carrier
  delta_d_is_unit : UnitCertificate A (A.delta d)
  boundary : List String

/-- Rank-one distinguished-element certificate metadata. -/
structure RankOneCertificate
    {p : Nat}
    {A : DeltaRing.{u} p}
    (d : DistinguishedElement A) where
  rankOne : Prop
  rankOneCertified : rankOne
  boundary : List String

/-- A transported distinguished element under a δ-ring map. -/
structure DistinguishedTransportCertificate
    {p : Nat}
    {A B : DeltaRing.{u} p}
    (f : DeltaRingHom A B)
    (d : DistinguishedElement A) where
  imageDistinguished : DistinguishedElement B
  image_eq : imageDistinguished.d = f.map d.d
  boundary : List String

theorem distinguished_is_stable_under_delta_maps
    {p : Nat}
    {A B : DeltaRing.{u} p}
    {f : DeltaRingHom A B}
    {d : DistinguishedElement A}
    (C : DistinguishedTransportCertificate f d) :
    C.imageDistinguished.d = f.map d.d :=
  C.image_eq

/-- Principal prism condition from a distinguished generator. -/
structure PrincipalPrismCondition
    {p : Nat}
    {A : DeltaRing.{u} p}
    (d : DistinguishedElement A)
    (I : IdealLike A) where
  generates_I : Generates d.d I
  principalCondition : Prop
  principalConditionCertified : principalCondition
  boundary : List String

theorem principal_prism_condition_when_I_generated_by_d
    {p : Nat}
    {A : DeltaRing.{u} p}
    {d : DistinguishedElement A}
    {I : IdealLike A}
    (C : PrincipalPrismCondition d I) :
    C.principalCondition :=
  C.principalConditionCertified

/-- Unit-multiple distinguishedness, certificate-gated. -/
structure UnitMultipleDistinguishedCertificate
    {p : Nat}
    {A : DeltaRing.{u} p}
    (d e : DistinguishedElement A) where
  unitMultiple : Prop
  unitMultipleCertified : unitMultiple
  localityOrRadicalHypotheses : List String
  boundary : List String

theorem unit_multiple_distinguished
    {p : Nat}
    {A : DeltaRing.{u} p}
    {d e : DistinguishedElement A}
    (C : UnitMultipleDistinguishedCertificate d e) :
    C.unitMultiple :=
  C.unitMultipleCertified

/-- Distinguished element in the unit δ-ring. -/
def unitDistinguishedElement (p : Nat) :
    DistinguishedElement (unitDeltaRing p) where
  d := PUnit.unit
  delta_d_is_unit := {
    inverse := PUnit.unit
    left_inverse := rfl
    right_inverse := rfl
    boundary := ["Unit certificate in the unit δ-ring."]
  }
  boundary := ["Trivial distinguished element for interface examples."]

end Surface.Prismatic
