import Mathematics.Federation.ProjectFiber

/-! # Proof-bearing bridges between project fibers -/

namespace Mathematics.Federation

universe u v

/-- Exact two-sided bridge; construction requires both inverse laws. -/
structure ExactBridge (Source : Type u) (Target : Type v) where
  bridgeId : StableId
  forward : Source → Target
  backward : Target → Source
  leftInverse : Function.LeftInverse backward forward
  rightInverse : Function.RightInverse backward forward
  certificateDigest : Digest

namespace ExactBridge

theorem forward_injective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Injective bridge.forward :=
  bridge.leftInverse.injective

theorem forward_surjective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Surjective bridge.forward :=
  bridge.rightInverse.surjective

end ExactBridge

end Mathematics.Federation
