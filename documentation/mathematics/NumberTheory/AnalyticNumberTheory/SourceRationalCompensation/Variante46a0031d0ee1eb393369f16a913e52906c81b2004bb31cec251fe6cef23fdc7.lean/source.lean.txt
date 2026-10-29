-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.RationalCompensator.Variant5360f3ac2385bf6b026d27d4e29fb0c74e0628cda719178adc7f0a9d92f04c5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5360f3ac2385bf6b026d27d4e29fb0c74e0628cda719178adc7f0a9d92f04c5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.RationalCompensator.Variant5360f3ac2385bf6b026d27d4e29fb0c74e0628cda719178adc7f0a9d92f04c5d","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"5360f3ac2385bf6b026d27d4e29fb0c74e0628cda719178adc7f0a9d92f04c5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/SourceRationalCompensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRationalContinuousHalf
import SourceNativeDirichletMoments

/-!
# Actual source rational compensation on the native c = 2 line

The moment is the genuinely convergent full prime-power moment. The exact
continuous source return is bounded; the complete signed remainder stays open.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.RationalCompensator.Variant5360f3ac2385bf6b026d27d4e29fb0c74e0628cda719178adc7f0a9d92f04c5d

namespace FormalResearch.RiemannHypothesis.SourceRationalCompensation

open MeasureTheory Set
open SourceNativeMellin SourceNativeDirichlet SourceNativeDirichletMoments
open SourceNativeReadout SourceNativeAngularTail SourceNativeMertensTransfer
open SourceNativeConstantCompensation SourceRationalContinuousHalf
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

noncomputable section

def rationalCompensator (t : ℝ) : ℂ :=
  (rightLineMajorant 2 - dirichletMoment 1 : ℝ) +
    (dirichletMoment 1 : ℂ) / (1 + Complex.I * (t : ℂ))

def rationalRemainderMultiplier (t : ℝ) : ℂ :=
  combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) - rationalCompensator t

def rationalRemainderIntegrand (A t : ℝ) : ℂ :=
  rationalRemainderMultiplier t *
    nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))

def rationalRemainderContour (A : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℝ) * ∫ t : ℝ, rationalRemainderIntegrand A t

def rationalBaseline (A : ℝ) : ℝ :=
  rightLineMajorant 2 - dirichletMoment 1 +
    dirichletMoment 1 * continuousPoleHalf A

private theorem denominator_ne_zero (t : ℝ) :
    (1 : ℂ) + Complex.I * (t : ℂ) ≠ 0 := by
  intro h
  have hh := congr_arg Complex.re h
  norm_num at hh

theorem rationalKernel_norm_le_one (t : ℝ) :
    ‖(1 : ℂ) / (1 + Complex.I * (t : ℂ))‖ ≤ 1 := by
  have hd : 1 ≤ ‖(1 : ℂ) + Complex.I * (t : ℂ)‖ := by
    simpa using Complex.abs_re_le_norm ((1 : ℂ) + Complex.I * (t : ℂ))
  rw [norm_div, norm_one]
  exact (div_le_one (lt_of_lt_of_le (by norm_num) hd)).mpr hd

theorem rationalRemainderMultiplier_norm_le (t : ℝ) :
    ‖rationalRemainderMultiplier t‖ ≤ 2 * rightLineMajorant 2 + dirichletMoment 1 := by
  have hm := dirichletMoment_nonneg 1
  have hd := combinedMultiplier_norm_le 2 (by norm_num)
    ((2 : ℂ) + Complex.I * (t : ℂ)) (by simp)
  have hden : 0 < ‖(1 : ℂ) + Complex.I * (t : ℂ)‖ :=
    norm_pos_iff.mpr (denominator_ne_zero t)
  have hq : ‖Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))‖ ≤ 1 := by
    rw [norm_div]
    apply (div_le_one hden).mpr
    simpa [norm_mul] using Complex.abs_im_le_norm ((1 : ℂ) + Complex.I * (t : ℂ))
  have heq : rationalRemainderMultiplier t =
      (combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ)) - (rightLineMajorant 2 : ℂ)) +
        (dirichletMoment 1 : ℂ) *
          (Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))) := by
    unfold rationalRemainderMultiplier rationalCompensator
    push_cast
    field_simp [denominator_ne_zero t]
    ring
  rw [heq]
  calc
    _ ≤ (‖combinedMultiplier ((2 : ℂ) + Complex.I * (t : ℂ))‖ +
        ‖(rightLineMajorant 2 : ℂ)‖) + ‖(dirichletMoment 1 : ℂ)‖ *
          ‖Complex.I * (t : ℂ) / (1 + Complex.I * (t : ℂ))‖ := by
      exact le_trans (norm_add_le _ _) (add_le_add (norm_sub_le _ _) (by rw [norm_mul]))
    _ ≤ (rightLineMajorant 2 + rightLineMajorant 2) + dirichletMoment 1 * 1 := by
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (rightLineMajorant_nonneg _),
        Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (dirichletMoment_nonneg _)]
      gcongr
    _ = _ := by ring

