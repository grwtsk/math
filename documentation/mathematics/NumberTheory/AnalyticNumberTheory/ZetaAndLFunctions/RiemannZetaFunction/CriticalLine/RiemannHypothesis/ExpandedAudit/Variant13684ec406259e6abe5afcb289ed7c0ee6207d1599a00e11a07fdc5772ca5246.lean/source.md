# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c89b44eefd1c48aed13ac8f5f3fecfb33929759` · SHA-256 `13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeLedger
set_option linter.hashCommand false
#check RH16SquarefreeLedger.squarefreeLedgerCost
#print axioms RH16SquarefreeLedger.squarefreeLedgerCost
#check RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#print axioms RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#check RH16SquarefreeLedger.squarefreeResidualBudget
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget
#check RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#check RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#print axioms RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#check RH16SquarefreeLedger.estimate_of_readout_squarefree
#print axioms RH16SquarefreeLedger.estimate_of_readout_squarefree
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6219cab3771319875c38b53e8004cfe3a9021d08e46a0dcb44bbfce44f19ef38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExpandedAudit/Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
