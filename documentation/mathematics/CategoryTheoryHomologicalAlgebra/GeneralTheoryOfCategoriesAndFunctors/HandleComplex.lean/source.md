# Handle Complex — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95e7317bf3534184eff4a0a24048931d9d96f3a0` · SHA-256 `aea36122f15af467ecea65517d4035ebad302708df1a1421b19338b8fcdb7860`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.DerivedSheaf.HandleComplex

/-!
# Folder.Theorem.DerivedSheaf.HandleComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports handle-complex facts, not BinaryMatrix data.
Ontology: derived.handle_complex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

open CategoryTheory

universe u v w

theorem handle_complex_has_section_complex
    {C : Type u}
    [Category.{v} C]
    (H : Folder.DerivedSheaf.HandleComplex C) :
    ∃ S : Folder.DerivedSheaf.SectionComplex, S = H.sectionComplex :=
  Folder.DerivedSheaf.handle_complex_has_section_complex H

theorem handle_complex_identity_compatible
    {C : Type u}
    [Category.{v} C]
    (H : Folder.DerivedSheaf.HandleComplex C) :
    H.compatibleWithHandleIdentity :=
  Folder.DerivedSheaf.handle_complex_identity_compatible H

end DerivedSheaf
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=625f25ddc49002cb1db925148031d7341a0e1d849722dc5af65dff977bf83fb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HandleComplex/Variantaea36122f15af467ecea65517d4035ebad302708df1a1421b19338b8fcdb7860.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
