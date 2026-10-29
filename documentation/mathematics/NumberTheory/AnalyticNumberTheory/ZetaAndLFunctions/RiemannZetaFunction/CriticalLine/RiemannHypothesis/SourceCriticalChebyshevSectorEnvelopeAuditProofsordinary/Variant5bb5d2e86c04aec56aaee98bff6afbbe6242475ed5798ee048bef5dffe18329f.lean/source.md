# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelopeAuditProofsordinary.Variant5bb5d2e86c04aec56aaee98bff6afbbe6242475ed5798ee048bef5dffe18329f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `670951e05339b6347e451c8845a99d8b279baa7e` · SHA-256 `6e544738ee2a6d21390b44f2445f5a95b4e6dcfae52f93e6a6dfe6a72c04c2fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.Variantba28729fc00a200388cae9b39e31d327a26f9a21b62a9b1e58671e0590f9f09b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba28729fc00a200388cae9b39e31d327a26f9a21b62a9b1e58671e0590f9f09b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCriticalChebyshevSectorEnvelope.Variantba28729fc00a200388cae9b39e31d327a26f9a21b62a9b1e58671e0590f9f09b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ba28729fc00a200388cae9b39e31d327a26f9a21b62a9b1e58671e0590f9f09b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceCriticalChebyshevSectorEnvelopeAuditProofsordinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalChebyshevSectorEnvelope

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.Variantba28729fc00a200388cae9b39e31d327a26f9a21b62a9b1e58671e0590f9f09b

set_option autoImplicit false
set_option linter.style.longLine false
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualRelativePsiError_elementary_bounds
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.criticalKernel_eq_error_mul_baseline
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalKernel_sector_upper
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalRelativePairing_le_sectorEnvelope
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.positiveCriticalWeightMass_nonneg
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_ge_absoluteMass
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_linear_lower
#print FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dde6b0561712a36b7b2a7b75480d438587f53f6595eed9b90d25970547ad1c88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAuditProofsordinary/Variant5bb5d2e86c04aec56aaee98bff6afbbe6242475ed5798ee048bef5dffe18329f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
