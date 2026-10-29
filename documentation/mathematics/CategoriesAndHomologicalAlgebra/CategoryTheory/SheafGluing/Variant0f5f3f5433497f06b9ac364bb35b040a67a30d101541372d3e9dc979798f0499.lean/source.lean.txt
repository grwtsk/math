import Folder.ResearchTopos.GrothendieckTopology
import Folder.ResearchTopos.SpectralTripleBridge

/-!
# Folder.ResearchTopos.SheafGluing

Radiation role: research-boundary
BinaryMatrix spine: This module stores sheaf-gluing contracts for local research-topos data.
Ontology: research_topos.sheaf_gluing
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure Presheaf
    (C : SiteCategory) where
  Section : C.Obj → Type _
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X → Section X → Section Y

structure SheafCondition
    {C : SiteCategory}
    (J : GrothendieckTopology C)
    (F : Presheaf C) where
  localCompatible : Prop
  gluesUniquely : localCompatible → Prop
  gluesUniquely_certified :
    ∀ h : localCompatible, gluesUniquely h

structure RodgersTaoGluingContract
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    (F : Presheaf C) where
  zeroDynamics : Type _
  localEquilibriumSuppliesCompatibility : Prop
  sheafCondition : SheafCondition J F

theorem sheaf_glues_from_compatibility
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : Presheaf C}
    (S : SheafCondition J F)
    (h : S.localCompatible) :
    S.gluesUniquely h :=
  S.gluesUniquely_certified h

end ResearchTopos
end Folder
