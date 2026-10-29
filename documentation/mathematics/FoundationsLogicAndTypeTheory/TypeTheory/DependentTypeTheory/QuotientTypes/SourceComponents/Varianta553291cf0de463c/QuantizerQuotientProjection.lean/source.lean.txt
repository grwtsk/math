/-
QuantizerQuotientProjection — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779
Organized SHA-256: ae0be3f44005013d9b35894cc4465ac5bf5d971abc7c17c3edbb9788513c6606
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole coherent four-field tower and monotone observer-local quotient projection calculus. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Causal.ObserverFactor
import Mathlib.Order.BoundedOrder.Basic

/-!
# Coherent towers of observer resolutions

A `QuantizerTower` specifies how a fine observation is projected to every
coarser resolution.  The order convention is `coarse ≤ fine`, so maps travel
from fine observations to coarse observations.  Coherence and compatibility
with the global observation induce canonical surjections between the
corresponding observer-local causal quotients.

When the resolution order has a top element, equality of top-resolution
future traces implies equality at every resolution.  Consequently the global
causal state is equivalent to the top local causal state.  Without a finest
resolution this module makes no claim that one local state represents the
whole observer family.  Causal minimality remains relative to the selected
observers, and none of these projections imply equality of concrete states,
reversibility, phase information, cycle data, homological transport, or
avalanche behavior.
-/

open ObservableRecursion
open ObserverFactor

universe uI uS uR uO

/-- A coherent family of fine-to-coarse observation projections. -/
structure QuantizerTower
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : System Input State Resolution)
    [Preorder Resolution] where
  project : ∀ {coarse fine : Resolution},
    coarse ≤ fine → M.Observation fine → M.Observation coarse
  project_refl : ∀ (ρ : Resolution) (observation : M.Observation ρ),
    project (le_refl ρ) observation = observation
  project_trans : ∀ {coarse middle fine : Resolution}
      (hcm : coarse ≤ middle) (hmf : middle ≤ fine)
      (observation : M.Observation fine),
    project (hcm.trans hmf) observation =
      project hcm (project hmf observation)
  observe_project : ∀ {coarse fine : Resolution}
      (h : coarse ≤ fine) (x : State),
    project h (M.observe fine x) = M.observe coarse x

namespace QuantizerTower

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}
variable {M : System Input State Resolution}
variable [Preorder Resolution]

/-- Fine local causal equivalence implies coarse local causal equivalence. -/
theorem localCausalEquivalent_of_le
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    {x y : State}
    (hxy : LocalCausalEquivalent M fine x y) :
    LocalCausalEquivalent M coarse x y := by
  intro inputs
  calc
    M.observe coarse (M.run inputs x) =
        T.project h (M.observe fine (M.run inputs x)) :=
      (T.observe_project h _).symm
    _ = T.project h (M.observe fine (M.run inputs y)) := by
      rw [hxy inputs]
    _ = M.observe coarse (M.run inputs y) :=
      T.observe_project h _

/-- Forget fine observational distinctions that the coarse observer cannot see. -/
def localProject
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine) :
    LocalCausalState M fine → LocalCausalState M coarse :=
  Quotient.map id
    (fun _ _ hxy => T.localCausalEquivalent_of_le h hxy)

@[simp]
theorem localProject_toLocalCausal
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (x : State) :
    T.localProject h (toLocalCausal M fine x) =
      toLocalCausal M coarse x :=
  rfl

/-- Every coarse local class has a representative at the finer resolution. -/
theorem localProject_surjective
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine) :
    Function.Surjective (T.localProject h) := by
  intro coarseState
  refine Quotient.inductionOn coarseState ?_
  intro x
  exact ⟨toLocalCausal M fine x, rfl⟩

/-- Fine-to-coarse projection commutes with every descended transition. -/
theorem localProject_step
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (input : Input)
    (c : LocalCausalState M fine) :
    T.localProject h (localCausalStep M fine input c) =
      localCausalStep M coarse input (T.localProject h c) := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- Projecting a fine descended observation gives the coarse observation. -/
theorem localProject_observe
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (c : LocalCausalState M fine) :
    T.project h (localCausalObserve M fine c) =
      localCausalObserve M coarse (T.localProject h c) := by
  refine Quotient.inductionOn c ?_
  intro x
  exact T.observe_project h x

/-- Projection along reflexivity is the identity local factor. -/
theorem localProject_refl
    (T : QuantizerTower M)
    (ρ : Resolution) :
    T.localProject (le_refl ρ) = id := by
  funext c
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- Successive local projections equal the direct coarse projection. -/
theorem localProject_trans
    (T : QuantizerTower M)
    {coarse middle fine : Resolution}
    (hcm : coarse ≤ middle)
    (hmf : middle ≤ fine)
    (c : LocalCausalState M fine) :
    T.localProject hcm (T.localProject hmf c) =
      T.localProject (hcm.trans hmf) c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- The global-to-local maps form the expected commuting triangle. -/
theorem causalToLocal_naturality
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (c : M.CausalState) :
    T.localProject h (causalToLocal M fine c) =
      causalToLocal M coarse c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-! ## A finest observer represents the complete selected observer family -/

end QuantizerTower
