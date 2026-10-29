# Source Inverse Square Endpoint Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27727500e9659b53a747759e80aeea1408f9d73c` · SHA-256 `4b06bd4aa81de142c3747dc24c1ee9597c2436220d2df22cdd89b486ebbd395f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceInverseSquareEndpointConsumer

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourceInverseSquareEndpointConsumer

#check closed_upper_atom_weight_zero
#print axioms closed_upper_atom_weight_zero
#check inverse_square_at_two
#print axioms inverse_square_at_two
#check shifted_full_primitive_at_first_atom
#print axioms shifted_full_primitive_at_first_atom
#check shifted_second_primitive_at_first_atom
#print axioms shifted_second_primitive_at_first_atom
#check primitiveDensity_eq_inverse_square
#print axioms primitiveDensity_eq_inverse_square
#check centeredCriticalPrimitive_eq_lower_integral
#print axioms centeredCriticalPrimitive_eq_lower_integral
#check actualCesaroPrimitive_eq_inverse_square_double
#print axioms actualCesaroPrimitive_eq_inverse_square_double
#check shifted_full_primitive_first_component_applied
#print axioms shifted_full_primitive_first_component_applied
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e13b1ee865aa03b5e6a446d2a9c7986d090a202dcd5cb4d3048d0ba5175aa84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceInverseSquareEndpointAudit/Variant4b06bd4aa81de142c3747dc24c1ee9597c2436220d2df22cdd89b486ebbd395f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
