# Graph — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a30662a2628acf01e3b47406f1eb92e9c1639b6` · SHA-256 `a183d9dadc936d3c029589519cbf8b74301432b89df157d9acc4f01f9d429ae5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Graph

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.graph
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Graph (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  vertexCount : ObservableField presheaf.F Nat
  edgeCount : ObservableField presheaf.F Nat

end Sheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=995e67ea9d1b6aeae1551ec13ad087fb922e528a723c1055018c3ee58e6324d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Graph/Varianta183d9dadc936d3c029589519cbf8b74301432b89df157d9acc4f01f9d429ae5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
