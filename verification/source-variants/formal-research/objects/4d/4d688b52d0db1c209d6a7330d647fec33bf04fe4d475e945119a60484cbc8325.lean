import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.Permission

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.permission
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Sheaf

open CategoryTheory

universe u v w

structure Permission (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  level : ObservableField presheaf.F Nat

end Sheaf
end Folder
