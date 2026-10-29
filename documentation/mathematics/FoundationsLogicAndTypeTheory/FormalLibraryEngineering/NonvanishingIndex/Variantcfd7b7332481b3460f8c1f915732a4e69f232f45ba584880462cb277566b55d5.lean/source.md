# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NonvanishingIndex.Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `befe49608e19525720cd21af5b65c9aef647117c` · SHA-256 `cfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.NonvanishingIndex

/-!
# Folder.Theorem.CrystallineIndex.NonvanishingIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports nonvanishing-index contract facts.
Ontology: proof.crystalline_index.nonvanishing_index
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace NonvanishingIndex

theorem nonvanishing_index_nonzero
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    (N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T) :
    N.nonzeroIndex :=
  Folder.CrystallineIndex.NonvanishingIndex.nonvanishing_index_nonzero N

theorem nonvanishing_index_forces_kernel_if_supplied
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    (N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T) :
    N.nonzeroForcesKernel? :=
  Folder.CrystallineIndex.NonvanishingIndex.nonvanishing_index_forces_kernel_if_supplied N

theorem nonvanishing_witt_index_nonzero
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    {I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W}
    (N : Folder.CrystallineIndex.NonvanishingWittIndex I) :
    I.Nonzero :=
  Folder.CrystallineIndex.nonvanishing_witt_index_nonzero N

end NonvanishingIndex
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a5cb0d4e5206221f3de3ae1388218758700cb10d7f198cc351878dbfdb7ecb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NonvanishingIndex/Variantcfd7b7332481b3460f8c1f915732a4e69f232f45ba584880462cb277566b55d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
