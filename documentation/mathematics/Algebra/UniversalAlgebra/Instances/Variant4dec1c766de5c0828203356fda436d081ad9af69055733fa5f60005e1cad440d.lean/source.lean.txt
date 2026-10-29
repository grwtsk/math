-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.EuclideanDomain.Variant5d5996b9b5eb80c81871e095cc64bfd4ed09a55f720128bc8a10f70d7eee95e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d5996b9b5eb80c81871e095cc64bfd4ed09a55f720128bc8a10f70d7eee95e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.EuclideanDomain.Variant5d5996b9b5eb80c81871e095cc64bfd4ed09a55f720128bc8a10f70d7eee95e1","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5d5996b9b5eb80c81871e095cc64bfd4ed09a55f720128bc8a10f70d7eee95e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/EuclideanDomain/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Louis Carlin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Louis Carlin, Mario Carneiro
-/
import Mathlib.Algebra.EuclideanDomain.Defs
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Units.Lemmas
import Mathlib.Algebra.Order.Ring.Lemmas
import Mathlib.Init.Data.Int.Order
import Mathlib.Data.Int.Basic
import Mathlib.Data.Nat.Order.Basic
import Mathlib.Data.Int.Order.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.EuclideanDomain.Variant5d5996b9b5eb80c81871e095cc64bfd4ed09a55f720128bc8a10f70d7eee95e1

#align_import algebra.euclidean_domain.instances from "leanprover-community/mathlib"@"e1bccd6e40ae78370f01659715d3c948716e3b7e"

/-!
# Instances for Euclidean domains
* `Int.euclideanDomain`: shows that `ℤ` is a Euclidean domain.
* `Field.toEuclideanDomain`: shows that any field is a Euclidean domain.
-/

instance Int.euclideanDomain : EuclideanDomain ℤ :=
  { inferInstanceAs (CommRing Int), inferInstanceAs (Nontrivial Int) with
    add := (· + ·), mul := (· * ·), one := 1, zero := 0,
    neg := Neg.neg,
    quotient := (· / ·), quotient_zero := Int.ediv_zero, remainder := (· % ·),
    quotient_mul_add_remainder_eq := Int.ediv_add_emod,
    r := fun a b => a.natAbs < b.natAbs,
    r_wellFounded := (measure natAbs).wf
    remainder_lt := fun a b b0 => Int.ofNat_lt.1 <| by
      rw [Int.natAbs_of_nonneg (Int.emod_nonneg _ b0), ← Int.abs_eq_natAbs]
      exact Int.emod_lt _ b0
    mul_left_not_lt := fun a b b0 =>
      not_lt_of_ge <| by
        rw [← mul_one a.natAbs, Int.natAbs_mul]
        rw [←Int.natAbs_pos] at b0
        exact Nat.mul_le_mul_of_nonneg_left b0 }

-- see Note [lower instance priority]
instance (priority := 100) Field.toEuclideanDomain {K : Type*} [Field K] : EuclideanDomain K :=
{ toCommRing := Field.toCommRing
  quotient := (· / ·), remainder := fun a b => a - a * b / b, quotient_zero := div_zero,
  quotient_mul_add_remainder_eq := fun a b => by
    by_cases h : b = 0 <;> simp [h, mul_div_cancel']
  r := fun a b => a = 0 ∧ b ≠ 0,
  r_wellFounded :=
    WellFounded.intro fun a =>
      (Acc.intro _) fun b ⟨hb, _⟩ => (Acc.intro _) fun c ⟨_, hnb⟩ => False.elim <| hnb hb,
  remainder_lt := fun a b hnb => by simp [hnb],
  mul_left_not_lt := fun a b hnb ⟨hab, hna⟩ => Or.casesOn (mul_eq_zero.1 hab) hna hnb }
#align field.to_euclidean_domain Field.toEuclideanDomain
