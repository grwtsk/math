/-
PredictiveRepresentationDynamics — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 260d671f2639f4125b6aa59aa46a1af5f3487a89bdf6ba0b9ab8c63aa6987962
Organized SHA-256: 2206834a934a04d495fa1be69d1c14dbae99411013add88ab0f2898210608834
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole six-field representation, finite-word dynamics and exact one-way kernel theorem. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.CausalState
import Mathlib.Data.Fintype.Card
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Predictive representations and causal-state minimality

A predictive representation stores a memory value that evolves under every
input and reproduces every current observation.  Equality of represented
memories therefore implies equality of all future observed behavior, but the
converse is deliberately not asserted without an explicit exactness
hypothesis.

Restricting memory to the encoder image yields a canonical surjective factor
onto causal observational state.  This factor commutes with every transition
and read operation, is unique on the realized image, and gives the finite
information bound

`card CausalState ≤ card EffectiveMemory ≤ card Memory`.

An exact representation is precisely one whose kernel is causal equivalence;
only then does the universal factor become an equivalence.
-/

namespace ObservableRecursion

universe uI uS uR uO uM

variable {Input : Type uI}
variable {State : Type uS}
variable {Resolution : Type uR}

/--
A memory implementation that simulates every system input and reproduces each
declared observation on encoded states.
-/
structure PredictiveRepresentation
    (M : System Input State Resolution) where
  Memory : Type uM
  encode : State → Memory
  step : Input → Memory → Memory
  read : ∀ ρ, Memory → M.Observation ρ
  encode_step : ∀ a x, encode (M.step a x) = step a (encode x)
  read_encode : ∀ ρ x, read ρ (encode x) = M.observe ρ x

namespace PredictiveRepresentation

variable {M : System Input State Resolution}
variable (R : PredictiveRepresentation M)

/-! ## Executing represented memory -/

/-- Execute a finite input word using the representation's local transition. -/
def run : List Input → R.Memory → R.Memory
  | [], memory => memory
  | a :: inputs, memory => run inputs (R.step a memory)

@[simp]
theorem run_nil (memory : R.Memory) : R.run [] memory = memory :=
  rfl

@[simp]
theorem run_cons (a : Input) (inputs : List Input) (memory : R.Memory) :
    R.run (a :: inputs) memory = R.run inputs (R.step a memory) :=
  rfl

/-- Encoding intertwines execution of every finite input word. -/
theorem encode_run (inputs : List Input) (x : State) :
    R.encode (M.run inputs x) = R.run inputs (R.encode x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons a inputs ih =>
      rw [System.run_cons, R.run_cons, ← R.encode_step]
      exact ih (M.step a x)

/-- Reading represented execution agrees with the system's future observation. -/
theorem read_run_encode
    (inputs : List Input)
    (ρ : Resolution)
    (x : State) :
    R.read ρ (R.run inputs (R.encode x)) =
      M.observe ρ (M.run inputs x) := by
  rw [← R.encode_run]
  exact R.read_encode ρ (M.run inputs x)

/-! ## The representation kernel -/

/-- Equal encoded memories necessarily have identical future behavior. -/
theorem encode_eq_implies_causalEquivalent
    {x y : State}
    (h : R.encode x = R.encode y) :
    M.CausalEquivalent x y := by
  intro inputs ρ
  rw [← R.read_run_encode inputs ρ x,
    ← R.read_run_encode inputs ρ y, h]

/-! ## Effective memory -/

end PredictiveRepresentation

end ObservableRecursion

