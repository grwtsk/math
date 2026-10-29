# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCorrelationCurvatureSign.Variant46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fa27722c76856b988fe2bde0f58faec2316f2b9` · SHA-256 `46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign

open MeasureTheory
open SourcePairing SourceDerivativeEnergy SourceCorrelationCurvature
open SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

theorem actual_derivative_energy_pos {A : ℝ} (hA : 0 < A) :
    0 < ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  have hn : 0 < derivativePolynomial ((A ^ 2)⁻¹) := by
    unfold derivativePolynomial
    positivity
  have hd := normPolynomial_pos ((A ^ 2)⁻¹) hr
  have he := actual_derivative_energy_eq hA
  have hp : 0 < A ^ 2 *
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
    rw [he]
    exact div_pos hn hd
  exact (mul_pos_iff_of_pos_left (by positivity : 0 < A ^ 2)).mp hp

theorem sourceCorrelation_curvature_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 =
      -(∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) := by
  simpa only [sub_zero, ← pow_two] using sourceCorrelation_second_deriv_eq_integral hA 0

theorem sourceCorrelation_curvature_at_zero_neg {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 < 0 := by
  rw [sourceCorrelation_curvature_at_zero hA]
  exact neg_neg_of_pos (actual_derivative_energy_pos hA)

theorem positive_autocorrelation_formula_false {A : ℝ} (hA : 0 < A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 ≠
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hn := sourceCorrelation_curvature_at_zero_neg hA
  have hp := actual_derivative_energy_pos hA
  exact ne_of_lt (hn.trans hp)

end FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a10973d80d6b3545a16633444c75ff138fd74ae11f8e1ca268f16f02e44168ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationCurvatureSign/Variant46ad9ccff9776031f0b0c8be0e5b44ae1ab74b02ca46748424e05845cd2acc2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
