-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixDualNumberEquiv.Variant058248b60a6989370954fd38fdc273b011b298fcb74e53aa0fcb2c9958e1c5b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"058248b60a6989370954fd38fdc273b011b298fcb74e53aa0fcb2c9958e1c5b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixDualNumberEquiv.Variant058248b60a6989370954fd38fdc273b011b298fcb74e53aa0fcb2c9958e1c5b2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"058248b60a6989370954fd38fdc273b011b298fcb74e53aa0fcb2c9958e1c5b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Matrix/DualNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Data.Matrix.Basic

/-!
# Matrices of dual numbers are isomorphic to dual numbers over matrices

Showing this for the more general case of `TrivSqZeroExt R M` would require an action between
`Matrix n n R` and `Matrix n n M`, which would risk causing diamonds.
-/



namespace GRWTSK.Algebra.LinearAlgebra.MatrixDualNumberEquiv.Variant058248b60a6989370954fd38fdc273b011b298fcb74e53aa0fcb2c9958e1c5b2

variable {R n : Type} [CommSemiring R] [Fintype n] [DecidableEq n]

open Matrix TrivSqZeroExt

/-- Matrices over dual numbers and dual numbers over matrices are isomorphic. -/
@[simps]
def Matrix.dualNumberEquiv : Matrix n n (DualNumber R) ≃ₐ[R] DualNumber (Matrix n n R) where
  toFun A := ⟨of fun i j => (A i j).fst, of fun i j => (A i j).snd⟩
  invFun d := of fun i j => (d.fst i j, d.snd i j)
  left_inv _ := Matrix.ext fun _ _ => TrivSqZeroExt.ext rfl rfl
  right_inv _ := TrivSqZeroExt.ext (Matrix.ext fun _ _ => rfl) (Matrix.ext fun _ _ => rfl)
  map_mul' A B := by
    ext
    · dsimp [mul_apply]
      simp_rw [fst_sum]
      rfl
    · simp_rw [snd_mul, smul_eq_mul, op_smul_eq_mul]
      simp only [mul_apply, snd_sum, DualNumber.snd_mul, snd_mk, of_apply, fst_mk, add_apply]
      rw [← Finset.sum_add_distrib]
  map_add' _ _ := TrivSqZeroExt.ext rfl rfl
  commutes' r := by
    simp_rw [algebraMap_eq_inl', algebraMap_eq_diagonal, Pi.algebraMap_def,
      Algebra.id.map_eq_self, algebraMap_eq_inl, ← diagonal_map (inl_zero R), map_apply, fst_inl,
      snd_inl]
    rfl
