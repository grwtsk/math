import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
import Mathlib.Analysis.Convolution

/-!
# Signed autocorrelation mass with an explicit product-integrability gate

The actual two-variable kernel is dominated by the product of the two literal
profile absolute values. Integrability is established before any Fubini exchange.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateUnitCorrelationMass

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateNormalizedSourceProfile EstimateUnitProfileMass

noncomputable section

/-- An explicit integrable majorant for the actual autocorrelation product. -/
theorem unitCorrelation_product_majorant_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ |unitProfile A z.2| * |unitProfile A (z.2-z.1)|)
      (volume.prod volume) := by
  have hf := (unitProfile_integrable A hA).norm
  have h := hf.convolution_integrand (ContinuousLinearMap.lsmul ℝ ℝ) hf.comp_neg
  simpa only [ContinuousLinearMap.lsmul_apply, smul_eq_mul, Real.norm_eq_abs, neg_sub] using h

/-- The exact signed kernel is product-integrable before an unbounded interchange. -/
theorem unitCorrelation_product_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) := by
  have hc := (unitProfile_contDiff A hA).continuous
  have hm : AEStronglyMeasurable
      (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) :=
    ((hc.comp continuous_snd).mul
      (hc.comp (continuous_snd.sub continuous_fst))).aestronglyMeasurable
  apply (unitCorrelation_product_majorant_integrable A hA).mono' hm
  exact Filter.Eventually.of_forall fun z ↦ by simp only [Real.norm_eq_abs, abs_mul, le_refl]

end
end EstimateUnitCorrelationMass
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
