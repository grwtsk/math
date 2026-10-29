import Folder.CrystallineTensor.FixedTensor

/-!
# Folder.Theorem.CrystallineTensor.FixedTensor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports fixed tensor projection facts.
Ontology: proof.crystalline.fixed_tensor
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace FixedTensor

theorem fixed_tensor_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    nabla.horizontal X T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_horizontal T

theorem fixed_tensor_is_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.FixedTensor nabla e X) :
    e.map X T.tensor.underlyingSection =
      T.tensor.underlyingSection :=
  Folder.CrystallineTensor.fixed_tensor_is_fixed T

end FixedTensor
end CrystallineTensor
end Theorem
end Folder
