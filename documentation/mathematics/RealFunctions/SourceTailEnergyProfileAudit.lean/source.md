# Source Tail Energy Profile Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d90e48e91fee07b687aec669b87bde34ecfdcaf` · SHA-256 `7cbda85b8f5beb482fa5df3cbcbf2388a126fd0469912af813e08ff5234740bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceTailEnergyProfile

set_option linter.unusedVariables false
set_option pp.universes true
set_option pp.explicit true

#print RH16TailEnergy.tailEnergyCoefficient
#print axioms RH16TailEnergy.tailEnergyCoefficient

#print RH16TailEnergy.exact_ratio_comparison
#print axioms RH16TailEnergy.exact_ratio_comparison

#print RH16TailEnergy.exact_ratio_mono
#print axioms RH16TailEnergy.exact_ratio_mono

#print RH16TailEnergy.tailEnergyCoefficient_pos
#print axioms RH16TailEnergy.tailEnergyCoefficient_pos

#print RH16TailEnergy.tailEnergyCoefficient_antitone
#print axioms RH16TailEnergy.tailEnergyCoefficient_antitone

#print RH16TailEnergy.actual_derivative_energy_le_tail
#print axioms RH16TailEnergy.actual_derivative_energy_le_tail

#print RH16TailEnergy.actual_correlation_deriv_abs_le_tail
#print axioms RH16TailEnergy.actual_correlation_deriv_abs_le_tail

#print RH16TailEnergy.actual_correlation_second_deriv_abs_le_tail
#print axioms RH16TailEnergy.actual_correlation_second_deriv_abs_le_tail

#print RH16TailEnergy.tailEnergyCoefficient_ninety_one
#print axioms RH16TailEnergy.tailEnergyCoefficient_ninety_one

#print RH16TailEnergy.tailEnergyCoefficient_ninety_one_lt_five
#print axioms RH16TailEnergy.tailEnergyCoefficient_ninety_one_lt_five

#print RH16TailEnergy.tailEnergyCoefficient_le_five
#print axioms RH16TailEnergy.tailEnergyCoefficient_le_five

#print RH16TailEnergy.actual_correlation_derivative_bounds
#print axioms RH16TailEnergy.actual_correlation_derivative_bounds

#print RH16TailEnergy.tail_physical_derivative_bounds
#print axioms RH16TailEnergy.tail_physical_derivative_bounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2be7e5bec2ca83b9dfde67328010dce6eb588296e1fbff54aa29fe2dfa6f73c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfileAudit/Variant7cbda85b8f5beb482fa5df3cbcbf2388a126fd0469912af813e08ff5234740bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
