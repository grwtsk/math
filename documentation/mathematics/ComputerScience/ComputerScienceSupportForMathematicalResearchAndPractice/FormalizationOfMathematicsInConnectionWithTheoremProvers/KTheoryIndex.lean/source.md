# KTheory Index — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `037f7eeed557ad8dd3f977c4b900e8f1c11660ad` · SHA-256 `962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.Theorem.DerivedSheaf.KTheoryIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory index facts, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_index_class_of_perfect_complex
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    I.classOfPerfectComplex :=
  Folder.DerivedSheaf.ktheory_index_class_of_perfect_complex I

theorem ktheory_index_has_class
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    ∃ c : Folder.DerivedSheaf.KTheoryClass M.K, c = I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_has_class I

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f5e37e159c3d24d437dd18d7eca9696d57870095233f3e9c8d3dc3d22a4e15b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KTheoryIndex/Variant962e802f3e121a01f7bcc4f1a2880bc3b6a7648c051417eb7cb588717c110899.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
