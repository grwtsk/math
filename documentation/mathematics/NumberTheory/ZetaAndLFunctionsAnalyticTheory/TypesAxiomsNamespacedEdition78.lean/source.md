# Types Axioms Namespaced Edition78 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc28ae857139ce18ccc1846313f1a290c1f14f1b` · SHA-256 `87fcdfc4a3f60bf8fdc31e51392122c133d3ceed7570d0f6d8bf74bbb8d9eb2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.Variantc2086d535d45e67970c9186cc31d05b5eb103b215c0c55200789189f9e1448b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2086d535d45e67970c9186cc31d05b5eb103b215c0c55200789189f9e1448b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualXiErrorCriticalCovariance.Variantc2086d535d45e67970c9186cc31d05b5eb103b215c0c55200789189f9e1448b5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c2086d535d45e67970c9186cc31d05b5eb103b215c0c55200789189f9e1448b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-error-critical-covariance/TypesAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiErrorCriticalCovariance

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.Variantc2086d535d45e67970c9186cc31d05b5eb103b215c0c55200789189f9e1448b5

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.fullNames true
set_option pp.explicit true
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualMangoldtErrorConvolution_absolutelyContinuous
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualMangoldtErrorConvolution_absolutelyContinuous
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualMangoldtErrorConvolution_ae_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualMangoldtErrorConvolution_ae_hasDerivAt
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolutionReturnTest
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolutionReturnTest
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolutionReturnTest
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolutionReturnTest
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolutionReturnTest_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolutionReturnTest_hasDerivAt
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolutionReturnTest_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolutionReturnTest_hasDerivAt
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolution_return
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualHalfConvolution_return
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolution_return
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualOneConvolution_return
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionReturn_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionReturn_intervalIntegrable
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionLowerHead
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionLowerHead
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionLowerHead_eq_closed_traces
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolutionLowerHead_eq_closed_traces
#check FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolution_difference_return
#print axioms FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance.actualErrorConvolution_difference_return
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81a16ca253a171fde633d23bdd1364bd6f208af86e285301c71116857ca7cc62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TypesAxioms/Variantd43b58b49a4fb6059d3f99cabe13eba554ee8dd90fc010236ddd49dd8fee1511.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
