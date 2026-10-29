# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variantdac294c7e3dfbcd05057ac79b5dbfb4182ac8e9fd7e34fb724ca313efd790528

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95a0a27e035c287552afb72b71f51d67f9bb418c` · SHA-256 `1125207c5782dcfbbbcc08857de3044391603877e4ce3a2f0f57435b3000183e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","mathematical_subject":"Foundations.Unclassified","original_sha256":"cebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-squarefree-sampling/fresh-replay/ExpandedAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSquarefreeSampling

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSquarefreeSampling.Variantcebd93e9db064981b3b0de084bc8af760158a92ce82a44deb91eccca1c27ffe9

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3011c545c8737e4fb5fc35a8fc81da68c0866fa3524ae421b0df7b6ef415802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ExpandedAudit/Variantdac294c7e3dfbcd05057ac79b5dbfb4182ac8e9fd7e34fb724ca313efd790528.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
