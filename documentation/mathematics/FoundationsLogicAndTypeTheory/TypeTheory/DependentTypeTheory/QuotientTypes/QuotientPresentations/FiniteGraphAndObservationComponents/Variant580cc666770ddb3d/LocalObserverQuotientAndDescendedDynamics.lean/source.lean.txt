/-
LocalObserverQuotientAndDescendedDynamics - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 580cc666770ddb3d3c57fc05e2de8c6b58d6260ff4fce3267aebe3f1e11aa40d
Organized SHA-256: 5726938ba09142d5ab5d21d75e7e1b4c314eaeebcd27e6e4662242e0a8b959bf
PMD: 510.0.070.020.080.010 quotient presentations (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Complete observer-local equivalence/setoid/quotient and descended local transition+observation, all exact proofs. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal.CausalState

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

/-- Equality of one observer's output after every future input word. -/
def LocalCausalEquivalent
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x y : State) : Prop :=
  ∀ inputs : List Input,
    M.observe ρ (M.run inputs x) =
      M.observe ρ (M.run inputs y)

theorem localCausalEquivalent_refl
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    LocalCausalEquivalent M ρ x x := by
  intro inputs
  rfl

theorem localCausalEquivalent_symm
    (M : System Input State Resolution)
    {ρ : Resolution} {x y : State}
    (h : LocalCausalEquivalent M ρ x y) :
    LocalCausalEquivalent M ρ y x := by
  intro inputs
  exact (h inputs).symm

theorem localCausalEquivalent_trans
    (M : System Input State Resolution)
    {ρ : Resolution} {x y z : State}
    (hxy : LocalCausalEquivalent M ρ x y)
    (hyz : LocalCausalEquivalent M ρ y z) :
    LocalCausalEquivalent M ρ x z := by
  intro inputs
  exact (hxy inputs).trans (hyz inputs)

/-- The setoid induced by one observer's complete future trace. -/
def localCausalSetoid
    (M : System Input State Resolution)
    (ρ : Resolution) : Setoid State where
  r := LocalCausalEquivalent M ρ
  iseqv := {
    refl := fun x => localCausalEquivalent_refl M ρ x
    symm := fun h => localCausalEquivalent_symm M h
    trans := fun hxy hyz => localCausalEquivalent_trans M hxy hyz
  }

/-- Canonical causal state for a single observer. -/
def LocalCausalState
    (M : System Input State Resolution)
    (ρ : Resolution) :=
  Quotient (localCausalSetoid M ρ)

/-- Send a concrete state to its localState causal class. -/
def toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) : LocalCausalState M ρ :=
  Quotient.mk (localCausalSetoid M ρ) x

@[simp]
theorem toLocalCausal_eq_iff
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x y : State) :
    toLocalCausal M ρ x = toLocalCausal M ρ y ↔
      LocalCausalEquivalent M ρ x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

/-- Local causal equivalence is stable under every input transition. -/
theorem localCausalEquivalent_step
    (M : System Input State Resolution)
    {ρ : Resolution} {x y : State}
    (input : Input)
    (h : LocalCausalEquivalent M ρ x y) :
    LocalCausalEquivalent M ρ
      (M.step input x) (M.step input y) := by
  intro inputs
  simpa only [ObservableRecursion.System.run_cons] using
    h (input :: inputs)

/-- The transition induced on one observer's causal quotient. -/
def localCausalStep
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input) :
    LocalCausalState M ρ → LocalCausalState M ρ :=
  Quotient.map (M.step input)
    (fun _ _ h => localCausalEquivalent_step M input h)

@[simp]
theorem localCausalStep_toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input)
    (x : State) :
    localCausalStep M ρ input (toLocalCausal M ρ x) =
      toLocalCausal M ρ (M.step input x) :=
  rfl

/-- Current observation descends to the observer-localState quotient. -/
def localCausalObserve
    (M : System Input State Resolution)
    (ρ : Resolution) :
    LocalCausalState M ρ → M.Observation ρ :=
  Quotient.lift (M.observe ρ) (by
    intro x y h
    simpa only [ObservableRecursion.System.run_nil] using h [])

@[simp]
theorem localCausalObserve_toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    localCausalObserve M ρ (toLocalCausal M ρ x) =
      M.observe ρ x :=
  rfl

/-! ## The global quotient maps onto every localState quotient -/

namespace ObserverReducer

variable {M : System Input State Resolution} {ρ : Resolution}

end ObserverReducer

end ObserverFactor
