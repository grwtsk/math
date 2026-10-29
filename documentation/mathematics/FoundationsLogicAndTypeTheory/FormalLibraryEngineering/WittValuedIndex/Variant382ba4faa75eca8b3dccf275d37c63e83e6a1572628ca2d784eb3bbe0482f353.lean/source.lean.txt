import Folder.CrystallineIndex.WittComplex
import Folder.CrystallineIndex.SheafSpectrumOperator
import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.CrystallineIndex.WittValuedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt-valued indices, not integer BinaryMatrix invariants.
Ontology: crystalline_index.witt_valued_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

open AdelicInfinityTopos
open ResearchTopos

/--
The crystalline index of a sheaf-spectrum operator as an element of a Witt
complex.

This is the central type for the index in this layer.
-/
structure WittValuedCrystallineIndex
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  index : WittElement W
  representsOperatorIndex : Prop
  representsOperatorIndex_certified : representsOperatorIndex
  kernelCokernelData? : Option Type
  sourceLabel : String

def WittValuedCrystallineIndex.Nonzero
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) : Prop :=
  I.index.Nonzero

theorem witt_index_represents_operator_index
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    I.representsOperatorIndex :=
  I.representsOperatorIndex_certified

theorem witt_index_has_witt_element
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    ∃ x : WittElement W, x = I.index :=
  ⟨I.index, rfl⟩

end CrystallineIndex
end Folder
