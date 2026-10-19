import Folder.CrystallineTensor.CrystallineSite
import Folder.AdelicInfinityTopos.SpectrumObject

/-!
# Folder.CrystallineTensor.Crystal

Radiation role: research-boundary
BinaryMatrix spine: This module records crystal-style section compatibility, not a BinaryMatrix carrier.
Ontology: crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Contract-level crystal data over an abstract crystalline-site boundary.

The compatibility and rigidity facts are supplied as certificates; this module
does not formalize crystalline cohomology.
-/
structure Crystal
    (C : CrystallineSite) where
  Section : C.Site.Obj → Type _
  restriction :
    ∀ {X Y : C.Site.Obj},
      C.Site.Hom Y X → Section X → Section Y
  crystalCompatibility : Prop
  crystalCompatibility_certified : crystalCompatibility
  infinitesimalRigidity : Prop
  infinitesimalRigidity_certified : infinitesimalRigidity
  label : String

theorem crystal_has_compatibility
    {C : CrystallineSite}
    (F : Crystal C) :
    F.crystalCompatibility :=
  F.crystalCompatibility_certified

theorem crystal_has_infinitesimal_rigidity
    {C : CrystallineSite}
    (F : Crystal C) :
    F.infinitesimalRigidity :=
  F.infinitesimalRigidity_certified

end CrystallineTensor
end Folder
