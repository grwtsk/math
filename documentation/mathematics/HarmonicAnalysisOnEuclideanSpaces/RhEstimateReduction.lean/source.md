# Rh Estimate Reduction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3dfd70d06e5ed65837836631ddcc9286b6b5e2d` · SHA-256 `8fa66334e35fd995193457a4b1f80c5f2b6992702223802c187c87d759326a5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel.actual_source_fourier_mass
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate.actual_correction_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction.estimate_of_signed_pairing_uniform_lower_bound
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction.estimate_reduction_checkpoint

example :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction.SignedPairingUniformLowerBound →
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly.EstimateObligation :=
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateReduction.estimate_of_signed_pairing_uniform_lower_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddaf42b7d29f476e6ad89f2b9e832465971a14dcd81df2deda6c9abe17d4a5f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/RhEstimateReduction/Variant8fa66334e35fd995193457a4b1f80c5f2b6992702223802c187c87d759326a5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