theorem native_rational_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
      (1 + Complex.I * (t : ℂ))) := by
  have hc : Continuous (fun t : ℝ ↦ (1 : ℂ) / (1 + Complex.I * (t : ℂ))) :=
    continuous_const.div (by fun_prop) denominator_ne_zero
  have h := (nativeMellin_two_integrable A hA).mul_bdd hc.aestronglyMeasurable
    (Filter.Eventually.of_forall rationalKernel_norm_le_one)
  convert h using 1
  funext t
  ring

private theorem rationalIntegrand_eq (A : ℝ) :
    rationalRemainderIntegrand A = fun t : ℝ ↦ angularIntegrand A t -
      (rightLineMajorant 2 - dirichletMoment 1 : ℝ) *
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) -
      (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))) := by
  funext t
  unfold rationalRemainderIntegrand rationalRemainderMultiplier rationalCompensator
    angularIntegrand
  ring

theorem rationalRemainderIntegrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (rationalRemainderIntegrand A) := by
  rw [rationalIntegrand_eq]
  exact ((angularIntegrand_integrable A hA).sub
    ((nativeMellin_two_integrable A hA).const_mul _)).sub
    ((native_rational_integrable A hA).const_mul _)

theorem angularContour_eq_rational (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (rationalBaseline A : ℂ) + rationalRemainderContour A := by
  have hH := nativeMellin_two_integrable A hA
  have hQ := native_rational_integrable A hA
  have hD := angularIntegrand_integrable A hA
  have hi : (∫ t : ℝ, rationalRemainderIntegrand A t) =
      (∫ t : ℝ, angularIntegrand A t) -
        (rightLineMajorant 2 - dirichletMoment 1 : ℝ) *
          (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
        (dirichletMoment 1 : ℂ) *
          (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
            (1 + Complex.I * (t : ℂ))) := by
    rw [rationalIntegrand_eq]
    dsimp only
    rw [integral_sub
      (f := fun t : ℝ ↦ angularIntegrand A t -
        ((rightLineMajorant 2 - dirichletMoment 1 : ℝ) : ℂ) *
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)))
      (g := fun t : ℝ ↦ (dirichletMoment 1 : ℂ) *
        (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
          (1 + Complex.I * (t : ℂ))))
      (hD.sub (hH.const_mul _)) (hQ.const_mul _),
      integral_sub hD (hH.const_mul _), integral_const_mul, integral_const_mul]
  unfold rationalRemainderContour angularContour rationalBaseline
  rw [hi]
  have hmass := nativeMellin_angular_mass A hA
  have hread := native_rational_readout_eq_continuousPoleHalf A hA
  simp only [Complex.ofReal_add, Complex.ofReal_sub, Complex.ofReal_mul]
  calc
    _ = ((rightLineMajorant 2 : ℂ) - (dirichletMoment 1 : ℂ)) *
        ((1 / (2 * Real.pi) : ℝ) *
          ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) +
        (dirichletMoment 1 : ℂ) *
          ((1 / (2 * Real.pi) : ℝ) *
            ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
              (1 + Complex.I * (t : ℂ))) +
        ((1 / (2 * Real.pi) : ℝ) *
          ((∫ t : ℝ, angularIntegrand A t) -
            ((rightLineMajorant 2 : ℂ) - (dirichletMoment 1 : ℂ)) *
              (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ))) -
            (dirichletMoment 1 : ℂ) *
              (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
                (1 + Complex.I * (t : ℂ))))) := by ring
    _ = _ := by rw [hmass, hread]; ring

theorem mertensResidual_eq_rational (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = rationalBaseline A + (rationalRemainderContour A).re := by
  have h := angularContour_eq_rational A hA
  rw [← mertensResidual_eq_angularContour A hA] at h
  exact_mod_cast congr_arg Complex.re h

theorem rationalBaseline_upper (A : ℝ) (hA : 1 ≤ A) :
    rationalBaseline A ≤ rightLineMajorant 2 + dirichletMoment 1 := by
  have hh := (abs_le.mp (continuousPoleHalf_abs_le_two A hA)).2
  have hm := dirichletMoment_nonneg 1
  unfold rationalBaseline
  nlinarith

/-- The signed arithmetic witness remains an explicit open input. -/
def RationalRemainderTailUpperBound : Prop :=
  ∃ K : ℝ, ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K

theorem mertensResidual_upper_of_rational {K R : ℝ} (hR : 1 ≤ R)
    (hrem : ∀ A : ℝ, R ≤ A → (rationalRemainderContour A).re ≤ K)
    (A : ℝ) (hA : R ≤ A) :
    mertensResidual A ≤ rightLineMajorant 2 + dirichletMoment 1 + K := by
  rw [mertensResidual_eq_rational A (le_trans hR hA)]
  exact add_le_add (rationalBaseline_upper A (le_trans hR hA)) (hrem A hA)

theorem mertens_residual_tail_of_rational (h : RationalRemainderTailUpperBound) :
    MertensResidualTailUpperBound := by
  obtain ⟨K, R, hR, hrem⟩ := h
  refine ⟨max 0 (rightLineMajorant 2 + dirichletMoment 1 + K),
    le_max_left _ _, R, hR, ?_⟩
  intro A hA
  exact le_trans (mertensResidual_upper_of_rational hR hrem A hA) (le_max_right _ _)

theorem estimate_of_rational_remainder (h : RationalRemainderTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (mertens_residual_tail_of_rational h)

end
end FormalResearch.RiemannHypothesis.SourceRationalCompensation
