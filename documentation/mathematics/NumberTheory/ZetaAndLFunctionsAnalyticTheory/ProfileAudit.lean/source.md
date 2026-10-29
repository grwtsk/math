# Profile Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b782ec708f1bf6380e1c95dd4f7feaef67de3e07` · SHA-256 `ac90d05f0928c252405a7592dca2ad3b5d7102f857ff6e1c02f7f7849b12ac61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile
set_option autoImplicit false
set_option pp.fullNames true
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.unitSecond_factor
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.unitSecond_factor
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.sourceNormalization_ge_one_div_32
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.sourceNormalization_ge_one_div_32
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.normalizedTest_endpoint
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.normalizedTest_endpoint
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.normalizedTest_even
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.normalizedTest_even
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial_continuous
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial_continuous
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeProfile.endpointPolynomial_abs_le

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile
open FormalResearch.RiemannHypothesis.SourcePairing
example (A r : ℝ) (hA : 1 ≤ A) (hr : 0 ≤ r) (hrA : r ≤ 2 * A) :
    normalizedTest Realization.explicitSecondDerivative A (A-r) =
      endpointPolynomial A r / (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) :=
  normalizedTest_endpoint A r hA hr hrA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ca7a7d2925f88badfec03f57df7381689fddecd5cc0c59316954045c4db0737 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ac90d05f0928c252405a7592dca2ad3b5d7102f857ff6e1c02f7f7849b12ac61ProfileAudit/Variantac90d05f0928c252405a7592dca2ad3b5d7102f857ff6e1c02f7f7849b12ac61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
