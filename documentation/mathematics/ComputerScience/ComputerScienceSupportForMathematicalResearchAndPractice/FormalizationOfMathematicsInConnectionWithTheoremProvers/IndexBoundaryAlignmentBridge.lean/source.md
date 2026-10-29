# Index Boundary Alignment Bridge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9877e5535a769cab2cfed3aeb99f2f44cee25393` · SHA-256 `9b6137d8cb631524d8ee5c5f731baae36fdd6653466593c1057ced15d38f498f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

/-!
# Folder.Theorem.CrystallineIndex.IndexBoundaryAlignmentBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the nonzero-index boundary-alignment composition theorem.
Ontology: proof.crystalline_index.index_boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexBoundaryAlignmentBridge

theorem critical_line_from_nonzero_crystalline_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {Hflow : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    {N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T}
    (B : @Folder.CrystallineIndex.IndexToBoundaryAlignmentBridge C F nabla Hflow e D H T N) :
    Folder.AdelicInfinityTopos.AllZerosOnCriticalLine
      B.tensorBoundary.alignmentContract :=
  Folder.CrystallineIndex.IndexBoundaryAlignmentBridge.critical_line_from_nonzero_crystalline_index B

end IndexBoundaryAlignmentBridge
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc218816796767bcb2e66ac704e348c3c7eef1d282f9abb031eabe62b986fc05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexBoundaryAlignmentBridge/Variant9b6137d8cb631524d8ee5c5f731baae36fdd6653466593c1057ced15d38f498f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
