# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalAudit.Variant225a0363c02b1cb2c252651a7bef5d87d6529b2f26c41dbd9d5eda018ce605c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4836909aa7778f4d2112e7c07e6cd5eb0b7a9cfc` · SHA-256 `3c988cbd7ec137326fe1083052ba5a844efb72664a66281d98bd092352393341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","mathematical_subject":"Analysis.Integration","original_sha256":"476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/reciprocal_audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.Analysis.ReciprocalKernel

namespace GRWTSK.Analysis.RealAnalysis.Integration.ReciprocalKernel.Variant476814e9f1c81cce40cd7a1952d0f3f04789798c0985bb91cfd439b2d7bcbe9b

open FormalResearch.Analysis.ReciprocalKernel MeasureTheory Set
#check kernel_integrable
#check kernel_integral_quarter
#check sum_bounds
#check frequency_sum_bounds
#print axioms kernel_zero_sum
#print axioms kernel_integrable
#print axioms kernel_integral_quarter
#print axioms sum_bounds
#print axioms frequency_sum_bounds
example : (∑' n : ℕ, kernel 0 (n + 1 / 4)) = 0 := kernel_zero_sum _
example (b : ℝ) : IntegrableOn (kernel b) (Ioi (1 / 4)) :=
  kernel_integrable b (1 / 4) (by norm_num)
example : kernel 1 (1 / 4) = 64 / 17 := by norm_num [kernel]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e40b1b08cdc4ae5060c3a697c7579c1d4aa7bec3b31d719c15e8042f7097fbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ReciprocalAudit/Variant225a0363c02b1cb2c252651a7bef5d87d6529b2f26c41dbd9d5eda018ce605c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
