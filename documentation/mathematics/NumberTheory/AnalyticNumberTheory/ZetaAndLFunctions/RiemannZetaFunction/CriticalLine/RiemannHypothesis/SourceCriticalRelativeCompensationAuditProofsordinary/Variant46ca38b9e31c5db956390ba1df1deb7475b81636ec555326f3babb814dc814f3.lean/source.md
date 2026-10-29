# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalRelativeCompensationAuditProofsordinary.Variant46ca38b9e31c5db956390ba1df1deb7475b81636ec555326f3babb814dc814f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b9f6631dfa58b88deb09d441051bcac2a837ade` · SHA-256 `46ca38b9e31c5db956390ba1df1deb7475b81636ec555326f3babb814dc814f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalRelativeCompensation
set_option autoImplicit false
set_option linter.style.longLine false
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_sum_eq_residual
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_finite_integrable
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_finite_stieltjes
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_full_integrable
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_full_stieltjes
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.psiLogKernel
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.baselineLogKernel
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_log_kernel_eq
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_log_integrable
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_log_stieltjes
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.actualPsi_kernel_decomposition
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.baselineLogKernel_integrable
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.criticalWeight_zero_above
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.baselineLogKernel_integral
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.mertensResidual_eq_criticalRelative_add_baseline
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.residual_sub_criticalRelative_abs_lt_one
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.mertensResidual_lt_criticalRelative_of_six_le
#print FormalResearch.RiemannHypothesis.SourceCriticalRelativeCompensation.estimate_of_criticalRelative_tail_radius_ge_six
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d9be8e650ab536df39d20152f2fa9fe8f54d0bc87dbae05e0415c894c95833c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalRelativeCompensationAuditProofsordinary/Variant46ca38b9e31c5db956390ba1df1deb7475b81636ec555326f3babb814dc814f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
