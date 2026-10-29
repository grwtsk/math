import Think.Logic.Mathlib.Ecosystem

namespace Think.Logic.MathlibEcosystem

structure InformationCoherencePolicy
    (Inf : Type u) [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf] where
  associatorIsoHash : String
  leftUnitorIsoHash : String
  rightUnitorIsoHash : String
  symmetryIsoHash : String
  coherenceTacticReceiptHash : String
  usesStrictTensorEquality : Bool
  claimBearing : Bool

def InformationCoherencePolicy.accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) : Prop :=
  P.usesStrictTensorEquality = false ∧ P.claimBearing = false

theorem InformationCoherencePolicy.no_strict_tensor_equality_if_accepted
    {Inf : Type u} [CategoryTheory.Category.{v} Inf] [CategoryTheory.MonoidalCategory Inf]
    (P : InformationCoherencePolicy Inf) :
    P.accepted → P.usesStrictTensorEquality = false :=
by
  intro h
  exact h.left

end Think.Logic.MathlibEcosystem
