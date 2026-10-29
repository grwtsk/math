-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.PrimeDeltaStructure.Variantcb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.PrimeDeltaStructure.Variantcb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"cb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/DeltaStructure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.GlobalObject
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Prime-indexed delta structure

The prime is fixed in the type of the structure.  The displayed identities
are the ordinary `p`-derivation laws, and the Frobenius lift is an actual ring
homomorphism satisfying `φ(x) = x^p + p δ(x)`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.PrimeDeltaStructure.Variantcb53280ad0374dfb6b8a6d513cbe894c4800150e4bf1ff304c9c1a3f73cc669f

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
