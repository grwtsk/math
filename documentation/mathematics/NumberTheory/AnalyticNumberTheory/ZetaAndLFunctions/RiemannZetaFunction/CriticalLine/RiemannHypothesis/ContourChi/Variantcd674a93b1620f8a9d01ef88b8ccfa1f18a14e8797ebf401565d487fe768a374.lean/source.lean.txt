-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RectangleIdentityChi.Variantfece3bfc902080bfa5e588b3af67982e1bde6f5c0f02324279a9ab34d4beed8a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fece3bfc902080bfa5e588b3af67982e1bde6f5c0f02324279a9ab34d4beed8a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RectangleIdentityChi.Variantfece3bfc902080bfa5e588b3af67982e1bde6f5c0f02324279a9ab34d4beed8a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fece3bfc902080bfa5e588b3af67982e1bde6f5c0f02324279a9ab34d4beed8a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/ThmE/ContourChi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/ThmE/ContourChi.lean — Rectangle identity for H·(completed L)'/(completed L)
(primitive χ mod q > 1): no pole terms (the completed L-function is entire), via the pole-free
weighted argument principle Zeta23.Analytic.rectangleIntegral'_mul_logDeriv.
Runs with f := completedLSym χ = q^{s/2}·completedLFunction χ (symmetrized form:
same zeros; cleanest functional equation completedLSym_one_sub).
-/
import Zeta23.ThmE.VerticalLineChi
import Zeta23.ThmE.CountByIntegralChi
import Zeta23.ThmE.SeamL
import Zeta23.Analytic.RectangleLogDeriv


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RectangleIdentityChi.Variantfece3bfc902080bfa5e588b3af67982e1bde6f5c0f02324279a9ab34d4beed8a

noncomputable section

set_option backward.isDefEq.respectTransparency false

open Complex MeasureTheory Real Set Topology Filter DirichletCharacter
open scoped BigOperators

namespace Zeta23
namespace ThmE

open Zeta23.WeilEF

variable {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}

