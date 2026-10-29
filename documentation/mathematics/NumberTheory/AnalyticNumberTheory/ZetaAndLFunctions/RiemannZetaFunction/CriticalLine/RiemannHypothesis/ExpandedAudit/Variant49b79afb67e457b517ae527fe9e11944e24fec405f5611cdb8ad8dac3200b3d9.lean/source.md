# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant49b79afb67e457b517ae527fe9e11944e24fec405f5611cdb8ad8dac3200b3d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9308ffed617b7477bb27cea0ed23bb0c59883b8` · SHA-256 `b6f11d1f3cc443dce336e0ccb2b52fc2c100dd44842bacd1653d68f9769380ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","mathematical_subject":"Foundations.Unclassified","original_sha256":"13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-ledger/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeLedger

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeLedger.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c72042b1bc5b94801b5665d2e7f60e1b6b4c218735e73544051499cb1c20435 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExpandedAudit/Variant49b79afb67e457b517ae527fe9e11944e24fec405f5611cdb8ad8dac3200b3d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
