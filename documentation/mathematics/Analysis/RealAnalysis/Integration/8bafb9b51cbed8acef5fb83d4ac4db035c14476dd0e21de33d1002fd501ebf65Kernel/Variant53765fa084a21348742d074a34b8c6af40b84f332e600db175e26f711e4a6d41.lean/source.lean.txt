-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ThetaTailPairKernel.Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ThetaTailPairKernel.Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65","mathematical_subject":"Analysis.Integration","original_sha256":"8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/8b/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65--Kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.MeasureTheory.Integral.Prod


namespace GRWTSK.Analysis.RealAnalysis.Integration.ThetaTailPairKernel.Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open MeasureTheory Set
noncomputable section

def thetaTailPairKernel (m q : ℕ) (t u : ℝ) : ℝ :=
  thetaPhi u * ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
    evenBasis m t

theorem thetaTailPairKernel_nonnegative (m q : ℕ) {t u : ℝ}
    (ht : 0 ≤ t) (htu : t ≤ u) : 0 ≤ thetaTailPairKernel m q t u := by
  exact mul_nonneg (mul_nonneg (thetaPhi_positive u (ht.trans htu)).le
    (div_nonneg (pow_nonneg (sub_nonneg.mpr htu) _) (by positivity)))
    (evenBasis_nonnegative m t)

theorem continuous_thetaTailPairKernel (m q : ℕ) :
    Continuous (fun p : ℝ × ℝ => thetaTailPairKernel m q p.1 p.2) := by
  unfold thetaTailPairKernel evenBasis
  exact ((continuous_thetaPhi.comp continuous_snd).mul
    (((continuous_snd.sub continuous_fst).pow _).div_const _)).mul (by fun_prop)

def thetaTailPairIntegrand (m q : ℕ) : ℝ × ℝ → ℝ :=
  {p : ℝ × ℝ | 0 ≤ p.1 ∧ p.1 ≤ p.2}.indicator
    (fun p => thetaTailPairKernel m q p.1 p.2)

theorem measurable_thetaTailPairIntegrand (m q : ℕ) :
    Measurable (thetaTailPairIntegrand m q) := by
  apply (continuous_thetaTailPairKernel m q).measurable.indicator
  exact (measurableSet_le measurable_const measurable_fst).inter
    (measurableSet_le measurable_fst measurable_snd)

theorem thetaTailPairIntegrand_nonnegative (m q : ℕ) (p : ℝ × ℝ) :
    0 ≤ thetaTailPairIntegrand m q p := by
  unfold thetaTailPairIntegrand
  apply indicator_nonneg
  intro x hx
  exact thetaTailPairKernel_nonnegative m q hx.1 hx.2

theorem thetaTailPairIntegrand_right (m q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (fun u => thetaTailPairIntegrand m q (t, u)) =
      (Ici t).indicator (thetaTailPairKernel m q t) := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, ht]

theorem thetaTailPairIntegrand_right_of_neg (m q : ℕ) {t : ℝ} (ht : t < 0) :
    (fun u => thetaTailPairIntegrand m q (t, u)) = 0 := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, not_le.mpr ht]

theorem thetaTailPairIntegrand_left (m q : ℕ) (u : ℝ) :
    (fun t => thetaTailPairIntegrand m q (t, u)) =
      (Icc (0 : ℝ) u).indicator (fun t => thetaTailPairKernel m q t u) := rfl

theorem thetaTailPairIntegrand_right_integrable (m q : ℕ) (t : ℝ) :
    Integrable (fun u => thetaTailPairIntegrand m q (t, u)) := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integrable_indicator_iff measurableSet_Ici]
    unfold IntegrableOn
    convert (thetaTail_integrable (2 * q + 1) ht).mul_const (evenBasis m t) using 1
    congr 1
    funext u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    exact integrable_zero _ _ _

theorem thetaTailPairIntegrand_left_integrable (m q : ℕ) (u : ℝ) :
    Integrable (fun t => thetaTailPairIntegrand m q (t, u)) := by
  rw [thetaTailPairIntegrand_left, integrable_indicator_iff measurableSet_Icc]
  exact ((continuous_thetaTailPairKernel m q).comp
    (continuous_id.prodMk continuous_const)).continuousOn.integrableOn_Icc

theorem thetaTailPairIntegrand_integral_right (m q : ℕ) (t : ℝ) :
    (∫ u, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator
        (fun t => thetaTail (2 * (q + 1)) t * evenBasis m t) t := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integral_indicator measurableSet_Ici,
      indicator_of_mem (show t ∈ Ici (0 : ℝ) from ht)]
    rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega, thetaTail]
    rw [← integral_mul_const]
    apply integral_congr_ae
    filter_upwards [] with u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    simp [indicator_of_notMem (show t ∉ Ici (0 : ℝ) from ht)]

theorem thetaTailPairIntegrand_integral_left (m q : ℕ) (u : ℝ) :
    (∫ t, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator (fun u => thetaPhi u *
        ∫ t in Icc (0 : ℝ) u,
          ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
            evenBasis m t) u := by
  rw [thetaTailPairIntegrand_left, integral_indicator measurableSet_Icc]
  by_cases hu : 0 ≤ u
  · rw [indicator_of_mem (show u ∈ Ici (0 : ℝ) from hu), ← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    unfold thetaTailPairKernel
    ring
  · rw [indicator_of_notMem (show u ∉ Ici (0 : ℝ) from hu), Icc_eq_empty_of_lt (lt_of_not_ge hu)]
    simp

theorem tailPairing_succ_eq_iteratedIntegral (m q : ℕ) :
    tailPairing m (q + 1) =
      ∫ t in Ici (0 : ℝ), ∫ u in Ici t, thetaTailPairKernel m q t u := by
  unfold tailPairing
  rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega]
  simp only [thetaTail]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [← integral_mul_const]
  apply integral_congr_ae
  filter_upwards [] with u
  unfold thetaTailPairKernel
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
