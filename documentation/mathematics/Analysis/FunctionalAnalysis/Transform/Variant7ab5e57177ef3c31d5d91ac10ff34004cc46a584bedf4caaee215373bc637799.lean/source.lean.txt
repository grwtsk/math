-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsMIntegralCurveOnCompAdd.Variantb57df359c0a104bff2b2eadc97675e62a8236dfd6439a127e1cc25dfbbb8838d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b57df359c0a104bff2b2eadc97675e62a8236dfd6439a127e1cc25dfbbb8838d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.IsMIntegralCurveOnCompAdd.Variantb57df359c0a104bff2b2eadc97675e62a8236dfd6439a127e1cc25dfbbb8838d","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"b57df359c0a104bff2b2eadc97675e62a8236dfd6439a127e1cc25dfbbb8838d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Manifold/IntegralCurve/Transform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Winston Yin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Winston Yin
-/
module

public import Mathlib.Geometry.Manifold.IntegralCurve.Basic

/-!
# Translation and scaling of integral curves

New integral curves may be constructed by translating or scaling the domain of an existing integral
curve.

This file mirrors `Mathlib/Analysis/ODE/Transform`.

## Reference

* [Lee, J. M. (2012). _Introduction to Smooth Manifolds_. Springer New York.][lee2012]

## Tags

integral curve, vector field
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.IsMIntegralCurveOnCompAdd.Variantb57df359c0a104bff2b2eadc97675e62a8236dfd6439a127e1cc25dfbbb8838d

public section

open Function Set

variable
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
  {H : Type*} [TopologicalSpace H] {I : ModelWithCorners ℝ E H}
  {M : Type*} [TopologicalSpace M] [ChartedSpace H M]
  {γ : ℝ → M} {v : (x : M) → TangentSpace I x} {s : Set ℝ} {t₀ : ℝ}

/-! ### Translation lemmas -/

section Translation

lemma IsMIntegralCurveOn.comp_add (hγ : IsMIntegralCurveOn γ v s) (dt : ℝ) :
    IsMIntegralCurveOn (γ ∘ (· + dt)) v { t | t + dt ∈ s } := by
  intro t ht
  rw [comp_apply, ← ContinuousLinearMap.comp_id (ContinuousLinearMap.smulRight 1 (v (γ (t + dt))))]
  apply HasMFDerivWithinAt.comp t (hγ (t + dt) ht) _ subset_rfl
  refine ⟨(continuous_add_const _).continuousWithinAt, ?_⟩
  simp only [mfld_simps]
  exact (hasFDerivWithinAt_id _ _).add_const _

lemma isMIntegralCurveOn_comp_add {dt : ℝ} :
    IsMIntegralCurveOn (γ ∘ (· + dt)) v { t | t + dt ∈ s } ↔ IsMIntegralCurveOn γ v s := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_add _⟩
  convert! hγ.comp_add (-dt)
  · ext t
    simp
  · simp

lemma isMIntegralCurveOn_comp_sub {dt : ℝ} :
    IsMIntegralCurveOn (γ ∘ (· - dt)) v { t | t - dt ∈ s } ↔ IsMIntegralCurveOn γ v s := by
  simpa using! isMIntegralCurveOn_comp_add (dt := -dt)

