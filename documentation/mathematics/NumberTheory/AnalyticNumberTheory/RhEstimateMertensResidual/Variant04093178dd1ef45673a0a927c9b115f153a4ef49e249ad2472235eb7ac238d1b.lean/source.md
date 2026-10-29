# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimateMertensResidual.Variant04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf19fb7bd87aa4b5c7e3c0d136201ccd78f850c9` · SHA-256 `04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.smoothMoment_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.prime_smooth_tail_iff_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.signed_pairing_tail_iff_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.mertens_residual_checkpoint

example :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.MertensResidualTailUpperBound →
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.EstimateObligation :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual.estimate_of_mertens_residual_tail
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e713cfa4eb3a1ab60fd06f12b6532546eb2161466e1ab4cbd8a3aeeb46d74784 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateMertensResidual/Variant04093178dd1ef45673a0a927c9b115f153a4ef49e249ad2472235eb7ac238d1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
