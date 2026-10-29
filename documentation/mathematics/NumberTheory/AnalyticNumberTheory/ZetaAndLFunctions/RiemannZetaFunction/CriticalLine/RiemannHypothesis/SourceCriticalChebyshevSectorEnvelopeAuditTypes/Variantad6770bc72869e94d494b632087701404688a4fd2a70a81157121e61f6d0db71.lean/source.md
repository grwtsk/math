# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelopeAuditTypes.Variantad6770bc72869e94d494b632087701404688a4fd2a70a81157121e61f6d0db71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d77abbb1fbec3b5c602c0ab4f897c23f7afb7b7` · SHA-256 `bf6d69cc842ea1f9b3a2013ae9ab16ef1b3f3e61966b0d0d7e429446f2226ec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.Varianta869fc57bcd1dfff3cbaca6d5394251fa7645368beb7224f6ad4005cecb7393e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a869fc57bcd1dfff3cbaca6d5394251fa7645368beb7224f6ad4005cecb7393e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCriticalChebyshevSectorEnvelope.Varianta869fc57bcd1dfff3cbaca6d5394251fa7645368beb7224f6ad4005cecb7393e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a869fc57bcd1dfff3cbaca6d5394251fa7645368beb7224f6ad4005cecb7393e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceCriticalChebyshevSectorEnvelopeAuditTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalChebyshevSectorEnvelope

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.Varianta869fc57bcd1dfff3cbaca6d5394251fa7645368beb7224f6ad4005cecb7393e

set_option autoImplicit false
set_option linter.style.longLine false
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualRelativePsiError_elementary_bounds
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualRelativePsiError_elementary_bounds
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.criticalKernel_eq_error_mul_baseline
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.criticalKernel_eq_error_mul_baseline
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalKernel_sector_upper
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalKernel_sector_upper
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalRelativePairing_le_sectorEnvelope
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.actualCriticalRelativePairing_le_sectorEnvelope
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.positiveCriticalWeightMass_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.positiveCriticalWeightMass_nonneg
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_ge_absoluteMass
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_ge_absoluteMass
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_linear_lower
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_linear_lower
#check FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_not_eventually_bounded
#print axioms FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope.chebyshevSectorEnvelope_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=593b803d3b27fd27e48bc3244d1af85fc3fcc56da08de32f58d81c1bb47c13d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAuditTypes/Variantad6770bc72869e94d494b632087701404688a4fd2a70a81157121e61f6d0db71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
