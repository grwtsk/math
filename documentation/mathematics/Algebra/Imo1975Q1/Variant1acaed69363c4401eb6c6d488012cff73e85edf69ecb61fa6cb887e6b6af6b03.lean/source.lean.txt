-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Imo1975Q1.Variant2ccc5d1c07373c9efb1563e563ad7dfac56dfa3efe731eafe7bc9bacab1b8729","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ccc5d1c07373c9efb1563e563ad7dfac56dfa3efe731eafe7bc9bacab1b8729","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Imo1975Q1.Variant2ccc5d1c07373c9efb1563e563ad7dfac56dfa3efe731eafe7bc9bacab1b8729","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2ccc5d1c07373c9efb1563e563ad7dfac56dfa3efe731eafe7bc9bacab1b8729","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo1975Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mantas Bakšys. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mantas Bakšys
-/
module

public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Order.Rearrangement
public import Mathlib.Basic.Real.Basic
public import Mathlib.Order.Interval.Finset.Nat

/-!
# IMO 1975 Q1

Let `x₁, x₂, ... , xₙ` and `y₁, y₂, ... , yₙ` be two sequences of real numbers, such that
`x₁ ≥ x₂ ≥ ... ≥ xₙ` and `y₁ ≥ y₂ ≥ ... ≥ yₙ`. Prove that if `z₁, z₂, ... , zₙ` is any permutation
of `y₁, y₂, ... , yₙ`, then `∑ (xᵢ - yᵢ)^2 ≤ ∑ (xᵢ - zᵢ)^2`

## Solution

Firstly, we expand the squares within both sums and distribute into separate finite sums. Then,
noting that `∑ yᵢ ^ 2 = ∑ zᵢ ^ 2`, it remains to prove that `∑ xᵢ * zᵢ ≤ ∑ xᵢ * yᵢ`, which is true
by the Rearrangement Inequality
-/

/- Let `n` be a natural number, `x` and `y` be as in the problem statement and `σ` be the
permutation of natural numbers such that `z = y ∘ σ` -/

namespace GRWTSK.Algebra.Imo1975Q1.Variant2ccc5d1c07373c9efb1563e563ad7dfac56dfa3efe731eafe7bc9bacab1b8729

variable (n : ℕ) (σ : Equiv.Perm ℕ) (x y : ℕ → ℝ)

public theorem imo1975_q1 (hσ : {x | σ x ≠ x} ⊆ Finset.Icc 1 n)
    (hx : AntitoneOn x (Finset.Icc 1 n)) (hy : AntitoneOn y (Finset.Icc 1 n)) :
    ∑ i ∈ Finset.Icc 1 n, (x i - y i) ^ 2 ≤ ∑ i ∈ Finset.Icc 1 n, (x i - y (σ i)) ^ 2 := by
  simp only [sub_sq, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  -- a finite sum is invariant if we permute the order of summation
  have hσy : ∑ i ∈ Finset.Icc 1 n, y i ^ 2 = ∑ i ∈ Finset.Icc 1 n, y (σ i) ^ 2 := by
    rw [← Equiv.Perm.sum_comp σ (Finset.Icc 1 n) _ hσ]
  -- let's cancel terms appearing on both sides
  rw [hσy, add_le_add_iff_right, sub_le_sub_iff_left]
  simp only [mul_assoc, ← Finset.mul_sum, zero_lt_two, mul_le_mul_iff_right₀]
  -- what's left to prove is a version of the rearrangement inequality
  apply MonovaryOn.sum_mul_comp_perm_le_sum_mul _ hσ
  -- finally we need to show that `x` and `y` 'vary' together on `[1, n]` and this is due to both of
  -- them being `decreasing`
  exact AntitoneOn.monovaryOn hx hy
