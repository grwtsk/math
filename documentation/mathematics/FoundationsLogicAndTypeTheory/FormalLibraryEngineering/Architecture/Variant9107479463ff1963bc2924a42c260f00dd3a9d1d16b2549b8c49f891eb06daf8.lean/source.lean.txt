module

public import Surface.Core

/-!
# Canonical architecture audit

These executable guards and proof-level checks exercise the authority boundary
inside the canonical target.
-/

public section

namespace Surface.Audit

open Core

@[surface_novel, surface_published]
theorem every_patch_preserves_theorem_task
    (patch : ProofPatch)
    (task : TheoremTask) :
    patch.applyTask task = task := by
  simp

@[surface_novel, surface_published]
theorem legal_phase_steps_advance
    {a b : ProofPhase} (step : PhaseStep a b) :
    a.rank < b.rank :=
  step.rank_strict

end Surface.Audit
