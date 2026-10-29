# Endpoint Monotonicity Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b90428ac9774d65b03a1d53ea76998aaf92fef` · SHA-256 `042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.mertens.EndpointMonotonicity
set_option pp.universes true
set_option pp.explicit true
#check @EndpointMonotonicityScratch.endpoint_scaled_bounds
#print axioms EndpointMonotonicityScratch.endpoint_scaled_bounds
#check @EndpointMonotonicityScratch.normalizedInterior_factor
#print axioms EndpointMonotonicityScratch.normalizedInterior_factor
#check @EndpointMonotonicityScratch.normalizedInteriorDerivative_factor
#print axioms EndpointMonotonicityScratch.normalizedInteriorDerivative_factor
#check @EndpointMonotonicityScratch.normalizedTest_endpoint_nonneg
#print axioms EndpointMonotonicityScratch.normalizedTest_endpoint_nonneg
#check @EndpointMonotonicityScratch.normalizedTest_derivative_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.normalizedTest_derivative_endpoint_nonpos
#check @EndpointMonotonicityScratch.endpoint_product_signs
#print axioms EndpointMonotonicityScratch.endpoint_product_signs
#check @EndpointMonotonicityScratch.sourceCorrelation_endpoint_nonneg
#print axioms EndpointMonotonicityScratch.sourceCorrelation_endpoint_nonneg
#check @EndpointMonotonicityScratch.sourceCorrelation_derivative_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.sourceCorrelation_derivative_endpoint_nonpos
#check @EndpointMonotonicityScratch.correlationDifference_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.correlationDifference_endpoint_nonpos
#check @EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos
#print axioms EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e1bdecb7e01fbf7467d7df62f685c64cbb8d1db0dee385fa52b5cc57046dc01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EndpointMonotonicityAudit/Variant042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
