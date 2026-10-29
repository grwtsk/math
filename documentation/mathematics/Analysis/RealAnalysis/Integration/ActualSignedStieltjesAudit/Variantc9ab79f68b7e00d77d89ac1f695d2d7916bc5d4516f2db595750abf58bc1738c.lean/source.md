# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualSignedStieltjesAudit.Variantc9ab79f68b7e00d77d89ac1f695d2d7916bc5d4516f2db595750abf58bc1738c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26ebaa07e42b664cbc3bac225c7fb9929cbb5b38` · SHA-256 `c9ab79f68b7e00d77d89ac1f695d2d7916bc5d4516f2db595750abf58bc1738c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualSignedStieltjes

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check ContinuousResearch.ActualSignedStieltjes.signedCoefficient
#print axioms ContinuousResearch.ActualSignedStieltjes.signedCoefficient
#check ContinuousResearch.ActualSignedStieltjes.signedCoefficient_zero
#print axioms ContinuousResearch.ActualSignedStieltjes.signedCoefficient_zero
#check ContinuousResearch.ActualSignedStieltjes.signedCoefficient_pos
#print axioms ContinuousResearch.ActualSignedStieltjes.signedCoefficient_pos
#check ContinuousResearch.ActualSignedStieltjes.signedCoefficient_one
#print axioms ContinuousResearch.ActualSignedStieltjes.signedCoefficient_one
#check ContinuousResearch.ActualSignedStieltjes.cumulative_eq
#print axioms ContinuousResearch.ActualSignedStieltjes.cumulative_eq
#check ContinuousResearch.ActualSignedStieltjes.cumulative_eq_intFloor
#print axioms ContinuousResearch.ActualSignedStieltjes.cumulative_eq_intFloor
#check ContinuousResearch.ActualSignedStieltjes.weighted_sum_eq
#print axioms ContinuousResearch.ActualSignedStieltjes.weighted_sum_eq
#check ContinuousResearch.ActualSignedStieltjes.actual_derivative_integrable_Icc
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_derivative_integrable_Icc
#check ContinuousResearch.ActualSignedStieltjes.actual_finite_signed_integrable
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_finite_signed_integrable
#check ContinuousResearch.ActualSignedStieltjes.actual_finite_stieltjes
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_finite_stieltjes
#check ContinuousResearch.ActualSignedStieltjes.actual_derivative_zero_above
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_derivative_zero_above
#check ContinuousResearch.ActualSignedStieltjes.actual_signed_integrable
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_signed_integrable
#check ContinuousResearch.ActualSignedStieltjes.actual_full_stieltjes
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_full_stieltjes
#check ContinuousResearch.ActualSignedStieltjes.signedLogKernel
#print axioms ContinuousResearch.ActualSignedStieltjes.signedLogKernel
#check ContinuousResearch.ActualSignedStieltjes.actual_log_kernel_eq
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_log_kernel_eq
#check ContinuousResearch.ActualSignedStieltjes.actual_log_signed_integrable
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_log_signed_integrable
#check ContinuousResearch.ActualSignedStieltjes.actual_log_stieltjes
#print axioms ContinuousResearch.ActualSignedStieltjes.actual_log_stieltjes
set_option pp.proofs true
#print ContinuousResearch.ActualSignedStieltjes.signedCoefficient
#print ContinuousResearch.ActualSignedStieltjes.signedCoefficient_zero
#print ContinuousResearch.ActualSignedStieltjes.signedCoefficient_pos
#print ContinuousResearch.ActualSignedStieltjes.signedCoefficient_one
#print ContinuousResearch.ActualSignedStieltjes.cumulative_eq
#print ContinuousResearch.ActualSignedStieltjes.cumulative_eq_intFloor
#print ContinuousResearch.ActualSignedStieltjes.weighted_sum_eq
#print ContinuousResearch.ActualSignedStieltjes.actual_derivative_integrable_Icc
#print ContinuousResearch.ActualSignedStieltjes.actual_finite_signed_integrable
#print ContinuousResearch.ActualSignedStieltjes.actual_finite_stieltjes
#print ContinuousResearch.ActualSignedStieltjes.actual_derivative_zero_above
#print ContinuousResearch.ActualSignedStieltjes.actual_signed_integrable
#print ContinuousResearch.ActualSignedStieltjes.actual_full_stieltjes
#print ContinuousResearch.ActualSignedStieltjes.signedLogKernel
#print ContinuousResearch.ActualSignedStieltjes.actual_log_kernel_eq
#print ContinuousResearch.ActualSignedStieltjes.actual_log_signed_integrable
#print ContinuousResearch.ActualSignedStieltjes.actual_log_stieltjes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e00c6456012ee99d33a5350c2fbd9b24426890ebdd185ab62a8c361445dcbe80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualSignedStieltjesAudit/Variantc9ab79f68b7e00d77d89ac1f695d2d7916bc5d4516f2db595750abf58bc1738c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
