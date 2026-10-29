# Correlation Mass Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2b809b6cb17c2a9c2c543be0d057f2600641cda` · SHA-256 `efd3479bc0abf686de155887e27608acd2c4285009eda6cdc40fa44f8d3ad7a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass
set_option pp.fullNames true
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_integral
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_integral
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_even
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_even
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_integral_eq_interval
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_integral_eq_interval
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass_formula
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass_formula
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass_ge
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_half_mass_ge
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_abs_le_one
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass.unitCorrelation_abs_le_one

open MeasureTheory FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
example (A : ℝ) (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) ≤ ∫ y in (0 : ℝ)..2, EstimateNormalizedSourceProfile.unitCorrelation A y :=
  EstimateUnitCorrelationMass.unitCorrelation_half_mass_ge A hA
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f89333f86abf10eca1544d411be1b609b2407401705f044577b50bde304fd60c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Efd3479bc0abf686de155887e27608acd2c4285009eda6cdc40fa44f8d3ad7a0CorrelationMassA/Variantefd3479bc0abf686de155887e27608acd2c4285009eda6cdc40fa44f8d3ad7a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
