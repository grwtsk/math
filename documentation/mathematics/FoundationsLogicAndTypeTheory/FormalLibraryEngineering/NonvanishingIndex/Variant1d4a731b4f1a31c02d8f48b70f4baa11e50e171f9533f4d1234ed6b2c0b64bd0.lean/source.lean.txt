import Folder.CrystallineIndex.IndexTheoremContract
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.CrystallineIndex.NonvanishingIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records nonvanishing index contracts, not BinaryMatrix zero detection.
Ontology: crystalline_index.nonvanishing_index
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Supplied nonvanishing data for an index theorem contract.

Nonzero index alone does not prove critical-line behavior.
-/
structure NonvanishingIndex
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) where
  nonzeroIndex : Prop
  nonzeroIndex_certified : nonzeroIndex
  nonzeroCharacteristicClass : Prop
  nonzeroCharacteristicClass_certified : nonzeroCharacteristicClass
  nonzeroForcesKernel? : Prop
  nonzeroForcesKernel_certified? : nonzeroForcesKernel?

namespace NonvanishingIndex

theorem nonvanishing_index_nonzero
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) :
    N.nonzeroIndex :=
  N.nonzeroIndex_certified

theorem nonvanishing_index_forces_kernel_if_supplied
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) :
    N.nonzeroForcesKernel? :=
  N.nonzeroForcesKernel_certified?

end NonvanishingIndex

structure NonvanishingWittIndex
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) where
  nonzero : I.Nonzero
  nonzeroForcesKernel? : Prop
  nonzeroForcesFixedTensor? : Prop

theorem nonvanishing_witt_index_nonzero
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    {I : WittValuedCrystallineIndex D W}
    (N : NonvanishingWittIndex I) :
    I.Nonzero :=
  N.nonzero

end CrystallineIndex
end Folder
