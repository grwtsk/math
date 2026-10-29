# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.1c416322992ae28be6895ee009763adf31dca5a0bb7370d88af6c671b5931796ProfileMassAudit.Variant1c416322992ae28be6895ee009763adf31dca5a0bb7370d88af6c671b5931796

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `905e4b8c62789d4733c64e1048d18428573c66e3` · SHA-256 `1c416322992ae28be6895ee009763adf31dca5a0bb7370d88af6c671b5931796`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
set_option pp.fullNames true
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitProfile_eq_indicator
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitProfile_eq_indicator
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitBump_integral
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitBump_integral
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitSecond_integral
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitSecond_integral
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitProfile_integral
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.unitProfile_integral
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.sourceNormalization_le_one
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.sourceNormalization_le_one
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.sourceNormalization_le_41
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass.sourceNormalization_le_41

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing MeasureTheory
example (A : ℝ) (hA : 1 ≤ A) :
    (∫ s, EstimateNormalizedSourceProfile.unitProfile A s) =
      -64 / (315 * Real.sqrt (sourceNormalization A)) :=
  EstimateUnitProfileMass.unitProfile_integral A (by linarith)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=643e526aee281085418b6cc7d678e37b94fd42bea578096c4ecb65aa13e34f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/1c416322992ae28be6895ee009763adf31dca5a0bb7370d88af6c671b5931796ProfileMassAudit/Variant1c416322992ae28be6895ee009763adf31dca5a0bb7370d88af6c671b5931796.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
