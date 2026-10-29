-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Nat.Variant4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Nat.Variant4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/EuclideanDomain/Int.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Louis Carlin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Louis Carlin, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.EuclideanDomain.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Ring.Int.Defs

/-!
# Instances for Euclidean domains
* `Int.euclideanDomain`: shows that `ℤ` is a Euclidean domain.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Nat.Variant4862a2a854a840e3d943087d8763aeeeae00d7be3ad09ad0a64b1fc73dcd65a6

instance Int.euclideanDomain : EuclideanDomain ℤ :=
  { inferInstanceAs (CommRing Int), inferInstanceAs (Nontrivial Int) with
    quotient := (· / ·), quotient_zero := Int.ediv_zero, remainder := (· % ·),
    quotient_mul_add_remainder_eq := Int.ediv_add_emod,
    r := fun a b => a.natAbs < b.natAbs,
    r_wellFounded := (measure natAbs).wf
    remainder_lt := fun a b b0 => Int.ofNat_lt.1 <| by
      rw [Int.natAbs_of_nonneg (Int.emod_nonneg _ b0), ← Int.abs_eq_natAbs]
      exact Int.emod_lt_abs _ b0
    mul_left_not_lt := fun a b b0 =>
      not_lt_of_ge <| by
        rw [← mul_one a.natAbs, Int.natAbs_mul]
        rw [← Int.natAbs_pos] at b0
        exact Nat.mul_le_mul_left _ b0 }
