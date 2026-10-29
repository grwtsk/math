# Expanded Audit Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `407606a30400a284512bdb75c10ddc2fbf80d520` · SHA-256 `4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFourNineSampling
set_option linter.hashCommand false
#check RH16FourNineSampling.shortLog_error_le_of_sampling_error_four_nine
#print axioms RH16FourNineSampling.shortLog_error_le_of_sampling_error_four_nine
#check RH16FourNineSampling.shortPlain_error_uniform_le_of_sampling_error_four_nine
#print axioms RH16FourNineSampling.shortPlain_error_uniform_le_of_sampling_error_four_nine
#check RH16FourNineSampling.actual_shortLog_error_tail_four_nine
#print axioms RH16FourNineSampling.actual_shortLog_error_tail_four_nine
#check RH16FourNineSampling.actual_shortPlain_error_tail_four_nine
#print axioms RH16FourNineSampling.actual_shortPlain_error_tail_four_nine
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c15f8d3ede52849456151952d882bf303da42808029bf1e3dfca7a77499aec11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExpandedAudit/Variant4a0bf26759747be2095408dc8d440d055086e20f21bbf7afc50783ebcd569da8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
