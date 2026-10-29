# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9bReductionAudit.Variantbb3feda269af878f80fec44490c4b683b41e8b10f502ef0754a44f23cc6491a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26a5ee3d019f569b3c8346afd6ce74979a546ed6` · SHA-256 `833121043a19841c3ff12a9a2bb23dd1257d703d0f788cbaf94d53572ed9318d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankThreeReduction.Variant401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailRankThreeReduction.Variant401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/40/401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b--ReductionAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankThreeReduction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankThreeReduction.Variant401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9b

#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalize_first_row
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalize_first_row
#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalized_eq_differences
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalized_eq_differences
#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalized_eq_secants
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.det_fin_three_normalized_eq_secants
#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.oriented_plucker_three_scalar
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.oriented_plucker_three_scalar
#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.oriented_plucker_three
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.oriented_plucker_three
#print FormalResearch.RiemannHypothesis.ThetaPositiveLift.normalized_det_nonpos_of_antitone_deriv_ratio
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.normalized_det_nonpos_of_antitone_deriv_ratio
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4610d09e5e0a20f0cea9150b112e12142aa67e55205ee862b742aae43e0a774b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/401b67d75f5fc947d5fa58659a2a1b1197d199846d8bb2724b57b03b013c8b9bReductionAudit/Variantbb3feda269af878f80fec44490c4b683b41e8b10f502ef0754a44f23cc6491a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
