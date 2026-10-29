-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.AemeasurableWithDensityIff.Variant746e006be5f153d20634fa21d7ec9ca4b05ecc9074296dae86ef7ddef498f8da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"746e006be5f153d20634fa21d7ec9ca4b05ecc9074296dae86ef7ddef498f8da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.AemeasurableWithDensityIff.Variant746e006be5f153d20634fa21d7ec9ca4b05ecc9074296dae86ef7ddef498f8da","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"746e006be5f153d20634fa21d7ec9ca4b05ecc9074296dae86ef7ddef498f8da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Integral/LebesgueNormedSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.MeasureTheory.Measure.WithDensity
import Mathlib.Analysis.Normed.Module.Basic

/-! # A lemma about measurability with density under scalar multiplication in normed spaces -/



namespace GRWTSK.Analysis.MeasureTheory.AemeasurableWithDensityIff.Variant746e006be5f153d20634fa21d7ec9ca4b05ecc9074296dae86ef7ddef498f8da

open MeasureTheory Filter ENNReal Set

open NNReal ENNReal

variable {α : Type*} {m : MeasurableSpace α} {μ : MeasureTheory.Measure α}

theorem aemeasurable_withDensity_iff {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [SecondCountableTopology E] [MeasurableSpace E] [BorelSpace E] {f : α → ℝ≥0}
    (hf : Measurable f) {g : α → E} :
    AEMeasurable g (μ.withDensity fun x => (f x : ℝ≥0∞)) ↔
      AEMeasurable (fun x => (f x : ℝ) • g x) μ := by
  constructor
  · rintro ⟨g', g'meas, hg'⟩
    have A : MeasurableSet { x : α | f x ≠ 0 } := (hf (measurableSet_singleton 0)).compl
    refine ⟨fun x => (f x : ℝ) • g' x, hf.coe_nnreal_real.smul g'meas, ?_⟩
    apply @ae_of_ae_restrict_of_ae_restrict_compl _ _ _ { x | f x ≠ 0 }
    · rw [EventuallyEq, ae_withDensity_iff hf.coe_nnreal_ennreal] at hg'
      rw [ae_restrict_iff' A]
      filter_upwards [hg']
      intro a ha h'a
      have : (f a : ℝ≥0∞) ≠ 0 := by simpa only [Ne, ENNReal.coe_eq_zero] using h'a
      rw [ha this]
    · filter_upwards [ae_restrict_mem A.compl]
      intro x hx
      simp only [Classical.not_not, mem_setOf_eq, mem_compl_iff] at hx
      simp [hx]
  · rintro ⟨g', g'meas, hg'⟩
    refine ⟨fun x => (f x : ℝ)⁻¹ • g' x, hf.coe_nnreal_real.inv.smul g'meas, ?_⟩
    rw [EventuallyEq, ae_withDensity_iff hf.coe_nnreal_ennreal]
    filter_upwards [hg']
    intro x hx h'x
    rw [← hx, smul_smul, inv_mul_cancel₀, one_smul]
    simp only [Ne, ENNReal.coe_eq_zero] at h'x
    simpa only [NNReal.coe_eq_zero, Ne] using h'x
