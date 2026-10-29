# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualMixedInwardPositiveReview.Variant9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eff3b226334f1a8bf03f2efaf7d1691554cc7e1a` · SHA-256 `9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualMixedInwardPositive
open RH16ActualMixedInwardPositive
#print actual_mixed_inward_right
#print axioms actual_mixed_inward_right
#print actual_mixed_inward_left
#print axioms actual_mixed_inward_left
#print actual_source_ge_outward_right
#print axioms actual_source_ge_outward_right
#print actual_source_ge_outward_left
#print axioms actual_source_ge_outward_left

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8e5fd88cc4cf7fdea96c8ff6a2732283de2317972408ed111202fd77b2dc984 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositiveReview/Variant9ed707483591b665ee26d6ceb147267db780b2a393a4fcf44954f2b82a1bb784.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
