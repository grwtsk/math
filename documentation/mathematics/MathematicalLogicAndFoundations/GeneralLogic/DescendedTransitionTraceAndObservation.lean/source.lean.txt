/-
DescendedTransitionTraceAndObservation - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7
Organized SHA-256: a03607a4971b1b6b11455260e403e30a7638c9e76f885a93c4e0036d4795d1d4
PMD: 510.0.070.020.080.020 quotient elimination (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Descended input transition, trace execution and observation with exact congruence/compatibility proofs (next9). Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.ObservableRecursion
import Mathlib.Data.Quot
import Mathlib.Logic.Equiv.Defs
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variant8cc1ad83113e89b6.ParameterizedFutureTraceQuotient

/-!
# Causal states and realized future behaviors

Two states are causally equivalent when every future input word produces the
same observation at every resolution.  This is a future-trace equivalence, not
merely equality of the current observation.  It is stable under every input
transition, so both transition and observation descend to the quotient.

The quotient is equivalent to the **image** of the behavior map: only future
behaviors actually realized by a state occur.  It need not be equivalent to
the unrestricted dependent function space of all possible traces.  These
causal classes are relative to the selected observer family: adding another
observer may refine the quotient.  Causal equivalence does not imply equality
of the underlying states, and equality of only the current observation is
sufficient only when its kernel is stable under every transition.  These
results do not assert reversibility, finite cardinality, minimal executable
representations, observer-factor relationships, homological structure, or
diffusion properties.
-/

namespace ObservableRecursion

universe uI uS uR uO

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Causal equivalence is a congruence for every input transition. -/
theorem causalEquivalent_step
    (M : System Input State Resolution)
    {x y : State}
    (input : Input)
    (h : M.CausalEquivalent x y) :
    M.CausalEquivalent (M.step input x) (M.step input y) := by
  intro inputs ρ
  simpa only [run_cons] using h (input :: inputs) ρ

/-- The transition induced on causal classes by one input. -/
def causalStep
    (M : System Input State Resolution)
    (input : Input) :
    M.CausalState → M.CausalState :=
  Quotient.map (M.step input)
    (fun _ _ h => M.causalEquivalent_step input h)

@[simp]
theorem causalStep_toCausal
    (M : System Input State Resolution)
    (input : Input)
    (x : State) :
    M.causalStep input (M.toCausal x) =
      M.toCausal (M.step input x) :=
  rfl

/-- Run an input word directly on causal classes. -/
def runCausal
    (M : System Input State Resolution)
    (inputs : List Input)
    (state : M.CausalState) : M.CausalState :=
  match inputs with
  | [] => state
  | input :: rest => M.runCausal rest (M.causalStep input state)

@[simp]
theorem runCausal_toCausal
    (M : System Input State Resolution)
    (inputs : List Input)
    (x : State) :
    M.runCausal inputs (M.toCausal x) =
      M.toCausal (M.run inputs x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      simp only [runCausal, causalStep_toCausal, run_cons]
      exact ih (M.step input x)

/-- Causal equivalence in particular identifies every current observation. -/
theorem causalEquivalent_observe
    (M : System Input State Resolution)
    {x y : State}
    (h : M.CausalEquivalent x y)
    (ρ : Resolution) :
    M.observe ρ x = M.observe ρ y := by
  simpa only [run_nil] using h [] ρ

/-- Observation is well defined on causal equivalence classes. -/
def causalObserve
    (M : System Input State Resolution)
    (ρ : Resolution) :
    M.CausalState → M.Observation ρ :=
  Quotient.lift (M.observe ρ)
    (fun _ _ h => M.causalEquivalent_observe h ρ)

@[simp]
theorem causalObserve_toCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    M.causalObserve ρ (M.toCausal x) = M.observe ρ x :=
  rfl

/-- Descended execution has exactly the observation of concrete execution. -/
theorem causalObserve_runCausal
    (M : System Input State Resolution)
    (inputs : List Input)
    (ρ : Resolution)
    (x : State) :
    M.causalObserve ρ (M.runCausal inputs (M.toCausal x)) =
      M.observe ρ (M.run inputs x) := by
  rw [runCausal_toCausal, causalObserve_toCausal]

end System

end ObservableRecursion

/-!
The public `CausalObservation` namespace re-exports the same declarations for
the stable, topic-oriented API.  These are namespace aliases, not a second
quotient construction; method notation such as `M.CausalState` continues to
refer to `ObservableRecursion.System.CausalState`.
-/
