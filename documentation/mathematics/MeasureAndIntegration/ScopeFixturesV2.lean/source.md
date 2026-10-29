# Scope Fixtures V2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61fb3d9a144267e0e25440880dde61ac609e4c8c` · SHA-256 `08b295ca3eb52e13c9d024219d1231686730fd440d7e58f047cc05d5cc220d4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitiveCriticalMoment

/-! Independent private sign/readout guards; not principal or maintained roots. -/

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures

open MeasureTheory
open SourcePrimitiveCriticalMoment SourcePrimitivePrimeInteraction SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

/-- At sigma=1 a nonzero primitive transform forbids changing the verified R1 minus sign. -/
theorem wrong_positive_first_derivative_transform {A : ℝ} (hA : 0 < A)
    (hI : (∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s) ≠ 0) :
    (∫ s : ℝ, Real.exp s * primitiveCorrelationOne A s) ≠
      ∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s := by
  have h := primitiveCorrelationOne_laplace hA (1 : ℝ)
  norm_num at h
  intro he
  apply hI
  linarith

/-- Actual full-line critical cancellation coexists with the nonzero normalized point readout. -/
theorem critical_cancellation_not_pointwise_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ s : ℝ, Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 ∧
      sourceCorrelation explicitSecondDerivative A 0 ≠ 0 := by
  refine ⟨(sourceCorrelation_critical_filter_zero (show 0 < A by linarith)).1, ?_⟩
  rw [actual_correlation_at_zero A hA]
  norm_num

#check @wrong_positive_first_derivative_transform
#print axioms wrong_positive_first_derivative_transform
#check @critical_cancellation_not_pointwise_zero
#print axioms critical_cancellation_not_pointwise_zero

end FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd98065eea8d941ad4966ce48b311a37d618a909876099ee458c927930232c3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesV2/Variant08b295ca3eb52e13c9d024219d1231686730fd440d7e58f047cc05d5cc220d4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
