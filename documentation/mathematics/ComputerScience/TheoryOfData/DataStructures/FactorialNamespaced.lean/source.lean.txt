-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CastDescFactorial.Variant0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CastDescFactorial.Variant0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ZMod/Factorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Moritz Firsching. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Firsching
-/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.ZMod.Basic

/-!
# Facts about factorials in ZMod

We collect facts about factorials in context of modular arithmetic.

## Main statements

* `ZMod.cast_descFactorial`: For natural numbers `n` and `p`, where `n` is less than or equal to `p`
  the descending factorial of `(p - 1)` taken `n` times modulo `p` equals `(-1) ^ n * n!`.

## See also

For the prime case and involving `factorial` rather than `descFactorial`, see Wilson's theorem:
* Nat.prime_iff_fac_equiv_neg_one

-/


namespace GRWTSK.Algebra.UniversalAlgebra.CastDescFactorial.Variant0aaeafad9bb5028507c42d79f69c2aaf758536da316d3f03bbf9b7e5c82027e2

assert_not_exists TwoSidedIdeal

open Finset Nat

namespace ZMod

theorem cast_descFactorial {n p : ℕ} (h : n ≤ p) :
    (descFactorial (p - 1) n : ZMod p) = (-1) ^ n * n ! := by
  rw [descFactorial_eq_prod_range, ← prod_range_add_one_eq_factorial]
  simp only [cast_prod]
  nth_rw 2 [← card_range n]
  rw [pow_card_mul_prod]
  refine prod_congr rfl ?_
  intro x hx
  rw [← tsub_add_eq_tsub_tsub_swap,
    Nat.cast_sub <| Nat.le_trans (Nat.add_one_le_iff.mpr (List.mem_range.mp hx)) h,
    CharP.cast_eq_zero, zero_sub, cast_succ, neg_add_rev, mul_add, neg_mul, one_mul,
    mul_one, add_comm]

end ZMod
