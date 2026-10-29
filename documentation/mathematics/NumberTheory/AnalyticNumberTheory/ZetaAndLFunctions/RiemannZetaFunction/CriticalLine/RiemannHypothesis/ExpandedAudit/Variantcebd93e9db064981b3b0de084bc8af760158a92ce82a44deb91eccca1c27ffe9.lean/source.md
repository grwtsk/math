# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `791d2bd057775021b319ec18ade3f290d725145a` · SHA-256 `cebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeSampling
set_option linter.hashCommand false
#check RH16SquarefreeSampling.reciprocalSqrtSum
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum
#check RH16SquarefreeSampling.mobius_four_mul_zero
#print axioms RH16SquarefreeSampling.mobius_four_mul_zero
#check RH16SquarefreeSampling.reciprocalSqrtSum_upper_unit
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum_upper_unit
#check RH16SquarefreeSampling.reciprocalSqrtSum_lower_next
#print axioms RH16SquarefreeSampling.reciprocalSqrtSum_lower_next
#check RH16SquarefreeSampling.squarefreeWeightSum
#print axioms RH16SquarefreeSampling.squarefreeWeightSum
#check RH16SquarefreeSampling.squarefreeWeightSum_subtract_four
#print axioms RH16SquarefreeSampling.squarefreeWeightSum_subtract_four
#check RH16SquarefreeSampling.squarefreeWeightSum_three_halves
#print axioms RH16SquarefreeSampling.squarefreeWeightSum_three_halves
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=526a9500c840ffa58d1859c8bbc69154b726affa4cf3de218238e60363ea8530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExpandedAudit/Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
