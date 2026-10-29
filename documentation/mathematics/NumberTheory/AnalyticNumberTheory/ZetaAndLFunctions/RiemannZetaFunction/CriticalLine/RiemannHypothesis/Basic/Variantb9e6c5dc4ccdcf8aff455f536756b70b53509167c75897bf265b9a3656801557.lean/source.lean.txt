-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WindowUnion.Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WindowUnion.Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/ZeroCount/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/ZeroCount/Basic.lean — small shared lemmas for ξ′ zero counting:
window arithmetic for an abstract ZeroConfig (window_union, N_add, N_mono, N_unit_windows), 1 ≤ log(|t|+3),
continuity of a logarithmic derivative at an analytic nonvanishing point.  Collected here so that
ZeroCount/Generic.lean does not need to import the Y := ξ′/Γℝ instances.
-/
import Zeta23.XiPrime.Seam
import Zeta23.Defs.Counting
import Zeta23.RvM.Halving


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WindowUnion.Variant673c62c5d7189a18e426f442ae3e5cd89dc42a9b2297e6c6853ff5af9e45a221

open Complex Set Filter Topology

noncomputable section

namespace Zeta23

/-! ### window arithmetic for an abstract ZeroConfig -/
namespace ZeroConfig

variable (Z : ZeroConfig)

lemma window_union {a b c : ℝ} (h1 : a ≤ b) (h2 : b ≤ c) :
    Z.window a c = Z.window a b ∪ Z.window b c := by
  ext ρ
  simp only [ZeroConfig.window, mem_inter_iff, mem_setOf_eq, mem_union]
  constructor
  · rintro ⟨hρ, ha, hc⟩
    rcases le_or_gt ρ.im b with hle | hgt
    · exact Or.inl ⟨hρ, ha, hle⟩
    · exact Or.inr ⟨hρ, hgt, hc⟩
  · rintro (⟨hρ, ha, hb⟩ | ⟨hρ, hb, hc⟩)
    · exact ⟨hρ, ha, le_trans hb h2⟩
    · exact ⟨hρ, lt_of_le_of_lt h1 hb, hc⟩

lemma N_add {a b c : ℝ} (h1 : a ≤ b) (h2 : b ≤ c) : Z.N a c = Z.N a b + Z.N b c := by
  unfold ZeroConfig.N
  rw [Z.window_union h1 h2]
  refine finsum_mem_union ?_ (Z.window_finite a b) (Z.window_finite b c)
  rw [Set.disjoint_left]
  rintro ρ ⟨_, _, hb⟩ ⟨_, hb', _⟩
  exact absurd hb (not_le.2 hb')

lemma N_mono {a b c d : ℝ} (hca : c ≤ a) (hbd : b ≤ d) : Z.N a b ≤ Z.N c d := by
  refine Z.finsum_mult_mono c d ?_ subset_rfl
  rintro ρ ⟨hρ, ha, hb⟩
  exact ⟨hρ, lt_of_le_of_lt hca ha, le_trans hb hbd⟩

end ZeroConfig

namespace XiPrime
namespace ZeroCount

lemma one_le_log_add_three (t : ℝ) : 1 ≤ Real.log (|t| + 3) := by
  rw [← Real.log_exp 1]
  apply Real.log_le_log (Real.exp_pos 1)
  have := Real.exp_one_lt_d9
  linarith [abs_nonneg t]

lemma continuousAt_logDeriv_of_analyticAt {f : ℂ → ℂ} {s : ℂ} (ha : AnalyticAt ℂ f s) (hne : f s ≠ 0) :
    ContinuousAt (logDeriv f) s := by
  have := (ha.deriv.continuousAt).div ha.continuousAt hne
  simpa only [logDeriv] using this

/-- unit windows: N(a, a+k) ≤ Σ_{i<k} N(a+i, a+i+1)  (in fact =). -/
lemma N_unit_windows (Z : ZeroConfig) (a : ℝ) (k : ℕ) :
    Z.N a (a + k) = ∑ i ∈ Finset.range k, Z.N (a + i) (a + i + 1) := by
  induction k with
  | zero =>
      simp only [Nat.cast_zero, add_zero, Finset.range_zero, Finset.sum_empty]
      unfold ZeroConfig.N
      have : Z.window a a = ∅ := by
        ext ρ
        simp only [ZeroConfig.window, mem_inter_iff, mem_setOf_eq, mem_empty_iff_false, iff_false]
        rintro ⟨_, h1, h2⟩
        linarith
      rw [this, finsum_mem_empty]
  | succ k ih =>
      rw [Finset.sum_range_succ, ← ih, Z.N_add (by simp : a ≤ a + k) (by push_cast; linarith)]
      push_cast
      ring_nf

end ZeroCount
end XiPrime
end Zeta23
