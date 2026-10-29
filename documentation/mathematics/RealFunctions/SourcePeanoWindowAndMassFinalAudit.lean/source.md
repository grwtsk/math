# Source Peano Window And Mass Final Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b32c693650219f56b5ba5e95e40976bfbdad36c` · SHA-256 `da158714f8f8dd9063c7e8e040def145cb1ad8bd3f628daf5bb42f57a2a985ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePeanoOneSidedMass

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourcePeanoPositiveWindow
open FormalResearch.RiemannHypothesis.SourcePeanoOneSidedMass

#check weightedCorrelation_deriv_formula
#print axioms weightedCorrelation_deriv_formula
#print weightedCorrelation_deriv_formula
#check weightedCorrelation_second_deriv_formula
#print axioms weightedCorrelation_second_deriv_formula
#print weightedCorrelation_second_deriv_formula
#check weightedCorrelation_second_deriv_window
#print axioms weightedCorrelation_second_deriv_window
#print weightedCorrelation_second_deriv_window
#check criticalOneSidedMass
#print axioms criticalOneSidedMass
#print criticalOneSidedMass
#check actualOneSidedPairing
#print axioms actualOneSidedPairing
#print actualOneSidedPairing
#check actualOneSidedPairing_integrable
#print axioms actualOneSidedPairing_integrable
#print actualOneSidedPairing_integrable
#check oneSided_window_pointwise
#print axioms oneSided_window_pointwise
#print oneSided_window_pointwise
#check criticalOneSidedMass_window_integrable
#print axioms criticalOneSidedMass_window_integrable
#print criticalOneSidedMass_window_integrable
#check actualOneSidedPairing_dominates_window
#print axioms actualOneSidedPairing_dominates_window
#print actualOneSidedPairing_dominates_window
#check oneSided_spikes_transfer
#print axioms oneSided_spikes_transfer
#print oneSided_spikes_transfer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abe94d3560279db7911efdfd1610c902cb6a369d544fc677473f8061719a2d16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoWindowAndMassFinalAudit/Variantda158714f8f8dd9063c7e8e040def145cb1ad8bd3f628daf5bb42f57a2a985ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
