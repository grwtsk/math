import Folder.CrystallineTensor.HeatCompatibleEndomorphism

/-!
# Folder.Theorem.CrystallineTensor.HeatCompatibleEndomorphism

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports heat-action and heat-compatible-endomorphism contract facts.
Ontology: proof.crystalline.heat_compatible_endomorphism
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace HeatCompatibleEndomorphism

theorem heat_flow_identity_at_zero
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.identityAtZero :=
  Folder.CrystallineTensor.heat_flow_identity_at_zero H

theorem heat_flow_semigroup
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (H : Folder.CrystallineTensor.HeatFlowAction F) :
    H.semigroupLaw :=
  Folder.CrystallineTensor.heat_flow_semigroup H

theorem heat_compatible_commutes
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e) :
    E.commutesWithHeat :=
  Folder.CrystallineTensor.heat_compatible_commutes E

theorem heat_compatible_preserves_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (E : Folder.CrystallineTensor.HeatCompatibleEndomorphism H e)
    (nabla : Folder.CrystallineTensor.Connection F)
    (X : C.Site.Obj)
    (s : F.Section X)
    (h : nabla.horizontal X s) :
    nabla.horizontal X (e.map X s) :=
  Folder.CrystallineTensor.heat_compatible_preserves_horizontal E nabla X s h

end HeatCompatibleEndomorphism
end CrystallineTensor
end Theorem
end Folder
