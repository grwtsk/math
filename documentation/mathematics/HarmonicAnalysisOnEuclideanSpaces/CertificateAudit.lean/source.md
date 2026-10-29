# Certificate Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abeaf167abab654eef513e51fae2c2def8c0df39` · SHA-256 `7421872e0d8641464765e7346ee02e52cc37d47413e39ab32e9167411fc75dc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceDualCertificate
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceDualCertificate
#check
  actualReflectedDualKernel
#print axioms
  actualReflectedDualKernel
#check
  actualReflectedDualKernel_transport
#print axioms
  actualReflectedDualKernel_transport
#check
  actualStationaryDualKernel
#print axioms
  actualStationaryDualKernel
#check
  actualStationaryDualKernel_transport
#print axioms
  actualStationaryDualKernel_transport
#check
  allReflectedMainTermDual
#print axioms
  allReflectedMainTermDual
#check
  allStationaryMainTermDual
#print axioms
  allStationaryMainTermDual
#check
  allReflectedMainTermDual_eq_neg
#print axioms
  allReflectedMainTermDual_eq_neg
#check
  allStationaryMainTermDual_eq_source
#print axioms
  allStationaryMainTermDual_eq_source
#check
  actualJointRemainder
#print axioms
  actualJointRemainder
#check
  dualRemainderForMain
#print axioms
  dualRemainderForMain
#check
  mainTransportDefect
#print axioms
  mainTransportDefect
#check
  dualRemainder_eq_neg_joint_sub_defect
#print axioms
  dualRemainder_eq_neg_joint_sub_defect
#check
  actualReflectedDualRemainder
#print axioms
  actualReflectedDualRemainder
#check
  allReflected_main_defect_zero
#print axioms
  allReflected_main_defect_zero
#check
  actualReflectedDualRemainder_eq_neg
#print axioms
  actualReflectedDualRemainder_eq_neg
#check
  allStationary_main_defect
#print axioms
  allStationary_main_defect
#check
  joint_upper_of_dual_lower_and_defect_lower
#print axioms
  joint_upper_of_dual_lower_and_defect_lower
#check
  DualLowerTailBudget
#print axioms
  DualLowerTailBudget
#check
  MainDefectLowerTailBudget
#print axioms
  MainDefectLowerTailBudget
#check
  joint_tail_of_dual_budgets
#print axioms
  joint_tail_of_dual_budgets
#check
  residual_tail_of_dual_budgets
#print axioms
  residual_tail_of_dual_budgets
#check
  estimate_of_dual_budgets
#print axioms
  estimate_of_dual_budgets
#check
  allReflected_main_defect_budget
#print axioms
  allReflected_main_defect_budget
#check
  allReflected_dual_budget_iff_joint_tail
#print axioms
  allReflected_dual_budget_iff_joint_tail
#check
  allReflected_dual_budget_iff_residual_tail
#print axioms
  allReflected_dual_budget_iff_residual_tail
#check
  estimate_of_actualReflected_dual_budget
#print axioms
  estimate_of_actualReflected_dual_budget
#check
  dualRemainder_original_fourier
#print axioms
  dualRemainder_original_fourier
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31ae79a86c62b7600934f1f6af8773fbe0a0ab2e469c39e79950633dfe81345c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/CertificateAudit/Variant7421872e0d8641464765e7346ee02e52cc37d47413e39ab32e9167411fc75dc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
