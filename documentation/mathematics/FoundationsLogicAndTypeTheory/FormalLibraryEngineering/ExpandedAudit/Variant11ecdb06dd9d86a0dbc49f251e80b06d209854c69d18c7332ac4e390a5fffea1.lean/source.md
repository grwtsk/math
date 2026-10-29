# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExpandedAudit.Variant11ecdb06dd9d86a0dbc49f251e80b06d209854c69d18c7332ac4e390a5fffea1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04dcc32d8f97cd7c30ae4d357b0bf8b3d38bc306` · SHA-256 `11ecdb06dd9d86a0dbc49f251e80b06d209854c69d18c7332ac4e390a5fffea1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFullCriticalPartition
import Lean
#check RH16ActualFullCriticalPartition.actualFullCriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullCriticalContribution
#check RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#check RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#print axioms RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#check RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#print axioms RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#check RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#print axioms RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#check RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
#print axioms RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ea13309963871f7f42404b026bd3c6dbb71aeae9b0ccca158030c5cc48fe0c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExpandedAudit/Variant11ecdb06dd9d86a0dbc49f251e80b06d209854c69d18c7332ac4e390a5fffea1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
