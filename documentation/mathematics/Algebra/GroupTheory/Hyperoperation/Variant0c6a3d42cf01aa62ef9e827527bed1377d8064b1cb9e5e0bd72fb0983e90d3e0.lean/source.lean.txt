-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Hyperoperation.Varianta9ed1ca02c953199e8fac21a926ae8308619949d11bbbd13842fe1893b914fcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9ed1ca02c953199e8fac21a926ae8308619949d11bbbd13842fe1893b914fcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Hyperoperation.Varianta9ed1ca02c953199e8fac21a926ae8308619949d11bbbd13842fe1893b914fcc","mathematical_subject":"Algebra.Groups","original_sha256":"a9ed1ca02c953199e8fac21a926ae8308619949d11bbbd13842fe1893b914fcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Hyperoperation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mark Andrew Gerads. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mark Andrew Gerads, Junyan Xu, Eric Wieser
-/
module

public import Mathlib.Algebra.Group.Nat.Even

/-!
# Hyperoperation sequence

This file defines the Hyperoperation sequence.
`hyperoperation 0 m k = k + 1`
`hyperoperation 1 m k = m + k`
`hyperoperation 2 m k = m * k`
`hyperoperation 3 m k = m ^ k`
`hyperoperation (n + 3) m 0 = 1`
`hyperoperation (n + 1) m (k + 1) = hyperoperation n m (hyperoperation (n + 1) m k)`

## References

* <https://en.wikipedia.org/wiki/Hyperoperation>

## Tags

hyperoperation
-/


namespace GRWTSK.Algebra.GroupTheory.Hyperoperation.Varianta9ed1ca02c953199e8fac21a926ae8308619949d11bbbd13842fe1893b914fcc

@[expose] public section


/-- Implementation of the hyperoperation sequence
where `hyperoperation n m k` is the `n`th hyperoperation between `m` and `k`.
-/
def hyperoperation : ℕ → ℕ → ℕ → ℕ
  | 0, _, k => k + 1
  | 1, m, 0 => m
  | 2, _, 0 => 0
  | _ + 3, _, 0 => 1
  | n + 1, m, k + 1 => hyperoperation n m (hyperoperation (n + 1) m k)

attribute [local grind] hyperoperation

-- Basic hyperoperation lemmas
@[simp, grind =]
theorem hyperoperation_zero (m k : ℕ) : hyperoperation 0 m k = k + 1 := by
  grind

@[grind =]
theorem hyperoperation_ge_three_eq_one (n m : ℕ) : hyperoperation (n + 3) m 0 = 1 := by
  grind

@[grind =]
theorem hyperoperation_recursion (n m k : ℕ) :
    hyperoperation (n + 1) m (k + 1) = hyperoperation n m (hyperoperation (n + 1) m k) := by
  grind

-- Interesting hyperoperation lemmas
@[simp, grind =]
theorem hyperoperation_one (m k : ℕ) : hyperoperation 1 m k = m + k := by
  induction k with grind

@[simp, grind =]
theorem hyperoperation_two (m k : ℕ) : hyperoperation 2 m k = m * k := by
  induction k with grind

@[simp, grind =]
theorem hyperoperation_three (m k : ℕ) : hyperoperation 3 m k = m ^ k := by
  induction k with grind

@[grind =]
theorem hyperoperation_ge_two_eq_self (n m : ℕ) : hyperoperation (n + 2) m 1 = m := by
  induction n with grind

@[grind =]
theorem hyperoperation_two_two_eq_four (n : ℕ) : hyperoperation (n + 1) 2 2 = 4 := by
  induction n with grind

@[grind =]
theorem hyperoperation_ge_three_one (n k : ℕ) : hyperoperation (n + 3) 1 k = 1 := by
  induction n generalizing k with grind [cases Nat]

@[grind =]
theorem hyperoperation_ge_four_zero (n k : ℕ) :
    hyperoperation (n + 4) 0 k = if Even k then 1 else 0 := by
  induction k with grind
