# Audit Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a3ecd82d584aec2eebca4340012cca2038192c8` · SHA-256 `f65d6ba126d9a43d1c833feb90f11e08085713bb2ac52c61bbf01e2649d38c49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitivePrimeInteraction

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

#check @primitiveCorrelationZero
#print axioms primitiveCorrelationZero
#check @primitiveCorrelationOne
#print axioms primitiveCorrelationOne
#check @primitiveCorrelationTwo
#print axioms primitiveCorrelationTwo
#check @primitive_mixed_second_integrals
#print axioms primitive_mixed_second_integrals
#check @sourceCorrelation_eq_primitive_filter
#print axioms sourceCorrelation_eq_primitive_filter
#check @firstPrimeMoment_eq_primitive_filter
#print axioms firstPrimeMoment_eq_primitive_filter
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26da32d42a47657ef9011788082b8c4a1ceaaa45558db37b1b4e856b2d8e7f1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Audit/Variantf65d6ba126d9a43d1c833feb90f11e08085713bb2ac52c61bbf01e2649d38c49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
