# Endpoint Positivity Source Statements — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce8561724a5fd744b99a479dbfc000ea7be242cd` · SHA-256 `222276df43ec4d0879b9fd316c2dcd6ba59e5765db3eefab4befb5b57e829c2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.EndpointPositivity
set_option autoImplicit false
namespace EndpointPositivitySourceExactStatements
open Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A) (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x :=
  EndpointPositivity.normalizedTest_endpoint_pos A x hA hx

example (A t : ℝ) (hA : 3 ≤ A) (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t :=
  EndpointPositivity.sourceCorrelation_endpoint_pos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q :=
  EndpointPositivity.sourceSamplingKernel_upper_pos A q hA hq

end
end EndpointPositivitySourceExactStatements
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dc39e1a17c22435b0dcf5e7a6c36f67736b068de1ce49c72cabc9c21fa9b4cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointPositivitySourceStatements/Variant222276df43ec4d0879b9fd316c2dcd6ba59e5765db3eefab4befb5b57e829c2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
