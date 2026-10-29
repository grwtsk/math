# Composite — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4950d0b75a3af6cf6ade8c82140bd9cf345b4bbe` · SHA-256 `325771fdd5256cb5a96bc6744f4afbf9bbcc89f4578a0ae21e51c5e63e269a71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Stack.Composite

/-!
# Folder.Theorem.Stack.Composite

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes stack-interface facts for composite carrier layers.
Ontology: proof.stack.composite
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Stack

theorem composite_layer_stack_has_carrier
    (S : Folder.Stack.CompositeLayerStack) :
    S.cellCarrier = S.cellCarrier :=
  Folder.Stack.composite_layer_stack_has_carrier S

end Stack
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd38f38748731d29fdaea8ba70c91c0c0831311dfd7409112082babd9407eb2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composite/Variant325771fdd5256cb5a96bc6744f4afbf9bbcc89f4578a0ae21e51c5e63e269a71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
