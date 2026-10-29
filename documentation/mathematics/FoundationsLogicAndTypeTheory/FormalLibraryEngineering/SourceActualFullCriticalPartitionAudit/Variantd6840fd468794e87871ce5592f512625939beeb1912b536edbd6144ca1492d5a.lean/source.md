# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartitionAudit.Variantd6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cd261734c4d3462f3a997290f6112b673808f66` · SHA-256 `d6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFullCriticalPartition
import Lean
set_option pp.all true
set_option pp.maxDepth 100000
set_option pp.maxSteps 1000000
#check @RH16ActualFullCriticalPartition.actualFullCriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullCriticalContribution
#check @RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#check @RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#print axioms RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#check @RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#print axioms RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#check @RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#print axioms RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#check @RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
#print axioms RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
run_cmd do
  let env ← Lean.getEnv
  for name in env.allImportedModuleNames do
    Lean.logInfo m!"HEADER {name}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ab639e81e68fc065ecc849f45c7616f835cfe2665e665138052c0cc5de6b1eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SourceActualFullCriticalPartitionAudit/Variantd6840fd468794e87871ce5592f512625939beeb1912b536edbd6144ca1492d5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
