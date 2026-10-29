# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SamplingInterfaces.Variant49d19c730a6065c61e02dea590207829c29058e0d35e6568c7effe8f395e3979

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b101c151747ac5c8ccd50cc08eeffefb5b63a304` · SHA-256 `2edfc8712191b959a343b9c7d814a983f1078f2febb906dfc330857726cb127c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","mathematical_subject":"Analysis.Integration","original_sha256":"7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/SamplingInterfaces.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.AbelSummation
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts

namespace GRWTSK.Analysis.RealAnalysis.Integration.AbelSummation.Variant7d467e57f20ad1660dd6b77bc90d2c7ee6462cc0c08b74c5cf8bbcf5624362a0

#check intervalIntegral.integral_mul_deriv_eq_deriv_mul
#check MeasureTheory.IntegrableOn.mul_continuousOn
#check ContinuousOn.mul_integrableOn
#check MeasureTheory.IntegrableOn.mul_continuousOn_of_subset
#check ContinuousOn.integrableOn_Icc
#check intervalIntegrable_iff_integrableOn_Icc_of_le
#check intervalIntegral.integral_sub
#check intervalIntegral.integral_congr
#check Finset.Icc_eq_cons_Ioc
#check Finset.card_Icc
#check Nat.card_Icc
#check ContDiff.continuous_deriv
#check ContDiff.differentiable
#check intervalIntegral.abs_integral_le_integral_abs
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20d96570fe5074a100414bd4958fd5678a873c80196bbc6e44af6aecafba262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SamplingInterfaces/Variant49d19c730a6065c61e02dea590207829c29058e0d35e6568c7effe8f395e3979.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
