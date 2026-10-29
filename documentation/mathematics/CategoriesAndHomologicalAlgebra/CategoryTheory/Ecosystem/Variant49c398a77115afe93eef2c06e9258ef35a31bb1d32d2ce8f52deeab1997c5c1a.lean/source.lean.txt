import Think.Logic.Mathlib.GeometricMorphism

namespace Think.Logic.MathlibEcosystem

structure ThinkMathlibEcosystem where
  Log : Type u
  Inf : Type u
  Site : Type u
  Kn : Type u

  logCategory : CategoryTheory.Category.{v} Log
  infCategory : CategoryTheory.Category.{v} Inf
  siteCategory : CategoryTheory.Category.{v} Site
  knCategory : CategoryTheory.Category.{v} Kn

  infMonoidal : CategoryTheory.MonoidalCategory Inf

  logicLayer : @LogicLayer Log logCategory
  informationLayer : @InformationLayer Inf infCategory infMonoidal
  epistemology : @EpistemicArchitecture Log Inf logCategory infCategory
  knowledgeTopology : @KnowledgeTopology Site siteCategory
  wisdom : @WisdomMonad Kn knCategory

  ecosystemHash : String
  mathlibBoundaryHash : String
  claimBearing : Bool

def ThinkMathlibEcosystem.noVisualAuthority
    (E : ThinkMathlibEcosystem) : Prop :=
  E.claimBearing = true

end Think.Logic.MathlibEcosystem
