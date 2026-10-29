# Relation Planes — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b32eabf6cf86efc785a670467905f7f56ccc02b` · SHA-256 `fea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix
import Mathematics.Export.Project
import URSMContracts

/-!
# Project relation surface

The bridge accepts explicit finite relations.  It does not infer exact bridges
from similarity or convert missing conflict analysis into a negative bit.
-/

namespace URSM.Bridge

open URSM.Contracts

structure CompositeRelations (n : Nat) where
  imports : BitMatrix n n
  transport : BitMatrix n n
  exactBridge : BitMatrix n n
  conflict : BitMatrix n n
  propertyNaturality : BitMatrix n n
  exactBridgeSymmetric :
    ∀ i j, exactBridge i j = exactBridge j i
  conflictSymmetric :
    ∀ i j, conflict i j = conflict j i
  exactBridgeImpliesTransport :
    ∀ i j, exactBridge i j = true →
      transport i j = true ∧ transport j i = true

def formalPlane
    (descriptor : PlaneDescriptor)
    (matrix : BitMatrix n n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ matrix i j = true) :=
  FormalPlane.ofBits descriptor matrix certificateRoot

end URSM.Bridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e1576a8c40f982c7d754abad7c709ed4f9d3465b2bfc0985af84443beebf186 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RelationPlanes/Variantfea1b7f84801e33c12d75849d6ddfd148ce6e13fb4ffc5c140f06e84e30fbc68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
