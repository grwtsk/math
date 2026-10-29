import Mathematics.Resolution.Checker
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finset.Card

/-!
# Exactly-once generation frequencies

Frequency is a natural-valued scheduling coordinate.  It carries no theorem
authority.
-/

namespace Mathematics.Resolution

universe u v w

def InvocationCut.frequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    (obligation : Obligation) :
    Nat :=
  (cut.events.filter fun event ↦
    cut.canonicalize event = obligation).card

theorem InvocationCut.frequency_positive
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event)
    {obligation : Obligation}
    (required : obligation ∈ cut.obligations) :
    0 < cut.frequency obligation := by
  apply Finset.card_pos.mpr
  refine ⟨cut.seed obligation, ?_⟩
  exact Finset.mem_filter.mpr
    ⟨cut.seed_mem obligation required,
      cut.seed_target obligation required⟩

theorem committed_event_replay_idempotent
    [DecidableEq Event]
    {events : Finset Event}
    {event : Event}
    (committed : event ∈ events) :
    insert event events = events :=
  Finset.insert_eq_of_mem committed

structure FrequencyWeight where
  numerator : Nat
  denominator : Nat
  denominator_positive : 0 < denominator
  deriving Repr

def totalFrequency
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (cut : InvocationCut Obligation Proof Event) :
    Nat :=
  ∑ obligation ∈ cut.obligations, cut.frequency obligation

end Mathematics.Resolution