set_option maxHeartbeats 800000 in
/-- **Rectangle identity for L(s,χ)** at a zero-free height R (no pole terms):
(1/2πi)∮_{[1−c,c]×[−R,R]} H·Λ'/Λ(·,χ) = Σ_{|γ|<R} m_ρ H(ρ). -/
theorem rectangle_identity_chi (hq : 1 < q) (hprim : χ.IsPrimitive)
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {R : ℝ} (hR : 7 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 - c ≤ s.re → s.re ≤ c →
      completedLFunction χ s ≠ 0) :
    ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im < R}) ∧
      RectangleIntegral' (fun s => Hfn k s * logDeriv (completedLSym χ) s)
          ((1 - c : ℝ) - R * I) ((c : ℝ) + R * I)
        = ∑ ρ ∈ Z, (zeroMultL χ ρ : ℂ) * Hfn k ρ := by
  classical
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  set z : ℂ := (1 - c : ℝ) - R * I with hzdef
  set w : ℂ := (c : ℝ) + R * I with hwdef
  have hzre : z.re = 1 - c := by simp [hzdef]
  have hzim : z.im = -R := by simp [hzdef]
  have hwre : w.re = c := by simp [hwdef]
  have hwim : w.im = R := by simp [hwdef]
  have hre : z.re ≤ w.re := by rw [hzre, hwre]; linarith
  have him : z.im ≤ w.im := by rw [hzim, hwim]; linarith
  have hmem : ∀ s : ℂ, s ∈ Rectangle z w ↔
      (1 - c ≤ s.re ∧ s.re ≤ c) ∧ (-R ≤ s.im ∧ s.im ≤ R) := by
    intro s
    simp only [Rectangle, Complex.mem_reProdIm, hzre, hzim, hwre, hwim,
      Set.uIcc_of_le (show (1 - c : ℝ) ≤ c by linarith),
      Set.uIcc_of_le (show (-R : ℝ) ≤ R by linarith), Set.mem_Icc]
  have hfin := LSeam_finite_window (χ := χ) hq hprim (-R) R
  set Z : Finset ℂ := hfin.toFinset with hZdef
  have hZmemiff : ∀ ρ : ℂ, ρ ∈ Z ↔ (IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im ≤ R) := by
    intro ρ
    rw [hZdef, Set.Finite.mem_toFinset]
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨h1, h2⟩
    · rintro ⟨h1, h2⟩
      exact ⟨h1, h2⟩
  have hZcoe : (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZeroL χ ρ ∧ -R < ρ.im ∧ ρ.im < R} := by
    ext ρ
    rw [Finset.mem_coe, hZmemiff]
    simp only [Set.mem_setOf_eq]
    constructor
    · rintro ⟨h1, h2, h3⟩
      refine ⟨h1, h2, lt_of_le_of_ne h3 ?_⟩
      intro h
      refine hgood ρ (Or.inl h) (by linarith [h1.2.1]) (by linarith [h1.2.2]) ?_
      exact (completedLFunction_eq_zero_iff_of_re_pos hq h1.2.1).mpr h1.1
    · rintro ⟨h1, h2, h3⟩
      exact ⟨h1, h2, h3.le⟩
  refine ⟨Z, hZcoe, ?_⟩
  have hf : AnalyticOnNhd ℂ (completedLSym χ) (Rectangle z w) := fun s _ =>
    (differentiable_completedLSym hχ1).analyticAt s
  have hg : AnalyticOnNhd ℂ (Hfn k) (Rectangle z w) := by
    intro s _
    have hdiff : Differentiable ℂ (Hfn k) := by
      unfold Hfn
      exact (differentiable_paperFT hk.continuous hkc).comp
        ((differentiable_id.sub_const _).div_const _)
    exact hdiff.analyticAt s
  have hborder : ∀ s ∈ RectangleBorder z w, completedLSym χ s ≠ 0 := by
    intro s hs h0
    rw [completedLSym_eq_zero_iff'] at h0
    have hsrect := rectangleBorder_subset_rectangle z w hs
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsrect
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      hzre, hzim, hwre, hwim] at hs
    rcases hs with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · exact hgood s (Or.inr h') hr1 hr2 h0
    · exact completedLFunction_ne_zero_of_re_nonpos hq hprim (by rw [h']; linarith) h0
    · exact hgood s (Or.inl h') hr1 hr2 h0
    · exact completedLFunction_ne_zero_of_one_le_re hq hχ1 (by rw [h']; linarith) h0
  have hZchar : ∀ s ∈ Rectangle z w, (completedLSym χ s = 0 ↔ s ∈ Z) := by
    intro s hsrect
    obtain ⟨⟨hr1, hr2⟩, ⟨hi1, hi2⟩⟩ := (hmem s).mp hsrect
    rw [completedLSym_eq_zero_iff', hZmemiff]
    constructor
    · intro h0
      have hrepos : 0 < s.re := by
        by_contra hle
        exact completedLFunction_ne_zero_of_re_nonpos hq hprim (by linarith) h0
      have hrelt : s.re < 1 := by
        by_contra hge
        exact completedLFunction_ne_zero_of_one_le_re hq hχ1 (by linarith) h0
      have hnz : IsNontrivialZeroL χ s :=
        ⟨(completedLFunction_eq_zero_iff_of_re_pos hq hrepos).mp h0, hrepos, hrelt⟩
      refine ⟨hnz, ?_, hi2⟩
      rcases lt_or_eq_of_le hi1 with h | h
      · exact h
      · exact absurd h0 (hgood s (Or.inr h.symm) hr1 hr2)
    · rintro ⟨h1, _, _⟩
      exact (completedLFunction_eq_zero_iff_of_re_pos hq h1.2.1).mpr h1.1
  have hZsub : (Z : Set ℂ) ⊆ Rectangle z w := by
    intro ρ hρ
    rw [Finset.mem_coe, hZmemiff] at hρ
    obtain ⟨h1, h2, h3⟩ := hρ
    exact (hmem ρ).mpr ⟨⟨by linarith [h1.2.1], by linarith [h1.2.2]⟩, h2.le, h3⟩
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hf hg hborder
    Z hZchar hZsub
  rw [key]
  refine Finset.sum_congr rfl fun ρ hρ => ?_
  have h1 := ((hZmemiff ρ).mp hρ).1
  congr 2
  -- analyticOrderNatAt (completedLSym χ) ρ = zeroMultL χ ρ
  rw [analyticOrderNatAt_completedLSym hq hχ1 h1.2.1]
