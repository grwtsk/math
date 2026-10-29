# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticBoundaryBridge.Variant4cab7300b4ae2f3623cfa47a2595f4ac29f8926180c79747749e186cf3c5f905

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ced488e7338945d00bca2e41429973380b8430d` · SHA-256 `4cab7300b4ae2f3623cfa47a2595f4ac29f8926180c79747749e186cf3c5f905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.ArithmeticBoundaryBridge

/-!
# Folder.Theorem.DerivedSheaf.ArithmeticBoundaryBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports arithmetic-to-K-index bridge facts, not BinaryMatrix data.
Ontology: derived.arithmetic_k_index_bridge
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem arithmetic_bridge_supports_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    B.arithmeticDataSupportsKIndex :=
  Folder.DerivedSheaf.arithmetic_bridge_supports_k_index B

theorem arithmetic_bridge_has_k_index
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.ArithmeticKTheoryIndexBridge M) :
    ∃ I : Folder.DerivedSheaf.KTheoryIndex M, I = B.index :=
  Folder.DerivedSheaf.arithmetic_bridge_has_k_index B

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc26bfa06b5b29c1e17c3ec835530eb675fa2111d9d263c3f46f63f709a5271c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArithmeticBoundaryBridge/Variant4cab7300b4ae2f3623cfa47a2595f4ac29f8926180c79747749e186cf3c5f905.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
