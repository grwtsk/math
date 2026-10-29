# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrerequisiteHeaderProbe.Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12399579d4e7468093ca2c46a0cf2646eb0e5cc8` · SHA-256 `48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSampling
import SourceExactSamplingTail
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed4fcde2f1e8f528f1b99c7b1a858a2d9f53d5318b9d5e93f7dc03b0854a027a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrerequisiteHeaderProbe/Variant48725c9170ec4675c565d0a5b39c15862b8de125b9b6edb123728f04ecea0fc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
