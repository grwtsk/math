# Index Class — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67f6992de2e86f7e39c27f597bcedb49706bfb8f` · SHA-256 `25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.IndexClass

/-!
# Folder.Theorem.CrystallineIndex.IndexClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-class contract exposure facts.
Ontology: proof.crystalline_index.index_class
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexClass

theorem index_class_represents_formal_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (I : Folder.CrystallineIndex.CrystallineIndexClass D H) :
    I.representsFormalIndex :=
  Folder.CrystallineIndex.index_class_represents_formal_index I

theorem crystalline_index_class_in_witt_is_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.CrystallineIndexClassInWitt D W) :
    I.isCrystallineIndex :=
  Folder.CrystallineIndex.crystalline_index_class_in_witt_is_index I

end IndexClass
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=088d30ad4d5ab44437269dcb818e33d5ad54ed93b85783f85b5563e45e219b41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant25f075e24c268631fbca84f9b40cf36774cb97503b521535bb58d654c6524e30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
