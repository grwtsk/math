-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.WithDensity.Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.WithDensity.Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/VectorMeasure/Decomposition/RadonNikodym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying, Thomas Zhu
-/
import Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym
import Mathlib.MeasureTheory.VectorMeasure.Decomposition.Lebesgue

/-!
# Radon-Nikodym derivatives of vector measures

This file contains results about Radon-Nikodym derivatives of signed measures
that depend both on the Lebesgue decomposition of signed measures
and the theory of Radon-Nikodym derivatives of usual measures.
-/


namespace GRWTSK.Analysis.MeasureTheory.WithDensity.Variant9650994eff94f83ddc9defcb009c5bc9c5684ee38e856d6faf665d0dafa2d7f5

namespace MeasureTheory

variable {α : Type*} {m : MeasurableSpace α}

open Measure VectorMeasure

namespace SignedMeasure

theorem withDensityᵥ_rnDeriv_eq (s : SignedMeasure α) (μ : Measure α) [SigmaFinite μ]
    (h : s ≪ᵥ μ.toENNRealVectorMeasure) : μ.withDensityᵥ (s.rnDeriv μ) = s := by
  rw [absolutelyContinuous_ennreal_iff, (_ : μ.toENNRealVectorMeasure.ennrealToMeasure = μ),
    totalVariation_absolutelyContinuous_iff] at h
  · ext1 i hi
    rw [withDensityᵥ_apply (integrable_rnDeriv _ _) hi, rnDeriv_def, integral_sub,
      setIntegral_toReal_rnDeriv h.1 i, setIntegral_toReal_rnDeriv h.2 i]
    · conv_rhs => rw [← s.toSignedMeasure_toJordanDecomposition]
      erw [VectorMeasure.sub_apply]
      rw [toSignedMeasure_apply_measurable hi, toSignedMeasure_apply_measurable hi, measureReal_def,
        measureReal_def]
    all_goals
      refine Integrable.integrableOn ?_
      refine ⟨?_, hasFiniteIntegral_toReal_of_lintegral_ne_top ?_⟩
      · apply Measurable.aestronglyMeasurable (by fun_prop)
      · exact (lintegral_rnDeriv_lt_top _ _).ne
  · exact equivMeasure.right_inv μ

/-- The Radon-Nikodym theorem for signed measures. -/
theorem absolutelyContinuous_iff_withDensityᵥ_rnDeriv_eq (s : SignedMeasure α) (μ : Measure α)
    [SigmaFinite μ] : s ≪ᵥ μ.toENNRealVectorMeasure ↔ μ.withDensityᵥ (s.rnDeriv μ) = s :=
  ⟨withDensityᵥ_rnDeriv_eq s μ, fun h => h ▸ withDensityᵥ_absolutelyContinuous _ _⟩

end SignedMeasure

theorem withDensityᵥ_rnDeriv_smul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    {μ ν : Measure α} [μ.HaveLebesgueDecomposition ν] [SigmaFinite μ] {f : α → E}
    (hμν : μ ≪ ν) (hf : Integrable f μ) :
    ν.withDensityᵥ (fun x ↦ (μ.rnDeriv ν x).toReal • f x) = μ.withDensityᵥ f := by
  rw [withDensityᵥ_smul_eq_withDensityᵥ_withDensity' (measurable_rnDeriv μ ν).aemeasurable
    (rnDeriv_lt_top μ ν) ((integrable_rnDeriv_smul_iff hμν).mpr hf), withDensity_rnDeriv_eq μ ν hμν]

end MeasureTheory
