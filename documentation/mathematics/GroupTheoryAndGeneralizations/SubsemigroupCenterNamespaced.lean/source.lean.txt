-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Center.Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Center.Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3","mathematical_subject":"Algebra.Groups","original_sha256":"8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Subsemigroup/Center.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Jireh Loreaux
-/
import Mathlib.Algebra.Group.Center
import Mathlib.Algebra.Group.Subsemigroup.Defs

/-!
# Centers of semigroups, as subsemigroups.

## Main definitions

* `Subsemigroup.center`: the center of a semigroup
* `AddSubsemigroup.center`: the center of an additive semigroup

We provide `Submonoid.center`, `AddSubmonoid.center`, `Subgroup.center`, `AddSubgroup.center`,
`Subsemiring.center`, and `Subring.center` in other files.

## References

* [Cabrera García and Rodríguez Palacios, Non-associative normed algebras. Volume 1]
  [cabreragarciarodriguezpalacios2014]
-/


namespace GRWTSK.Algebra.GroupTheory.Center.Variant8598bfd75a09d7f57c5d5edb11444e8c512990460500788791ec90ec0e8ef6e3

assert_not_exists RelIso Finset

/-! ### `Set.center` as a `Subsemigroup`. -/

variable (M)
namespace Subsemigroup

section Mul
variable [Mul M]

/-- The center of a semigroup `M` is the set of elements that commute with everything in `M` -/
@[to_additive
      "The center of a semigroup `M` is the set of elements that commute with everything in `M`"]
def center : Subsemigroup M where
  carrier := Set.center M
  mul_mem' := Set.mul_mem_center

-- Porting note: `coe_center` is now redundant

variable {M}

/-- The center of a magma is commutative and associative. -/
@[to_additive "The center of an additive magma is commutative and associative."]
instance center.commSemigroup : CommSemigroup (center M) where
  mul_assoc _ b _ := Subtype.ext <| b.2.mid_assoc _ _
  mul_comm a _ := Subtype.ext <| a.2.comm _

end Mul

section Semigroup
variable {M} [Semigroup M]

@[to_additive]
theorem mem_center_iff {z : M} : z ∈ center M ↔ ∀ g, g * z = z * g := by
  rw [← Semigroup.mem_center_iff]
  exact Iff.rfl

@[to_additive]
instance decidableMemCenter (a) [Decidable <| ∀ b : M, b * a = a * b] :
    Decidable (a ∈ center M) :=
  decidable_of_iff' _ Semigroup.mem_center_iff

end Semigroup

section CommSemigroup
variable [CommSemigroup M]

@[to_additive (attr := simp)]
theorem center_eq_top : center M = ⊤ :=
  SetLike.coe_injective (Set.center_eq_univ M)

end CommSemigroup

end Subsemigroup
