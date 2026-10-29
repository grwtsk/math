-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MulInvCancelAux.Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MulInvCancelAux.Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Field/ZMod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Field.Basic
import Mathlib.Data.ZMod.Basic

/-!
# `ZMod p` is a field
-/


namespace GRWTSK.Algebra.MulInvCancelAux.Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740

namespace ZMod
variable (p : ℕ) [hp : Fact p.Prime]

private theorem mul_inv_cancel_aux (a : ZMod p) (h : a ≠ 0) : a * a⁻¹ = 1 := by
  obtain ⟨k, rfl⟩ := natCast_zmod_surjective a
  apply coe_mul_inv_eq_one
  apply Nat.Coprime.symm
  rwa [Nat.Prime.coprime_iff_not_dvd Fact.out, ← CharP.cast_eq_zero_iff (ZMod p)]

/-- Field structure on `ZMod p` if `p` is prime. -/
instance : Field (ZMod p) where
  mul_inv_cancel := mul_inv_cancel_aux p
  inv_zero := inv_zero p
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

/-- `ZMod p` is an integral domain when `p` is prime. -/
instance : IsDomain (ZMod p) := by
  -- We need `cases p` here in order to resolve which `CommRing` instance is being used.
  cases p
  · exact (Nat.not_prime_zero hp.out).elim
  exact @Field.isDomain (ZMod _) (inferInstanceAs (Field (ZMod _)))

end ZMod
