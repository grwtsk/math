# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant64f23ba40a7b2edb879538d48fc636d8bb1de151bb4b7fef15bdf148f8ef0b46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d629274227e024037620501b4b4bc93dd606da9a` · SHA-256 `f2e8748a7d5cafb60adeaee64f84b784eb9e28dd6d6648b7161b69abcf991571`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInsideStripKernelUnbounded.Variantd5bbf1b8c52e994f46185f4a0cfa9e410bfb32ae6695abbd9b18377339d41136","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5bbf1b8c52e994f46185f4a0cfa9e410bfb32ae6695abbd9b18377339d41136","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualInsideStripKernelUnbounded.Variantd5bbf1b8c52e994f46185f4a0cfa9e410bfb32ae6695abbd9b18377339d41136","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d5bbf1b8c52e994f46185f4a0cfa9e410bfb32ae6695abbd9b18377339d41136","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualInsideStripKernelUnbounded-AllAnnotationAudit01/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualInsideStripKernelUnbounded

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInsideStripKernelUnbounded.Variantd5bbf1b8c52e994f46185f4a0cfa9e410bfb32ae6695abbd9b18377339d41136

set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
set_option pp.rawOnError false
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded.actualInsideStrip_sequence_scale_tendsto_zero
#print FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded.actualInsideStripKernel_eventually_below
#print FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded.actualInsideStripKernel_tendsto_atBot
#print FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded.actualInsideStripKernel_below_beyond
#print FormalResearch.RiemannHypothesis.ActualInsideStripKernelUnbounded.actualInsideStripKernel_no_eventual_lower_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1dca20161fb9430654d3b3d14d0af6fcbc0f12a0250418538b4384e75ce57a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProofsOrdinary/Variant64f23ba40a7b2edb879538d48fc636d8bb1de151bb4b7fef15bdf148f8ef0b46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
