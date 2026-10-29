# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimatePoleReducedDiscrepancy.Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ff6192eeec7b8a725865de58b0021506999fd3b` · SHA-256 `92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedDiscrepancy

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePoleReducedWeight EstimatePoleReducedDiscrepancy
open EstimatePrimeSmoothDefect EstimateCriticalPrimeErrorAbel
open FormalResearch.RiemannHypothesis.SourcePairing

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * poleReducedPrimitive A lowerEndpoint -
        ∑ n ∈ PrimePowerDescent.primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t :=
  criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * Real.exp (-lowerEndpoint/2) *
        sourceCorrelation Realization.explicitSecondDerivative A lowerEndpoint +
      smoothMoment A - closedPrimeMoment A := by
  rw [criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA,
    poleReduced_discrepancy_eq_primeMoment A hA]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b0b5a91d7f0a987551407784ca68ed0302e5672c0e4729c8167c125f8d700ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimatePoleReducedDiscrepancy/Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
