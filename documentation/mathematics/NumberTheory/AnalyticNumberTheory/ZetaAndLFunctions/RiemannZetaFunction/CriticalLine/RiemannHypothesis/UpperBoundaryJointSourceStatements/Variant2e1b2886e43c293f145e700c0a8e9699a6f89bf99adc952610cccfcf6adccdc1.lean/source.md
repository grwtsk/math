# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UpperBoundaryJointSourceStatements.Variant2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5510bdce4ffb42639e4aac800147be5d691dda70` · SHA-256 `2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint
set_option autoImplicit false
section SourceUpperBoundaryJointStatements
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryJoint

example (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      UpperBoundaryChannels.coreValue A +
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x :=
  sourceQuadraticValue_eq_core_add_integral A hA

example (A : ℝ) (hA : 1 ≤ A) :
    max (-sourceQuadraticValue explicitSecondDerivative A) 0 =
      max (-UpperBoundaryChannels.coreValue A -
        2 * ∫ x in 1..Real.exp (2 * A),
          UpperBoundaryAbel.upperProductSummatory ⌊Real.exp A⌋₊ x *
            deriv (SourceSampling.sourceSamplingKernel A) x) 0 :=
  sourceQuadraticValue_negativePart_eq A hA

end SourceUpperBoundaryJointStatements
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf61a57e529dbdb28f2a2387be33d0a9d91baeb6db140a1b687aee95271096c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperBoundaryJointSourceStatements/Variant2e1b2886e43c293f145e700c0a8e9699a6f89bf99adc952610cccfcf6adccdc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
