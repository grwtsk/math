# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileFixtures.Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86b6dd2ee30895a8023b524108a35e1abcce2b44` · SHA-256 `1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
example : diagonalMainCoefficient 1 = (221 / 873180 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : diagonalMainCoefficient 1 ≠ (2431 / 8820 : ℝ) := by
  norm_num [diagonalMainCoefficient, sourceNormalization]
example : (∫ t in (0 : ℝ)..1, sourceCorrelation explicitSecondDerivative 1 (2 * t)) =
    (221 / 873180 : ℝ) := by
  rw [actual_source_half_integral 1 (by norm_num)]
  norm_num [sourceNormalization]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=546edc67d9f87cac96609426c3fed86eb50ba741c4a6a028f9dc04c031fd284d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileFixtures/Variant1323089fec5f5d33f80e6dde145ff68ae9fb00cef25863bb4aedc610542ac070.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
