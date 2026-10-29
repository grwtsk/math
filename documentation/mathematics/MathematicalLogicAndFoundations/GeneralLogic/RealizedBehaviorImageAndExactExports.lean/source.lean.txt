/-
RealizedBehaviorImageAndExactExports - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7
Organized SHA-256: a03607a4971b1b6b11455260e403e30a7638c9e76f885a93c4e0036d4795d1d4
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Behavior function, exact equality characterization, realized BehaviorImage and whole induced equivalence (last5), retaining the exact original CausalObservation export control block here only. Explicit same-source quotient+descended companions supply all exported declarations; no public umbrella admission. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.ObservableRecursion
import Mathlib.Data.Quot
import Mathlib.Logic.Equiv.Defs
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientPresentations.FiniteGraphAndObservationComponents.Variant8cc1ad83113e89b6.ParameterizedFutureTraceQuotient
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.QuotientElimination.FiniteGraphAndObservationComponents.Variant8cc1ad83113e89b6.DescendedTransitionTraceAndObservation

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

/-- A complete resolution-indexed future observation trace. -/
abbrev Behavior
    (M : System Input State Resolution) :=
  ∀ (_inputs : List Input) (ρ : Resolution), M.Observation ρ

/-- The future behavior realized by a concrete state. -/
def behavior
    (M : System Input State Resolution)
    (x : State) : M.Behavior :=
  fun inputs ρ => M.observe ρ (M.run inputs x)

/-- Causal equivalence is exactly equality of realized future behaviors. -/
theorem causalEquivalent_iff_behavior_eq
    (M : System Input State Resolution)
    (x y : State) :
    M.CausalEquivalent x y ↔ M.behavior x = M.behavior y := by
  constructor
  · intro h
    funext inputs ρ
    exact h inputs ρ
  · intro h inputs ρ
    exact congrFun (congrFun h inputs) ρ

/-- The subtype of future behaviors actually realized by states of `M`. -/
def BehaviorImage
    (M : System Input State Resolution) :=
  {b : M.Behavior // ∃ x : State, M.behavior x = b}

/-- Causal states correspond exactly to realized future behaviors. -/
noncomputable def causalStateEquivBehaviorImage
    (M : System Input State Resolution) :
    M.CausalState ≃ M.BehaviorImage where
  toFun := Quotient.lift
    (fun x => ⟨M.behavior x, ⟨x, rfl⟩⟩)
    (by
      intro x y h
      apply Subtype.ext
      exact (M.causalEquivalent_iff_behavior_eq x y).mp h)
  invFun b := M.toCausal (Classical.choose b.property)
  left_inv := by
    intro c
    refine Quotient.inductionOn c ?_
    intro x
    apply (M.toCausal_eq_iff _ _).mpr
    apply (M.causalEquivalent_iff_behavior_eq _ _).mpr
    exact Classical.choose_spec
      ((⟨M.behavior x, ⟨x, rfl⟩⟩ : M.BehaviorImage).property)
  right_inv := by
    intro b
    apply Subtype.ext
    exact Classical.choose_spec b.property

end System

end ObservableRecursion

/-!
The public `CausalObservation` namespace re-exports the same declarations for
the stable, topic-oriented API.  These are namespace aliases, not a second
quotient construction; method notation such as `M.CausalState` continues to
refer to `ObservableRecursion.System.CausalState`.
-/
namespace CausalObservation

export ObservableRecursion.System
  (CausalEquivalent causalEquivalent_refl causalEquivalent_symm
    causalEquivalent_trans causalSetoid CausalState toCausal toCausal_eq_iff
    toCausal_surjective
    causalEquivalent_step causalStep causalStep_toCausal runCausal
    runCausal_toCausal causalEquivalent_observe causalObserve
    causalObserve_toCausal causalObserve_runCausal Behavior behavior
    causalEquivalent_iff_behavior_eq BehaviorImage
    causalStateEquivBehaviorImage)

end CausalObservation
