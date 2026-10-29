-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.EntryNormBoundOfUnitary.Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.EntryNormBoundOfUnitary.Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/Star/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Hans Parshall. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Hans Parshall
-/
import Mathlib.Analysis.Matrix
import Mathlib.Analysis.NormedSpace.Basic
import Mathlib.Data.IsROrC.Basic
import Mathlib.LinearAlgebra.UnitaryGroup


namespace GRWTSK.Algebra.LinearAlgebra.EntryNormBoundOfUnitary.Variantd1b7ef73368e2885fde43c3408e61e9fde470348611df52fed894dc231ffd2df

#align_import analysis.normed_space.star.matrix from "leanprover-community/mathlib"@"468b141b14016d54b479eb7a0fff1e360b7e3cf6"

/-!
# Unitary matrices

This file collects facts about the unitary matrices over `𝕜` (either `ℝ` or `ℂ`).
-/


open scoped BigOperators Matrix

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

variable {𝕜 m n E : Type*}

section EntrywiseSupNorm

variable [IsROrC 𝕜] [Fintype n] [DecidableEq n]

theorem entry_norm_bound_of_unitary {U : Matrix n n 𝕜} (hU : U ∈ Matrix.unitaryGroup n 𝕜)
    (i j : n) : ‖U i j‖ ≤ 1 := by
  -- The norm squared of an entry is at most the L2 norm of its row.
  have norm_sum : ‖U i j‖ ^ 2 ≤ ∑ x, ‖U i x‖ ^ 2 := by
    apply Multiset.single_le_sum
    · intro x h_x
      rw [Multiset.mem_map] at h_x
      cases' h_x with a h_a
      rw [← h_a.2]
      apply sq_nonneg
    · rw [Multiset.mem_map]
      use j
      simp only [eq_self_iff_true, Finset.mem_univ_val, and_self_iff, sq_eq_sq]
  -- The L2 norm of a row is a diagonal entry of U * Uᴴ
  have diag_eq_norm_sum : (U * Uᴴ) i i = ∑ x : n, ‖U i x‖ ^ 2 := by
    simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, ← starRingEnd_apply, IsROrC.mul_conj,
      IsROrC.normSq_eq_def', IsROrC.ofReal_pow]; norm_cast
  -- The L2 norm of a row is a diagonal entry of U * Uᴴ, real part
  have re_diag_eq_norm_sum : IsROrC.re ((U * Uᴴ) i i) = ∑ x : n, ‖U i x‖ ^ 2 := by
    rw [IsROrC.ext_iff] at diag_eq_norm_sum
    rw [diag_eq_norm_sum.1]
    norm_cast
  -- Since U is unitary, the diagonal entries of U * Uᴴ are all 1
  have mul_eq_one : U * Uᴴ = 1 := unitary.mul_star_self_of_mem hU
  have diag_eq_one : IsROrC.re ((U * Uᴴ) i i) = 1 := by
    simp only [mul_eq_one, eq_self_iff_true, Matrix.one_apply_eq, IsROrC.one_re]
  -- Putting it all together
  rw [← sq_le_one_iff (norm_nonneg (U i j)), ← diag_eq_one, re_diag_eq_norm_sum]
  exact norm_sum
#align entry_norm_bound_of_unitary entry_norm_bound_of_unitary

attribute [local instance] Matrix.normedAddCommGroup

/-- The entrywise sup norm of a unitary matrix is at most 1. -/
theorem entrywise_sup_norm_bound_of_unitary {U : Matrix n n 𝕜} (hU : U ∈ Matrix.unitaryGroup n 𝕜) :
    ‖U‖ ≤ 1 := by
  conv => -- Porting note: was `simp_rw [pi_norm_le_iff_of_nonneg zero_le_one]`
    rw [pi_norm_le_iff_of_nonneg zero_le_one]
    intro
    rw [pi_norm_le_iff_of_nonneg zero_le_one]
  intros
  exact entry_norm_bound_of_unitary hU _ _
#align entrywise_sup_norm_bound_of_unitary entrywise_sup_norm_bound_of_unitary

end EntrywiseSupNorm
