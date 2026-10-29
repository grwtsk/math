# Canonical edge-product enclosure

The enclosing volume needed by the quartic packing endpoint is not an extra conjectural object.

For consecutive edge vectors u and v,

GramVolume
 = ||u||^2 ||v||^2 - <u,v>^2
 <= ||u||^2 ||v||^2.

Thus define the canonical enclosure of one packing stage as the product of the two edge squared norms.

For the structured quartic source define

C_n
 = axialEdgeProduct_n
   + 3 transverseEdgeProduct_n.

Both summands are nonnegative and stagewise

Q_n <= C_n.

Therefore the endpoint certificate no longer needs an independently supplied enclosure or containment theorem.

The remaining source problem has been reduced to a scale-only asymptotic package:

- choose r_n>=0 from the arithmetic/test source;
- prove r_n A_n -> L>0;
- prove r_n T_n -> the same L;
- prove r_n C_n -> 0.

Those three asymptotic facts now suffice for RH through the volume-packing endpoint.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb13a6f3cdbf2c987fab06fc07f6642b1a772e61b6818003fc51c39c4f8e40b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
