# Source Physical Endpoint Convolution Review — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cf3d4beb527aff3959a30470f1b19a35f24d991` · SHA-256 `1d29150815dc3b5d2bfbe4c6a9471ecca62300e72ca59080b7d715275f277b02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePhysicalEndpointConvolution
open FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
#print primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
#print axioms primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
#print sourceCorrelation_eq_normalizedOverlap_filter
#print axioms sourceCorrelation_eq_normalizedOverlap_filter
#print endpointQ
#print axioms endpointQ
#print endpointPolynomial
#print axioms endpointPolynomial
#print sourceCorrelation_endpoint_eq_polynomial
#print axioms sourceCorrelation_endpoint_eq_polynomial
#print endpointPolynomial_eq_convolution
#print axioms endpointPolynomial_eq_convolution
#print sourceCorrelation_endpoint_eq_convolution
#print axioms sourceCorrelation_endpoint_eq_convolution

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6b1d197c3ec08e7deb9d6f1939036aee28e916407d576997438b326ec77d74f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SourcePhysicalEndpointConvolutionReview/Variant1d29150815dc3b5d2bfbe4c6a9471ecca62300e72ca59080b7d715275f277b02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
