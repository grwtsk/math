# Delta Structure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e17e0a09b24f5c485c8eec8ab7b8e1410472023` · SHA-256 `cb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=507140811432468b583b3064024d15116acfd0e4b149664cf738521ac4d075a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/DeltaStructure/Variantcb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
