import Mathematics.MobiusOntology.RobustObservation

/-!
# Continuation-relative behavioral equivalence

The continuation family is a declared finite carrier.  Equality of all its
observations is an equivalence relation and remains separate from metric
threshold proximity.
-/

namespace Mathematics.MobiusOntology

universe u v w

structure ContinuationProfile
    (State : Type u) (Continuation : Type v) (Label : Type w)
    [Fintype Continuation] where
  observe : Continuation → State → Label

def BehaviorallyEquivalent
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    (left right : State) : Prop :=
  ∀ continuation,
    profile.observe continuation left =
      profile.observe continuation right

theorem behaviorallyEquivalent_equivalence
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :
    Equivalence (BehaviorallyEquivalent profile) := by
  refine ⟨?_, ?_, ?_⟩
  · intro point continuation
    rfl
  · intro left right equal continuation
    exact (equal continuation).symm
  · intro left middle right leftMiddle middleRight continuation
    exact (leftMiddle continuation).trans (middleRight continuation)

def behavioralSetoid
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :
    Setoid State where
  r := BehaviorallyEquivalent profile
  iseqv := behaviorallyEquivalent_equivalence profile

structure BehaviorTransitionCongruence
    {State : Type u} {NextState : Type v}
    {Continuation Label : Type w}
    [Fintype Continuation]
    (source : ContinuationProfile State Continuation Label)
    (target : ContinuationProfile NextState Continuation Label)
    (transition : State → NextState) : Prop where
  preserves :
    ∀ {left right},
      BehaviorallyEquivalent source left right →
        BehaviorallyEquivalent target
          (transition left) (transition right)

structure BehaviorTwistInvariance
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    (twist : State → State) : Prop where
  preserves :
    ∀ {left right},
      BehaviorallyEquivalent profile left right →
        BehaviorallyEquivalent profile (twist left) (twist right)

theorem behavior_transition_congruence
    {State : Type u} {NextState : Type v}
    {Continuation Label : Type w}
    [Fintype Continuation]
    {source : ContinuationProfile State Continuation Label}
    {target : ContinuationProfile NextState Continuation Label}
    {transition : State → NextState}
    (certificate :
      BehaviorTransitionCongruence source target transition)
    {left right : State}
    (equivalent : BehaviorallyEquivalent source left right) :
    BehaviorallyEquivalent target
      (transition left) (transition right) :=
  certificate.preserves equivalent

theorem behavior_twist_invariant
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    {profile : ContinuationProfile State Continuation Label}
    {twist : State → State}
    (certificate : BehaviorTwistInvariance profile twist)
    {left right : State}
    (equivalent : BehaviorallyEquivalent profile left right) :
    BehaviorallyEquivalent profile (twist left) (twist right) :=
  certificate.preserves equivalent

end Mathematics.MobiusOntology
