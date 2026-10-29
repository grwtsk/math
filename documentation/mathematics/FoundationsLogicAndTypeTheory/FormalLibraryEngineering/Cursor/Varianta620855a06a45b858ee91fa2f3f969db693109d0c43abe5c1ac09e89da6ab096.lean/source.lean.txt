/-! # Monotone outcome and replaceable-view cursors -/

namespace URSM.Network

structure OutcomeCursor where
  value : Nat
  deriving DecidableEq, Repr

structure ViewRevision where
  value : Nat
  deriving DecidableEq, Repr

structure ResumePoint where
  outcome : OutcomeCursor
  view : ViewRevision
  deriving DecidableEq, Repr

def OutcomeCursor.Advances
    (previous next : OutcomeCursor) : Prop :=
  previous.value < next.value

def ViewRevision.Reaches
    (previous next : ViewRevision) : Prop :=
  previous.value ≤ next.value

theorem outcome_advance_irreflexive
    (cursor : OutcomeCursor) :
    ¬ cursor.Advances cursor := by
  simp [OutcomeCursor.Advances]

theorem view_reaches_reflexive
    (revision : ViewRevision) :
    revision.Reaches revision := by
  simp [ViewRevision.Reaches]

end URSM.Network
