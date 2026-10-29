/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib induced topologies and topological rings (Apache-2.0).
Formalization assistance: OpenAI.

Topology determined by a countable family of discrete observations.
The observation spaces need not be finite sets. The construction does not
install a global topology instance or supply a norm or compactness theorem.
These are source proof scripts, pending elaboration and trust checks.
-/
import Mathlib.Topology.Algebra.Ring.Basic
import Mathlib.Topology.Homeomorph.Defs

set_option autoImplicit false

namespace GRWTSK.Topology.Algebra.DiscreteProjection

variable {X Y : Type*} {A B : ℕ → Type*}

/-- The coarsest topology making each declared observation continuous to its
DISCRETE codomain. Neither finite cardinality nor an arithmetic norm is assumed. -/
def topology (p : ∀ n, X → A n) : TopologicalSpace X :=
  ⨅ n, TopologicalSpace.induced (p n) ⊥

/-- Continuity of every defining projection follows from the topology itself. -/
theorem projection_continuous (p : ∀ n, X → A n) (n : ℕ) :
    @Continuous X (A n) (topology p) ⊥ (p n) := by
  apply continuous_iff_le_induced.mpr
  exact iInf_le _ n

/-- The universal continuity criterion uses ALL observations, not a finite sample. -/
theorem continuous_into_iff (p : ∀ n, X → A n)
    (t : TopologicalSpace Y) (f : Y → X) :
    @Continuous Y X t (topology p) f ↔
      ∀ n, @Continuous Y (A n) t ⊥ (p n ∘ f) := by
  simp only [topology, continuous_iInf_rng, continuous_induced_rng]

/-- A finite-stage factorization for every target observation proves continuity.
The source stage may depend on the target stage but not on the observed point. -/
theorem continuous_of_factor (p : ∀ n, X → A n) (q : ∀ n, Y → B n)
    (f : X → Y)
    (h : ∀ n, ∃ m (g : A m → B n), ∀ x, q n (f x) = g (p m x)) :
    @Continuous X Y (topology p) (topology q) f := by
  apply (continuous_into_iff q (topology p) f).mpr
  intro n
  obtain ⟨m, g, hg⟩ := h n
  have heq : q n ∘ f = g ∘ p m := funext hg
  rw [heq]
  have hc : @Continuous (A m) (B n) ⊥ ⊥ g := continuous_bot
  exact hc.comp (projection_continuous p m)

/-- Exact observation fibers are open; no surjectivity of the observation is needed. -/
theorem fiber_isOpen (p : ∀ n, X → A n) (n : ℕ) (a : A n) :
    @IsOpen X (topology p) {x | p n x = a} := by
  letI : TopologicalSpace X := topology p
  letI : TopologicalSpace (A n) := ⊥
  letI : DiscreteTopology (A n) := discreteTopology_bot _
  exact (isOpen_discrete ({a} : Set (A n))).preimage (projection_continuous p n)

/-- The same exact observation fibers are closed. -/
theorem fiber_isClosed (p : ∀ n, X → A n) (n : ℕ) (a : A n) :
    @IsClosed X (topology p) {x | p n x = a} := by
  letI : TopologicalSpace X := topology p
  letI : TopologicalSpace (A n) := ⊥
  letI : DiscreteTopology (A n) := discreteTopology_bot _
  exact (isClosed_discrete ({a} : Set (A n))).preimage (projection_continuous p n)

/-- Ring observations give a topological ring in the independently defined
projection topology. This theorem installs no persistent instance. -/
theorem ring_structure [CommRing X] [∀ n, CommRing (A n)]
    (p : ∀ n, X →+* A n) :
    letI : TopologicalSpace X := topology (fun n => (p n : X → A n))
    IsTopologicalRing X := by
  letI : TopologicalSpace X := topology (fun n => (p n : X → A n))
  refine { continuous_add := ?_, continuous_mul := ?_, continuous_neg := ?_ }
  · apply (continuous_into_iff (fun n => (p n : X → A n)) _ _).mpr
    intro n
    letI : TopologicalSpace (A n) := ⊥
    letI : DiscreteTopology (A n) := discreteTopology_bot _
    have hp : Continuous (p n : X → A n) := projection_continuous _ n
    simpa only [Function.comp_apply, map_add] using
      (hp.comp continuous_fst).add (hp.comp continuous_snd)
  · apply (continuous_into_iff (fun n => (p n : X → A n)) _ _).mpr
    intro n
    letI : TopologicalSpace (A n) := ⊥
    letI : DiscreteTopology (A n) := discreteTopology_bot _
    have hp : Continuous (p n : X → A n) := projection_continuous _ n
    simpa only [Function.comp_apply, map_mul] using
      (hp.comp continuous_fst).mul (hp.comp continuous_snd)
  · apply (continuous_into_iff (fun n => (p n : X → A n)) _ _).mpr
    intro n
    letI : TopologicalSpace (A n) := ⊥
    letI : DiscreteTopology (A n) := discreteTopology_bot _
    have hp : Continuous (p n : X → A n) := projection_continuous _ n
    simpa only [Function.comp_apply, map_neg] using hp.neg

end GRWTSK.Topology.Algebra.DiscreteProjection
