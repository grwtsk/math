-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Action.Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Action.Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"db1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/GroupAction/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.Ring.Defs

/-!
# Commutativity and associativity of action of integers on rings

This file proves that `ℕ` and `ℤ` act commutatively and associatively on (semi)rings.

## TODO

Those instances are in their own file only because they require much less imports than any existing
file they could go to. This is unfortunate and should be fixed by reorganising files.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Action.Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67

open scoped Int

variable {R : Type*}

instance NonUnitalNonAssocSemiring.toDistribSMul [NonUnitalNonAssocSemiring R] :
    DistribSMul R R where smul_add := mul_add

/-- Note that `AddCommMonoid.nat_isScalarTower` requires stronger assumptions on `R`. -/
instance NonUnitalNonAssocSemiring.nat_isScalarTower [NonUnitalNonAssocSemiring R] :
    IsScalarTower ℕ R R where
  smul_assoc n x y := by
    induction n with
    | zero => simp [zero_nsmul]
    | succ n ih => simp_rw [succ_nsmul, ← ih, smul_eq_mul, add_mul]

/-- Note that `AddCommGroup.int_isScalarTower` requires stronger assumptions on `R`. -/
instance NonUnitalNonAssocRing.int_isScalarTower [NonUnitalNonAssocRing R] :
    IsScalarTower ℤ R R where
  smul_assoc n x y :=
    match n with
    | (n : ℕ) => by simp_rw [natCast_zsmul, smul_assoc]
    | -[n+1] => by simp_rw [negSucc_zsmul, smul_eq_mul, neg_mul, smul_mul_assoc]
