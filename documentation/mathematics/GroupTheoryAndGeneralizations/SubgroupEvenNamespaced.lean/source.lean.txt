-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Square.Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Square.Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e","mathematical_subject":"Algebra.Groups","original_sha256":"74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Subgroup/Even.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Artie Khovanov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Artie Khovanov
-/
import Mathlib.Algebra.Group.Even
import Mathlib.Algebra.Group.Subgroup.Defs

/-!
# Squares and even elements

This file defines the subgroup of squares / even elements in an abelian group.
-/


namespace GRWTSK.Algebra.GroupTheory.Square.Variant74a8926d00566b59838ec7796036aaba9eac631b15e303c187a953227fed907e

assert_not_exists RelIso MonoidWithZero

namespace Subsemigroup
variable {S : Type*} [CommSemigroup S]

variable (S) in
/--
In a commutative semigroup `S`, `Subsemigroup.square S` is the subsemigroup of squares in `S`.
-/
@[to_additive
"In a commutative additive semigroup `S`, `AddSubsemigroup.even S`
is the subsemigroup of even elements in `S`."]
def square : Subsemigroup S where
  carrier := {s : S | IsSquare s}
  mul_mem' := IsSquare.mul

@[to_additive (attr := simp)]
theorem mem_square {a : S} : a ∈ square S ↔ IsSquare a := Iff.rfl

@[to_additive (attr := simp, norm_cast)]
theorem coe_square : square S = {s : S | IsSquare s} := rfl

end Subsemigroup

namespace Submonoid
variable {M : Type*} [CommMonoid M]

variable (M) in
/--
In a commutative monoid `M`, `Submonoid.square M` is the submonoid of squares in `M`.
-/
@[to_additive
"In a commutative additive monoid `M`, `AddSubmonoid.even M`
is the submonoid of even elements in `M`."]
def square : Submonoid M where
  __ := Subsemigroup.square M
  one_mem' := IsSquare.one

@[to_additive (attr := simp)]
theorem square_toSubsemigroup : (square M).toSubsemigroup = .square M := rfl

@[to_additive (attr := simp)]
theorem mem_square {a : M} : a ∈ square M ↔ IsSquare a := Iff.rfl

@[to_additive (attr := simp, norm_cast)]
theorem coe_square : square M = {s : M | IsSquare s} := rfl

end Submonoid

namespace Subgroup
variable {G : Type*} [CommGroup G]

variable (G) in
/--
In an abelian group `G`, `Subgroup.square G` is the subgroup of squares in `G`.
-/
@[to_additive
"In an abelian additive group `G`, `AddSubgroup.even G` is
the subgroup of even elements in `G`."]
def square : Subgroup G where
  __ := Submonoid.square G
  inv_mem' := IsSquare.inv

@[to_additive (attr := simp)]
theorem square_toSubmonoid : (square G).toSubmonoid = .square G := rfl

@[to_additive (attr := simp)]
theorem mem_square {a : G} : a ∈ square G ↔ IsSquare a := Iff.rfl

@[to_additive (attr := simp, norm_cast)]
theorem coe_square : square G = {s : G | IsSquare s} := rfl

end Subgroup
