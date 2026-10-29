# Section Complex Graded Object Has Term — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef962392793485fc1a6d2bad2619f41ca674c51` · SHA-256 `610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.Theorem.DerivedSheaf.SectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived section-complex facts, not BinaryMatrix data.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem graded_object_has_term
    (G : Folder.DerivedSheaf.GradedObject)
    (n : Folder.DerivedSheaf.Degree) :
    ∃ T : Type _, T = G.term n :=
  Folder.DerivedSheaf.graded_object_has_term G n

theorem section_complex_d_squared_zero
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.d_comp_d_zero :=
  Folder.DerivedSheaf.section_complex_d_squared_zero C

theorem section_complex_bounded
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.bounded :=
  Folder.DerivedSheaf.section_complex_bounded C

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e152e7cf841e456ece473fb875c33c47972c4bba7f9ef7baf4b49f99681f0c44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SectionComplex/Variant610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
