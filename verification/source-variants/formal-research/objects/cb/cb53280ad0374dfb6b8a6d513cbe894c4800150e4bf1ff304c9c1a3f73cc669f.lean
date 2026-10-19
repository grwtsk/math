import Mathematics.Prismatic.GlobalObject
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Prime-indexed delta structure

The prime is fixed in the type of the structure.  The displayed identities
are the ordinary `p`-derivation laws, and the Frobenius lift is an actual ring
homomorphism satisfying `φ(x) = x^p + p δ(x)`.
-/

namespace Mathematics.Prismatic

open scoped BigOperators

universe u

variable {A : Type u} [CommRing A]

/-- The integral correction polynomial in the `p`-derivation addition law. -/
def deltaAdditionCorrection
    (prime : CertifiedPrime) (left right : A) : A :=
  ∑ index ∈ Finset.Icc 1 (prime.value - 1),
    ((Nat.choose prime.value index / prime.value : Nat) : A) *
      left ^ index * right ^ (prime.value - index)

/-- A `p`-derivation and a Frobenius lift satisfying proof-bearing laws. -/
structure PrimeDeltaStructure
    (prime : CertifiedPrime) (A : Type u) [CommRing A] where
  delta : A → A
  frobenius : A →+* A
  delta_zero : delta 0 = 0
  delta_one : delta 1 = 0
  delta_add :
    ∀ left right,
      delta (left + right) =
        delta left + delta right -
          deltaAdditionCorrection prime left right
  delta_mul :
    ∀ left right,
      delta (left * right) =
        left ^ prime.value * delta right +
        right ^ prime.value * delta left +
        (prime.value : A) * delta left * delta right
  frobenius_formula :
    ∀ value,
      frobenius value =
        value ^ prime.value + (prime.value : A) * delta value
  structureDigest : Digest
  /-- Provenance address; the laws above, not this address, carry authority. -/
  evidenceAddress : ObjectAddress

namespace PrimeDeltaStructure

variable {prime : CertifiedPrime}

/-- Frobenius differs from the `p`-th power by the displayed `p` multiple. -/
theorem frobenius_sub_power
    (deltaStructure : PrimeDeltaStructure prime A) (value : A) :
    deltaStructure.frobenius value - value ^ prime.value =
      (prime.value : A) * deltaStructure.delta value := by
  rw [deltaStructure.frobenius_formula]
  ring

end PrimeDeltaStructure

end Mathematics.Prismatic