lemma IsMIntegralCurveAt.comp_add (hγ : IsMIntegralCurveAt γ v t₀) (dt : ℝ) :
    IsMIntegralCurveAt (γ ∘ (· + dt)) v (t₀ - dt) := by
  rw [isMIntegralCurveAt_iff'] at *
  obtain ⟨ε, hε, h⟩ := hγ
  refine ⟨ε, hε, ?_⟩
  convert! h.comp_add dt
  rw [Metric.ball]
  simp_rw [Metric.mem_ball, Real.dist_eq, ← sub_add, add_sub_right_comm]

lemma isMIntegralCurveAt_comp_add {dt : ℝ} :
    IsMIntegralCurveAt (γ ∘ (· + dt)) v (t₀ - dt) ↔ IsMIntegralCurveAt γ v t₀ := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_add _⟩
  convert! hγ.comp_add (-dt)
  · ext t
    simp only [Function.comp_apply, neg_add_cancel_right]
  · simp only [sub_neg_eq_add, sub_add_cancel]

lemma isMIntegralCurveAt_comp_sub {dt : ℝ} :
    IsMIntegralCurveAt (γ ∘ (· - dt)) v (t₀ + dt) ↔ IsMIntegralCurveAt γ v t₀ := by
  simpa using! isMIntegralCurveAt_comp_add (dt := -dt)

lemma IsMIntegralCurve.comp_add (hγ : IsMIntegralCurve γ v) (dt : ℝ) :
    IsMIntegralCurve (γ ∘ (· + dt)) v := by
  rw [isMIntegralCurve_iff_isMIntegralCurveOn] at *
  simpa using hγ.comp_add dt

lemma isMIntegralCurve_comp_add {dt : ℝ} :
    IsMIntegralCurve (γ ∘ (· + dt)) v ↔ IsMIntegralCurve γ v := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_add _⟩
  convert! hγ.comp_add (-dt)
  ext t
  simp only [Function.comp_apply, neg_add_cancel_right]

lemma isMIntegralCurve_comp_sub {dt : ℝ} :
    IsMIntegralCurve (γ ∘ (· - dt)) v ↔ IsMIntegralCurve γ v := by
  simpa using! isMIntegralCurve_comp_add (dt := -dt)

end Translation

/-! ### Scaling lemmas -/

section Scaling

lemma IsMIntegralCurveOn.comp_mul (hγ : IsMIntegralCurveOn γ v s) (a : ℝ) :
    IsMIntegralCurveOn (γ ∘ (· * a)) (a • v) { t | t * a ∈ s } := by
  intro t ht
  have : (1 : ℝ →L[ℝ] ℝ).smulRight (a • v (γ (t * a))) =
      (1 : ℝ →L[ℝ] ℝ).smulRight (v (γ (t * a))) ∘SL (1 : ℝ →L[ℝ] ℝ).smulRight a := by
    simp [ContinuousLinearMap.smulRight_comp_smulRight]
  rw [comp_apply, Pi.smul_apply, this]
  refine HasMFDerivWithinAt.comp t (hγ (t * a) ht)
    ⟨(continuous_mul_const _).continuousWithinAt, ?_⟩ subset_rfl
  simp only [mfld_simps]
  exact HasFDerivWithinAt.mul_const' (hasFDerivWithinAt_id _ _) _

lemma isMIntegralCurveOn_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsMIntegralCurveOn (γ ∘ (· * a)) (a • v) { t | t * a ∈ s } ↔ IsMIntegralCurveOn γ v s := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_mul a⟩
  convert! hγ.comp_mul a⁻¹
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]
  · simp only [mem_ofPred_eq, mul_assoc, inv_mul_eq_div, div_self ha, mul_one, ofPred_mem_eq]

lemma IsMIntegralCurveAt.comp_mul_ne_zero (hγ : IsMIntegralCurveAt γ v t₀) {a : ℝ} (ha : a ≠ 0) :
    IsMIntegralCurveAt (γ ∘ (· * a)) (a • v) (t₀ / a) := by
  rw [isMIntegralCurveAt_iff'] at *
  obtain ⟨ε, hε, h⟩ := hγ
  refine ⟨ε / |a|, by positivity, ?_⟩
  convert! h.comp_mul a
  ext t
  rw [mem_ofPred_eq, Metric.mem_ball, Metric.mem_ball, Real.dist_eq, Real.dist_eq,
    lt_div_iff₀ (abs_pos.mpr ha), ← abs_mul, sub_mul, div_mul_cancel₀ _ ha]

lemma isMIntegralCurveAt_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsMIntegralCurveAt (γ ∘ (· * a)) (a • v) (t₀ / a) ↔ IsMIntegralCurveAt γ v t₀ := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_mul_ne_zero ha⟩
  convert! hγ.comp_mul_ne_zero (inv_ne_zero ha)
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]
  · simp only [div_inv_eq_mul, div_mul_cancel₀ _ ha]

lemma IsMIntegralCurve.comp_mul (hγ : IsMIntegralCurve γ v) (a : ℝ) :
    IsMIntegralCurve (γ ∘ (· * a)) (a • v) := by
  rw [isMIntegralCurve_iff_isMIntegralCurveOn] at *
  exact hγ.comp_mul _

lemma isMIntegralCurve_comp_mul_ne_zero {a : ℝ} (ha : a ≠ 0) :
    IsMIntegralCurve (γ ∘ (· * a)) (a • v) ↔ IsMIntegralCurve γ v := by
  refine ⟨fun hγ ↦ ?_, fun hγ ↦ hγ.comp_mul _⟩
  convert! hγ.comp_mul a⁻¹
  · ext t
    simp only [Function.comp_apply, mul_assoc, inv_mul_eq_div, div_self ha, mul_one]
  · simp only [smul_smul, inv_mul_eq_div, div_self ha, one_smul]

open ContinuousLinearMap in
/-- If the vector field `v` vanishes at `x₀`, then the constant curve at `x₀`
is a global integral curve of `v`. -/
lemma isMIntegralCurve_const {x : M} (h : v x = 0) : IsMIntegralCurve (fun _ ↦ x) v := by
  intro t
  rw [h, smulRight_one_eq_toSpanSingleton, toSpanSingleton_zero]
  exact hasMFDerivAt_const ..

end Scaling
