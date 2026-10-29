import Folder.Sheaf.Basic

/-!
# Folder.Morphism.Descent

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.descent
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Morphism

open CategoryTheory

universe u v w

structure Descent (C : Type u) [Category.{v} C] where
  source : Sheaf.Presheaf.{u, v, w} C
  target : Sheaf.Presheaf.{u, v, w} C
  localAgreement : Prop
  glues : localAgreement → Prop

end Morphism
end Folder
