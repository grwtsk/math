# History — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3b189ceb52645f741b135790827c87ca19a048d` · SHA-256 `d246e1134e8a7c4ce10287747ce94d7e86352d5697314eea039c9d5a551375d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.History

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.history
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure History (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  eventCount : ObservableField presheaf.F Nat

end Sheaf
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26559dd433c306d89d416e97dab74db27666b0231d9d7dab8b6e8fc57cb14a19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/History/Variantd246e1134e8a7c4ce10287747ce94d7e86352d5697314eea039c9d5a551375d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
