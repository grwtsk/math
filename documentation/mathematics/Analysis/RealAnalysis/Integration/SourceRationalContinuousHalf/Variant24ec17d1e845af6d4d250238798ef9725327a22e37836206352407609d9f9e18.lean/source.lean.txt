-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ContinuousPoleHalf.Variant98d281540510c4e196948314e6ff4e226924763f443057b75bbcd3950c9f83fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98d281540510c4e196948314e6ff4e226924763f443057b75bbcd3950c9f83fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ContinuousPoleHalf.Variant98d281540510c4e196948314e6ff4e226924763f443057b75bbcd3950c9f83fa","mathematical_subject":"Analysis.Integration","original_sha256":"98d281540510c4e196948314e6ff4e226924763f443057b75bbcd3950c9f83fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/SourceRationalContinuousHalf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceNativeConstantCompensation
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Exact continuous pole half for the native rational compensator

This uses the actual native inverse orientation, genuine two-variable Fubini,
and the maintained pole annihilation. No signed arithmetic bound is assumed.

Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ContinuousPoleHalf.Variant98d281540510c4e196948314e6ff4e226924763f443057b75bbcd3950c9f83fa

namespace FormalResearch.RiemannHypothesis.SourceRationalContinuousHalf

open MeasureTheory Set
open SourcePairing SourceNativeMellin SourceNativeReadout SourceNativeAngularTail
open SourceNativeConstantCompensation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment EstimateMertensResidual

noncomputable section

/-- Actual continuous pole half, distinct from the corrected arithmetic pairing. -/
def continuousPoleHalf (A : ℝ) : ℝ :=
  ∫ u : ℝ in Ioi 0, Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u

/-- Compact source support converts the continuous half to its exact finite interval. -/
theorem continuousPoleHalf_eq_interval (A : ℝ) (hA : 1 ≤ A) :
    continuousPoleHalf A = ∫ u in 0..2 * A,
      Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u := by
  unfold continuousPoleHalf
  rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ 2 * A)]
  apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Ioc_subset_Ioi_self)
  intro u hu
  have hh : 2 * A < u := by
    have hp := hu.1
    have hn := hu.2
    simp only [mem_Ioi] at hp
    simp only [mem_Ioc, not_and, not_le] at hn
    exact hn hp
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
    (by rw [abs_of_pos (by linarith : 0 < u)]; linarith), mul_zero]

/-- The continuous pole half equals the negative decaying source half, exactly. -/
theorem continuousPoleHalf_eq_neg_negative (A : ℝ) (hA : 1 ≤ A) :
    continuousPoleHalf A = -negativeSmoothMoment A := by
  rw [continuousPoleHalf_eq_interval A hA]
  have h := pole_correlation_certificate A hA
  unfold negativeSmoothMoment
  linarith

/-- Uniform actual continuous-half budget, with every real A >= 1 admitted. -/
theorem continuousPoleHalf_abs_le_two (A : ℝ) (hA : 1 ≤ A) :
    |continuousPoleHalf A| ≤ 2 := by
  rw [continuousPoleHalf_eq_neg_negative A hA, abs_neg]
  exact negativeSmoothMoment_abs_le A hA

private theorem inverse_phase_norm (t u : ℝ) :
    ‖Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))‖ = 1 := by
  rw [Complex.norm_exp]
  simp

/-- The literal negative-angular Laplace kernel, retaining its complex orientation. -/
theorem rationalKernel_eq_laplace (t : ℝ) :
    (1 : ℂ) / (1 + Complex.I * (t : ℂ)) =
      ∫ u : ℝ in Ioi 0, (Real.exp (-u) : ℂ) *
        Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
  have hfun : (fun u : ℝ ↦ (Real.exp (-u) : ℂ) *
      Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) =
      (fun u : ℝ ↦ Complex.exp ((-1 - Complex.I * (t : ℂ)) * (u : ℂ))) := by
    funext u
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    congr 1
    push_cast
    ring
  rw [hfun, integral_exp_mul_complex_Ioi (by simp) 0]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  field_simp
  rw [show -1 - Complex.I * (t : ℂ) = -(1 + Complex.I * (t : ℂ)) by ring,
    div_neg, neg_neg]

/-- Genuine product integrability permits the actual rational-kernel Fubini swap. -/
theorem rationalReadout_product_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun p : ℝ × ℝ ↦
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (p.1 : ℂ)) *
        (Real.exp (-p.2) : ℂ) * Complex.exp (-Complex.I * (p.1 : ℂ) * (p.2 : ℂ)))
      (volume.prod (volume.restrict (Ioi 0))) := by
  have hb := (nativeMellin_two_integrable A hA).norm.mul_prod
    (integrableOn_exp_neg_Ioi (0 : ℝ))
  apply hb.mono'
  · exact ((native_two_line_continuous A hA).comp continuous_fst |>.mul
      (by fun_prop) |>.mul (by fun_prop)).aestronglyMeasurable
  · filter_upwards [] with p
    rw [norm_mul, norm_mul, inverse_phase_norm, mul_one,
      Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

/-- Actual rational-kernel angular readout equals the continuous source pole half. -/
theorem native_rational_readout_eq_continuousPoleHalf (A : ℝ) (hA : 1 ≤ A) :
    (1 / (2 * Real.pi) : ℝ) *
      (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
        (1 + Complex.I * (t : ℂ))) = (continuousPoleHalf A : ℂ) := by
  have hF := rationalReadout_product_integrable A hA
  have hinv := weightedCorrelation_eq_native_inverse A hA
  have hswap := integral_integral_swap
    (f := fun t u : ℝ ↦
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
        (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) hF
  have hinner (t : ℝ) : nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
      (1 + Complex.I * (t : ℂ)) =
      ∫ u : ℝ in Ioi 0,
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
          (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
    calc
      _ = nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
          (∫ u : ℝ in Ioi 0, (Real.exp (-u) : ℂ) *
            Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) := by
        rw [← rationalKernel_eq_laplace]
        ring
      _ = _ := by
        rw [← integral_const_mul]
        apply integral_congr_ae
        filter_upwards [] with u
        ring
  simp_rw [hinner]
  rw [hswap, ← integral_const_mul]
  unfold continuousPoleHalf
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with u
  calc
    _ = (Real.exp (-u) : ℂ) *
        ((1 / (2 * Real.pi) : ℝ) *
          ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) := by
      have heq : (fun t : ℝ ↦
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) =
          (fun t : ℝ ↦ (Real.exp (-u) : ℂ) *
            (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
              Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)))) := by
        funext t
        ring
      rw [heq, integral_const_mul]
      ring
    _ = (Real.exp (-u) : ℂ) * (weightedCorrelation A u : ℂ) := by rw [← hinv u]
    _ = _ := by
      have he : Real.exp (-u) * weightedCorrelation A u =
          Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u := by
        unfold weightedCorrelation
        rw [mul_left_comm, ← Real.exp_add]
        rw [show -u + 3 * u / 2 = u / 2 by ring]
        ring
      exact_mod_cast he

end
end FormalResearch.RiemannHypothesis.SourceRationalContinuousHalf
