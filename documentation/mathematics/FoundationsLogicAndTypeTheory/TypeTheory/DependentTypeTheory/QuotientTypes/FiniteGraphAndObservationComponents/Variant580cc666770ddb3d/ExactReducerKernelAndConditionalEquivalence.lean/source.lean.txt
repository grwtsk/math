/-
ExactReducerKernelAndConditionalEquivalence - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d
Organized SHA-256: 5726938ba09142d5ab5d21d75e7e1b4c314eaeebcd27e6e4662242e0a8b959bf
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Exact kernel iff hypothesis and its conditional injectivity/whole equivalence; preserve hExact, no inference from surjectivity alone. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.CausalState
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variant580cc666770ddb3d.WholeObserverReducerAndCanonicalFactor

/-!
# Observer-localState causal factors

The global causal quotient remembers the complete future behavior of the
selected observer family.  This module also forms the quotient seen by one
observer and proves that the global quotient maps onto it.  The tuple of all
localState classes determines a global causal class, but only tuples in the
realized image are claimed to come from a global state.

An `ObserverReducer` is an implementation-level localState state machine with a
proved semiconjugacy to the global recursion.  Its localState type is required to be
realized by the reducer; `ofRealizedImage` supplies this condition for an
arbitrary raw reducer by restricting its codomain.  Every such implementation
maps onto the canonical localState causal quotient.  It is equivalent to that
quotient only under the separately stated `Exact` kernel hypothesis.

Causal minimality is relative to the selected observations, and causal
equivalence need not be equality of underlying states.  The results make no
claim about reversibility, phases, cycle data, homology, avalanche behavior,
cryptographic security, or the sufficiency of one observed trajectory.
-/

namespace ObserverFactor

open ObservableRecursion

universe uI uS uR uO uL

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-! ## The canonical quotient for one observer -/

namespace ObserverReducer

variable {M : System Input State Resolution} {ρ : Resolution}

/-- A reducer is exact when its kernel is precisely localState causal equivalence. -/
def Exact
    (R : ObserverReducer M ρ) : Prop :=
  ∀ x y,
    R.reduce x = R.reduce y ↔
      LocalCausalEquivalent M ρ x y

/-- Exactness makes the canonical factor injective. -/
theorem toCanonicalLocal_injective_of_exact
    (R : ObserverReducer M ρ)
    (hExact : R.Exact) :
    Function.Injective R.toCanonicalLocal := by
  intro localState₁ localState₂ h
  rcases R.reduce_surjective localState₁ with ⟨x, rfl⟩
  rcases R.reduce_surjective localState₂ with ⟨y, rfl⟩
  apply (hExact x y).2
  apply (toLocalCausal_eq_iff M ρ x y).mp
  simpa only [R.toCanonicalLocal_reduce] using h

/-- An exact reducer is equivalent to the canonical localState causal state. -/
noncomputable def equivCanonicalLocal
    (R : ObserverReducer M ρ)
    (hExact : R.Exact) :
    R.Local ≃ LocalCausalState M ρ :=
  Equiv.ofBijective R.toCanonicalLocal
    ⟨R.toCanonicalLocal_injective_of_exact hExact,
      R.toCanonicalLocal_surjective⟩

end ObserverReducer

end ObserverFactor
