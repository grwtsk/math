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
