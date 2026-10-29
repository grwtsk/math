# Independent Source38 Audit Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7e98b835eec0e65dab3988fc15063ae91d446b2` · SHA-256 `03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceMixedCurvatureCross

set_option autoImplicit false

open MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

example
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) :=
  FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products s t a x b y hA

#check FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
#print axioms FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.proofs true
set_option pp.all true
set_option pp.maxSteps 1000000
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b34c6c904069b08193933a2405c0f172c4e39fb040cc985856ee5107057c61f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentSource38Audit/Variant03bb0ade47b263162f1a731a1c4396680a081fbca7403b92166c8728be658ae2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
