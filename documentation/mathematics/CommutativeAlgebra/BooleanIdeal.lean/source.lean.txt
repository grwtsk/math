import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.RingTheory.Ideal.Operations
import Mathematics.MobiusOntology.ShiftSemantics

/-!
# Typed Boolean ideals and conservative infeasibility

The algebraic ideal and its Boolean solution set are retained together.
Emptiness implies `1 ∈ I` only through a supplied finite Boolean
Nullstellensatz certificate.
-/

namespace Mathematics.MobiusOntology

abbrev BooleanCoordinateRing (width : Nat) :=
  MvPolynomial (Fin width) (ZMod 2)

def bitfieldCoordinate
    (bitfield : BooleanBitfield width)
    (index : Fin width) : ZMod 2 :=
  if bitfield index then 1 else 0

structure BooleanIdeal (width : Nat) where
  carrier : Ideal (BooleanCoordinateRing width)
  booleanRelations :
    ∀ index,
      (MvPolynomial.X index) ^ 2 - MvPolynomial.X index ∈ carrier

def BooleanIdeal.IsModel
    (ideal : BooleanIdeal width)
    (bitfield : BooleanBitfield width) : Prop :=
  ∀ polynomial,
    polynomial ∈ ideal.carrier →
      MvPolynomial.eval (bitfieldCoordinate bitfield) polynomial = 0

abbrev BooleanVariety (ideal : BooleanIdeal width) :=
  {bitfield : BooleanBitfield width // ideal.IsModel bitfield}

theorem BooleanIdeal.variety_empty_of_one_mem
    (ideal : BooleanIdeal width)
    (oneMember : (1 : BooleanCoordinateRing width) ∈ ideal.carrier) :
    IsEmpty (BooleanVariety ideal) := by
  constructor
  intro model
  have impossible := model.property 1 oneMember
  simpa using impossible

/-- The converse direction is an explicit proof-bearing finite certificate. -/
structure BooleanNullstellensatzCertificate
    (ideal : BooleanIdeal width) : Prop where
  emptyToOne :
    IsEmpty (BooleanVariety ideal) →
      (1 : BooleanCoordinateRing width) ∈ ideal.carrier

theorem boolean_variety_empty_iff_one_mem
    (ideal : BooleanIdeal width)
    (certificate : BooleanNullstellensatzCertificate ideal) :
    IsEmpty (BooleanVariety ideal) ↔
      (1 : BooleanCoordinateRing width) ∈ ideal.carrier := by
  constructor
  · exact certificate.emptyToOne
  · exact ideal.variety_empty_of_one_mem

/-- Provenance-preserving decomposition of the complete Boolean system. -/
structure TypedBooleanIdealSystem (width : Nat) where
  transition : BooleanIdeal width
  phase : BooleanIdeal width
  observation : BooleanIdeal width
  budget : BooleanIdeal width
  boundary : BooleanIdeal width
  authority : BooleanIdeal width
  bridge : BooleanIdeal width

structure HammingBudgetCertificate
    (width : Nat)
    (constraint : BooleanBitfield width → Prop)
    (reference : BooleanBitfield width)
    (radius : Nat) : Prop where
  exact :
    ∀ bitfield,
      constraint bitfield ↔
        hammingDistance bitfield reference ≤ radius

end Mathematics.MobiusOntology
