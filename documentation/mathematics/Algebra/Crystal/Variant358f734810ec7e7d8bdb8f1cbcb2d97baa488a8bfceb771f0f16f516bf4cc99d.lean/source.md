# Complete source: GRWTSK.Algebra.Crystal.Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33e227f091f646da0135f2b1a462f3486b0f5843` · SHA-256 `358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.CrystallineTensor.CrystallineSite
import Folder.CrystallineTensor.Crystal

/-!
# Folder.Theorem.CrystallineTensor.Crystal

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline site and crystal contract exposure facts.
Ontology: proof.crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace Crystal

theorem thickening_has_nilpotent_ideal
    (T : Folder.CrystallineTensor.InfinitesimalThickening) :
    T.nilpotentIdeal :=
  Folder.CrystallineTensor.thickening_has_nilpotent_ideal T

theorem crystalline_cover_is_cover
    {C : Folder.CrystallineTensor.CrystallineSite}
    {X : C.Site.Obj}
    (U : Folder.CrystallineTensor.CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  Folder.CrystallineTensor.crystalline_cover_is_cover U

theorem crystal_has_compatibility
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.crystalCompatibility :=
  Folder.CrystallineTensor.crystal_has_compatibility F

theorem crystal_has_infinitesimal_rigidity
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.infinitesimalRigidity :=
  Folder.CrystallineTensor.crystal_has_infinitesimal_rigidity F

end Crystal
end CrystallineTensor
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d7305c9a96d5f325b9bdd9e1d9f9bfe49ea47bc5c46f7d320af055fff93d74c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Crystal/Variant358f734810ec7e7d8bdb8f1cbcb2d97baa488a8bfceb771f0f16f516bf4cc99d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
