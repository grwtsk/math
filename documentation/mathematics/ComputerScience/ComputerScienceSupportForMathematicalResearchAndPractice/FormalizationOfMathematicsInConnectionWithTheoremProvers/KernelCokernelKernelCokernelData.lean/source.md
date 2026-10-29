# Kernel Cokernel Kernel Cokernel Data — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99371d0bfc8e8404f7ad158afe3d1ed80b3ecd17` · SHA-256 `32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CrystallineDirac

/-!
# Folder.CrystallineIndex.KernelCokernel

Radiation role: research-boundary
BinaryMatrix spine: This module records abstract kernel/cokernel data, not finite BinaryMatrix rank computation.
Ontology: crystalline_index.kernel_cokernel
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure KernelCokernelData
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla) where
  Kernel : Type _
  Cokernel : Type _
  kernelFinite : Prop
  kernelFinite_certified : kernelFinite
  cokernelFinite : Prop
  cokernelFinite_certified : cokernelFinite
  kernelDimension? : Option Int
  cokernelDimension? : Option Int

theorem kernel_finite
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (K : KernelCokernelData D) :
    K.kernelFinite :=
  K.kernelFinite_certified

theorem cokernel_finite
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (K : KernelCokernelData D) :
    K.cokernelFinite :=
  K.cokernelFinite_certified

end CrystallineIndex
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0de8136e3ea53a8a91320a58e51f2f6bf050f5958769c5c1960df514108f17f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/KernelCokernel/Variant32453d0f128d36e195017d9a5283cd7eac3d47f44e05aba25f4e8df516595667.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
