module

public meta import Surface.Core.Classification
public import Surface.Refactor.PrimeLatticePlan
public import Surface.Core.GoalGraph

/-!
# Closed-loop PrimeLattice scheduler

This is a Mealy-style deterministic planning surface.  Observations may change
which task is attempted next, but neither observations nor scheduler outputs
carry Lean theorem authority.  Kernel authority remains available only
through the existing proof-bearing verification and receipt types.
-/

public section

namespace Surface.Refactor

/-- Closed-loop observe/advance machinery with no proof or authority field. -/
@[surface_novel]
structure PrimeLatticeScheduler where
  State : Type
  Observation : Type
  observe : State → Observation
  advance : State → Observation → State

namespace PrimeLatticeScheduler

/-- One deterministic feedback tick. -/
@[expose]
def tick (scheduler : PrimeLatticeScheduler) :
    scheduler.State → scheduler.State :=
  fun state ↦ scheduler.advance state (scheduler.observe state)

@[surface_novel, surface_published]
theorem tick_eq_observe_then_advance
    (scheduler : PrimeLatticeScheduler) (state : scheduler.State) :
    scheduler.tick state =
      scheduler.advance state (scheduler.observe state) :=
  rfl

end PrimeLatticeScheduler

/-- Typed observations useful to a generator.  Every field is diagnostic or
planning data; none asserts that a proposition has been proved. -/
@[surface_novel]
structure PrimeLatticeObservation where
  unresolvedGoalIds : List Surface.Core.GoalCellId
  importFailures : List String
  axiomClosureChanges : List String
  packetScaleObligations : List String
  geometricSideConditions : List String
  gramDiagnostics : List String
  projectFingerprint : ContentHash256
  sourceFingerprint : ContentHash256
deriving Repr

/-- A deterministic scheduler output is explicitly planning authority. -/
@[expose]
def primeLatticeSchedulerAuthority : RefactorAuthority := .deterministic

@[surface_novel, surface_published]
theorem primeLattice_scheduler_not_kernel_authority :
    primeLatticeSchedulerAuthority ≠ .leanKernelChecked := by
  intro h
  cases h

end Surface.Refactor
