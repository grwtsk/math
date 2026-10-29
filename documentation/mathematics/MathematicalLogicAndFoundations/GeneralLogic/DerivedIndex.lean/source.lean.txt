import Folder.DerivedSheaf.EulerCharacteristic

/-!
# Folder.DerivedSheaf.DerivedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module represents derived indices, not BinaryMatrix counts.
Ontology: derived.derived_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure DerivedIndex where
  complex : SectionComplex
  euler : EulerCharacteristic complex
  interpretsAsIndex : Prop
  interpretsAsIndex_certified : interpretsAsIndex
  sourceLabel : String

theorem derived_index_interprets_as_index
    (I : DerivedIndex) :
    I.interpretsAsIndex :=
  I.interpretsAsIndex_certified

theorem derived_index_has_euler_characteristic
    (I : DerivedIndex) :
    ∃ chi : EulerCharacteristic I.complex, chi = I.euler :=
  ⟨I.euler, rfl⟩

end DerivedSheaf
end Folder
