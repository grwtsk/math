# Proofs Ordinary Namespaced Edition120 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd2f0afd71cd8423bff405f6a7a255800712356a` · SHA-256 `dd12a2419bbeb878c244afef66c1f03acfadd4f447b2418e40dd6a97eed25433`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEarlyLowerBound.Variant5eeb4bf61e8f51a75a1932fd605c6030413054c9cde1f77811a9620bcba1935a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eeb4bf61e8f51a75a1932fd605c6030413054c9cde1f77811a9620bcba1935a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualEarlyLowerBound.Variant5eeb4bf61e8f51a75a1932fd605c6030413054c9cde1f77811a9620bcba1935a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5eeb4bf61e8f51a75a1932fd605c6030413054c9cde1f77811a9620bcba1935a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/independent-early-lower/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualEarlyLowerBound

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualEarlyLowerBound.Variant5eeb4bf61e8f51a75a1932fd605c6030413054c9cde1f77811a9620bcba1935a

set_option autoImplicit false
set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.normalizedTest_deriv_integrable
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.reflectedTest_hasDerivAt
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_deriv_eq_convolution
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_deriv_contDiff
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_contDiff_two
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_deriv_hasDerivAt_integral
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_second_deriv_eq_integral
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_second_deriv_integrand_integrable
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_second_deriv_abs_le_energy
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_second_deriv_abs_le_coefficient
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_deriv_increment_bound
#print FormalResearch.RiemannHypothesis.SourceCorrelationCurvature.sourceCorrelation_linear_taylor_bound
#print RH16IndependentChallengeNext.actualCriticalWeight_upper_curvature
#print RH16IndependentChallengeNext.actualEarlyDerivative_lower_curvature
#print RH16IndependentChallengeNext.complementaryEarlyBaseline_lower_curvature_endpoint
#print RH16IndependentChallengeNext.complementaryEarlyBaseline_lower_neg_scale_sub_four
#print RH16IndependentChallengeNext.complementaryEarlyBaseline_add_scale_abs_le_seven
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9241f294bd44427d3abec95133c075ab3844ef6d86dfa8a23a15359851c4a0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProofsOrdinary/Variante72d9332ccce075a4978c7f2ebc703f947bb1df29e52df92e4328cb0c4efb529.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
