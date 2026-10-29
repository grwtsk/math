-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Associator.Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Associator.Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Associator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["root_references_require_identity_review","same_file_root_reference_mapping","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Bernhard Reinke. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bernhard Reinke
-/
import Mathlib.Algebra.Ring.Basic
import Mathlib.Tactic.Abel

/-!
# Associator in a ring

If `R` is a non-associative ring, then  `(x * y) * z - x * (y * z)` is called the `associator` of
ring elements `x y z : R`.

The associator vanishes exactly when `R` is associative.

We prove variants of this statement also for the `AddMonoidHom` bundled version of the associator,
as well as the bundled version of `mulLeft₃` and `mulRight₃`, the multiplications `(x * y) * z` and
`x * (y * z)`.
-/


namespace GRWTSK.Algebra.Associator.Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b

variable {R : Type*}

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing R]

/-- The associator `(x * y) * z - x * (y * z)` -/
def associator (x y z : R) : R := (x * y) * z - x * (y * z)

theorem associator_apply (x y z : R) : associator x y z = (x * y) * z - x * (y * z) := rfl

theorem associator_eq_zero_iff_associative :
    associator (R := R) = 0 ↔ Std.Associative (fun (x y : R) ↦ x * y) where
  mp h := ⟨fun x y z ↦ sub_eq_zero.mp <| congr_fun₃ h x y z⟩
  mpr h := by ext x y z; simp [associator, Std.Associative.assoc]

theorem associator_cocycle (a b c d : R) :
    a * associator b c d - associator (a * b) c d + associator a (b * c) d - associator a b (c * d)
    + (associator a b c) * d = 0 := by
  simp only [associator, mul_sub, sub_mul]
  abel1

end NonUnitalNonAssocRing

section NonUnitalRing
variable [NonUnitalRing R]

@[simp]
theorem associator_eq_zero : associator (R := R) = 0 :=
  associator_eq_zero_iff_associative.mpr inferInstance

end NonUnitalRing

namespace AddMonoidHom

section NonUnitalNonAssocSemiring
variable [NonUnitalNonAssocSemiring R]

/-- The multiplication `(x * y) * z` of three elements of a (non-associative)
(semi)-ring is an `AddMonoidHom` in each argument. See also `LinearMap.mulLeftRight` for a
related functions realized as a linear map. -/
def mulLeft₃ : R →+ R →+ R →+ R where
  toFun x := comp mul (mulLeft x)
  map_zero' := by ext; simp
  map_add' x y := by ext; simp [add_mul]

@[simp]
theorem mulLeft₃_apply (x y z : R) : mulLeft₃ x y z = (x * y) * z := rfl

/-- The multiplication `x * (y * z)` of three elements of a (non-associative)
(semi)-ring is an `AddMonoidHom` in each argument. -/
def mulRight₃ : R →+ R →+ R →+ R where
  toFun x := compr₂ mul (mulLeft x)
  map_zero' := by ext; simp
  map_add' x y := by ext; simp [add_mul]

@[simp]
theorem mulRight₃_apply (x y z : R) : mulRight₃ x y z = x * (y * z) := rfl

/-- An a priori non-associative semiring is associative if the `AddMonoidHom` versions of
the multiplications `(x * y) * z` and `x * (y * z)` agree. -/
theorem mulLeft₃_eq_mulRight₃_iff_associative :
    mulLeft₃ (R := R) = mulRight₃ ↔ Std.Associative (fun (x y : R) ↦ x * y) where
  mp h := ⟨fun x y z ↦ by rw [← mulLeft₃_apply, ← mulRight₃_apply, h]⟩
  mpr h := by ext x y z; simp [Std.Associative.assoc]

end NonUnitalNonAssocSemiring

section NonUnitalSemiring
variable [NonUnitalSemiring R]

theorem mulLeft₃_eq_mulRight₃ : mulLeft₃ (R := R) = mulRight₃ :=
  mulLeft₃_eq_mulRight₃_iff_associative.2 inferInstance

end NonUnitalSemiring

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing R] (a b c : R)

/-- The associator for a non-associative ring is `(x * y) * z - x * (y * z)`. It is an
`AddMonoidHom` in each argument. -/
def associator : R →+ R →+ R →+ R := mulLeft₃ - mulRight₃

@[simp]
theorem associator_apply : associator a b c = _root_.GRWTSK.Algebra.Associator.Variant5750b324e530f0dafd298cd2cdf1c294a63a7228b18571fca7ccb929bd4e906b.associator a b c := rfl

/-- An a priori non-associative ring is associative iff the `AddMonoidHom` version of the
associator vanishes. -/
theorem associator_eq_zero_iff_associative :
    associator (R := R) = 0 ↔ Std.Associative (fun (x y : R) ↦ x * y) := by
  simp [mulLeft₃_eq_mulRight₃_iff_associative, associator, sub_eq_zero]

end NonUnitalNonAssocRing

section NonUnitalRing
variable [NonUnitalRing R]

@[simp]
theorem associator_eq_zero : associator (R := R) = 0 :=
  associator_eq_zero_iff_associative.mpr inferInstance

end NonUnitalRing
end AddMonoidHom
