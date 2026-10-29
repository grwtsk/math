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
