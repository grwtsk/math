/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib discrete topologies and locally constant maps (Apache-2.0).
Formalization assistance: OpenAI.

Connected-time rigidity for the existing discrete-observation topology.
Separation is an explicit premise, not a consequence of having finitely
many coordinates. No coefficient norm or analytic heat topology is supplied.
Unelaborated source proof scripts; no execution or acceptance claim.
-/
import GRWTSK.Topology.Algebra.DiscreteProjection
import Mathlib.Topology.LocallyConstant.Basic

set_option autoImplicit false

namespace GRWTSK.Topology.Algebra.DiscreteProjectionRigidity

open GRWTSK.Topology.Algebra.DiscreteProjection

variable {X T : Type*} {A : ℕ → Type*}
variable [TopologicalSpace T] [PreconnectedSpace T]

/-- Every discrete observation of a continuous connected-time path is constant. -/
theorem observation_eq (p : ∀ n, X → A n) (f : T → X)
    (hf : @Continuous T X inferInstance (topology p) f)
    (n : ℕ) (s t : T) : p n (f s) = p n (f t) := by
  letI : TopologicalSpace X := topology p
  letI : TopologicalSpace (A n) := ⊥
  letI : DiscreteTopology (A n) := discreteTopology_bot _
  have hc : Continuous (fun u => p n (f u)) :=
    (projection_continuous p n).comp hf
  exact ((IsLocallyConstant.iff_continuous _).mpr hc).apply_eq_of_preconnectedSpace s t

/-- All observations must jointly separate points before their constancy
can imply constancy of the complete object. -/
theorem path_eq (p : ∀ n, X → A n)
    (hp : ∀ x y : X, (∀ n, p n x = p n y) → x = y)
    (f : T → X) (hf : @Continuous T X inferInstance (topology p) f)
    (s t : T) : f s = f t := by
  apply hp
  intro n
  exact observation_eq p f hf n s t

/-- A single varying exact observation already refutes continuity in this
particular topology. It says nothing about a different coefficient topology. -/
theorem not_continuous_of_observation_ne (p : ∀ n, X → A n) (f : T → X)
    (n : ℕ) (s t : T) (hne : p n (f s) ≠ p n (f t)) :
    ¬ @Continuous T X inferInstance (topology p) f := by
  intro hf
  exact hne (observation_eq p f hf n s t)

end GRWTSK.Topology.Algebra.DiscreteProjectionRigidity
