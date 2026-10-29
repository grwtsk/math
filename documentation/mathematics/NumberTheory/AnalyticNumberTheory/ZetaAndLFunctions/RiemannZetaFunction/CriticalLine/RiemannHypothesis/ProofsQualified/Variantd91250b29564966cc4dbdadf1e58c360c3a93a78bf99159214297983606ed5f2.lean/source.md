# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsQualified.Variantd91250b29564966cc4dbdadf1e58c360c3a93a78bf99159214297983606ed5f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ce900717d9c309e7c759892c02fb12b764bfeaf` · SHA-256 `28e8663e2451f1451c3db10923c0324cc09c9379352a9ac74b39a9976ec63020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.Variant543d70750b90469376c952bf93d9d5cf63614168e79e7d12846e0c66b27f3433","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"543d70750b90469376c952bf93d9d5cf63614168e79e7d12846e0c66b27f3433","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCriticalCovarianceNormalizedDecay.Variant543d70750b90469376c952bf93d9d5cf63614168e79e7d12846e0c66b27f3433","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"543d70750b90469376c952bf93d9d5cf63614168e79e7d12846e0c66b27f3433","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-critical-covariance-normalized-independent/ProofsQualified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCriticalCovarianceNormalizedDecay

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.Variant543d70750b90469376c952bf93d9d5cf63614168e79e7d12846e0c66b27f3433

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualCriticalKernel_edge_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualCriticalErrorCovariance_late_edge_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarlyBudget
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarly_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalEarlyBudget_tendsto_zero
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance_abs_le
#print FormalResearch.RiemannHypothesis.ActualCriticalCovarianceNormalizedDecay.actualNormalizedCriticalCovariance_tendsto_zero
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa50491bb86782ef9692d06bfe8c7b30c36ce8ea41b989e550a28b7e7b01aaf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProofsQualified/Variantd91250b29564966cc4dbdadf1e58c360c3a93a78bf99159214297983606ed5f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
