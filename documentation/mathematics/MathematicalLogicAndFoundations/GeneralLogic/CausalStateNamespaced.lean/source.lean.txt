-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CausalEquivalent.Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CausalEquivalent.Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7","mathematical_subject":"Logic.Foundations","original_sha256":"8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Causal/CausalState.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Causal.ObservableRecursion
import Mathlib.Data.Quot
import Mathlib.Logic.Equiv.Defs

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


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CausalEquivalent.Variant8cc1ad83113e89b69409e4e528fe00277e4c04268e458a0342ca61a2bd66e9c7

namespace ObservableRecursion

universe uI uS uR uO

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Equality of all resolution-indexed observations after all future input words. -/
def CausalEquivalent
    (M : System Input State Resolution)
    (x y : State) : Prop :=
  ∀ (inputs : List Input) (ρ : Resolution),
    M.observe ρ (M.run inputs x) =
      M.observe ρ (M.run inputs y)

theorem causalEquivalent_refl
    (M : System Input State Resolution)
    (x : State) :
    M.CausalEquivalent x x := by
  intro inputs ρ
  rfl

theorem causalEquivalent_symm
    (M : System Input State Resolution)
    {x y : State}
    (h : M.CausalEquivalent x y) :
    M.CausalEquivalent y x := by
  intro inputs ρ
  exact (h inputs ρ).symm

theorem causalEquivalent_trans
    (M : System Input State Resolution)
    {x y z : State}
    (hxy : M.CausalEquivalent x y)
    (hyz : M.CausalEquivalent y z) :
    M.CausalEquivalent x z := by
  intro inputs ρ
  exact (hxy inputs ρ).trans (hyz inputs ρ)

/-- The setoid induced by equality of every future observation trace. -/
def causalSetoid
    (M : System Input State Resolution) : Setoid State where
  r := M.CausalEquivalent
  iseqv := {
    refl := fun x => M.causalEquivalent_refl x
    symm := fun h => M.causalEquivalent_symm h
    trans := fun hxy hyz => M.causalEquivalent_trans hxy hyz
  }

/-- Predictive states obtained by quotienting concrete states by future behavior. -/
def CausalState
    (M : System Input State Resolution) :=
  Quotient M.causalSetoid

/-- Send a concrete state to its causal equivalence class. -/
def toCausal
    (M : System Input State Resolution)
    (x : State) : M.CausalState :=
  Quotient.mk M.causalSetoid x

/-- Every causal class has a concrete representative. -/
theorem toCausal_surjective
    (M : System Input State Resolution) :
    Function.Surjective M.toCausal := by
  intro causal
  refine Quotient.inductionOn causal ?_
  intro x
  exact ⟨x, rfl⟩

@[simp]
theorem toCausal_eq_iff
    (M : System Input State Resolution)
    (x y : State) :
    M.toCausal x = M.toCausal y ↔
      M.CausalEquivalent x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

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
