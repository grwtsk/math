# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KernelCokernel.Variantd76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd9a013e45343cff716922abe2f4a1775b0167d8` · SHA-256 `d76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.Theorem.CrystallineIndex.KernelCokernel

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports kernel/cokernel contract exposure facts.
Ontology: proof.crystalline_index.kernel_cokernel
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace KernelCokernel

theorem kernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.kernelFinite :=
  Folder.CrystallineIndex.kernel_finite K

theorem cokernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.cokernelFinite :=
  Folder.CrystallineIndex.cokernel_finite K

end KernelCokernel
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e39109fb3e485c65fa9c7f5b60a605c0a507b415868d706c60e3d67c0ff9554 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KernelCokernel/Variantd76349ead2d71237493311ba8aa19a937688926eac1d4ac73a5dab6a0b381345.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
