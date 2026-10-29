# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexBoundaryAlignmentBridge.Variantfc5501beb8ea2b13b1291e02a6c9c7d8cc520b7bcbca23c232b554b5f6730956

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40c9745e566b9062d434633732e399a6f5e8fdf4` · SHA-256 `fc5501beb8ea2b13b1291e02a6c9c7d8cc520b7bcbca23c232b554b5f6730956`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.BoundaryAlignmentBridge
import Folder.CrystallineIndex.IndexFixedTensorBridge

/-!
# Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied index and boundary bridges, not BinaryMatrix critical-line data.
Ontology: crystalline_index.index_boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Full bridge from nonzero crystalline index data to the existing adelic
critical-line conclusion.

The theorem is contract composition. Nonzero index does not imply critical-line
behavior without this explicit bridge data.
-/
structure IndexToBoundaryAlignmentBridge
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) where
  indexFixedTensor :
    @IndexToFixedTensorBridge C F nabla Hflow e D H T N
  tensorBoundary :
    @CrystallineTensor.FixedTensorToBoundaryAlignmentBridge C F nabla Hflow e
      indexFixedTensor.fixedPointContract
  nonzeroIndex :
    N.nonzeroIndex

namespace IndexBoundaryAlignmentBridge

theorem critical_line_from_nonzero_crystalline_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    {N : @NonvanishingIndex C F nabla D H T}
    (B : @IndexToBoundaryAlignmentBridge C F nabla Hflow e D H T N) :
    AdelicInfinityTopos.AllZerosOnCriticalLine
      B.tensorBoundary.alignmentContract :=
  B.tensorBoundary.alignmentConclusion

end IndexBoundaryAlignmentBridge

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f192cf363f7b8c9682cb4ec6c3d6159afffe66d62a55417020a9e53c3939873d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexBoundaryAlignmentBridge/Variantfc5501beb8ea2b13b1291e02a6c9c7d8cc520b7bcbca23c232b554b5f6730956.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
