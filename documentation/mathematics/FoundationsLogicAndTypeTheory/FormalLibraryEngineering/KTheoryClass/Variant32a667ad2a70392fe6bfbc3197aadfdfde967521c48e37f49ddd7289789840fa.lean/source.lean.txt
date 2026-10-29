import Folder.Basic

/-!
# Folder.DerivedSheaf.KTheoryClass

Radiation role: research-boundary
BinaryMatrix spine: This module records K-theory class data, not BinaryMatrix carriers.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure KTheorySpace where
  Base : Type _
  Class : Type _
  zero : Class
  add : Class → Class → Class
  neg : Class → Class
  label : String

structure KTheoryClass
    (K : KTheorySpace) where
  value : K.Class
  label : String

def KTheoryClass.IsZero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  x.value = K.zero

def KTheoryClass.Nonzero
    {K : KTheorySpace}
    (x : KTheoryClass K) : Prop :=
  ¬ x.IsZero

theorem ktheory_class_has_value
    {K : KTheorySpace}
    (x : KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  ⟨x.value, rfl⟩

end DerivedSheaf
end Folder
