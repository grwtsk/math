# Witt Valued Index — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5117828122d47753fd84b4a9b54f60c01fb4e580` · SHA-256 `9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.Theorem.CrystallineIndex.WittValuedIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-valued index contract facts.
Ontology: proof.crystalline_index.witt_valued_index
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittValuedIndex

theorem witt_index_represents_operator_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W) :
    I.representsOperatorIndex :=
  Folder.CrystallineIndex.witt_index_represents_operator_index I

theorem witt_index_has_witt_element
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W) :
    ∃ x : Folder.CrystallineIndex.WittElement W, x = I.index :=
  Folder.CrystallineIndex.witt_index_has_witt_element I

end WittValuedIndex
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b3835377d5224c859dd1daa15103f263ee73a6c2950f77c727de4e4a4676115 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittValuedIndex/Variant9890546e1ea3c6af3e80856f9b3a9ebb4cede4909c7a594cabc0256f3cbea363.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
