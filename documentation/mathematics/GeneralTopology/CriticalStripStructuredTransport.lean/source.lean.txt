/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripVerticalPath

set_option autoImplicit false

/-!
# Noncoercive topology–homotopy–ring–holomorphic transport

This file strengthens the structural bridge requested in issue #235. Topological,
homotopical, algebraic, analytic, root-height, source-binding, and proof-transport data
remain independent fields. No field is inferred from another by naming or coercion.

The analytic domain is explicitly open and nonempty, and the analytic map is
nonconstant on two distinct domain points. Openness prevents differentiability within
a finite/discrete test set from substituting for a holomorphic neighborhood. The
homotopy names the exact invariant it preserves. Separate commuting equations identify
topological and ring coordinates with the holomorphic map, while separate height
equations identify those realizations with the common represented-commutator root.

The final proof implication remains an explicit theorem field rather than being hidden
inside a compatibility premise. A completed bridge can be admitted as a source-bound
structured vertical edge, but this file constructs no concrete zeta/Weil instance.
-/

namespace GRWTSK.RiemannHypothesis

/-- Holomorphic chart data with explicit anti-vacuity conditions. The open domain
provides actual complex neighborhoods, while the two witnesses rule out both an empty
domain and a constant-map bridge. -/
structure NonvacuousHolomorphicChartMap where
  map : HolomorphicChartMap
  domain_isOpen : IsOpen map.domain
  domain_nonempty : map.domain.Nonempty
  nonconstant_on_domain :
    ∃ z, z ∈ map.domain ∧
      ∃ w, w ∈ map.domain ∧ z ≠ w ∧ map.toFun z ≠ map.toFun w

/-- Exact invariant transported by a declared homotopy. This does not assert that the
homotopy preserves complex structure, spectra, traces, multiplicity, or multiplication
unless one of those is explicitly selected as the invariant and proved here. -/
structure PreservedHomotopyInvariant
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : X → Y} (homotopy : StructuredHomotopy f g) where
  sourceInvariant : X → Prop
  targetInvariant : Y → Prop
  preserved :
    ∀ t x, sourceInvariant x ↔ targetInvariant (homotopy.map (t, x))

namespace PreservedHomotopyInvariant

/-- The invariant is preserved by the first endpoint map. -/
theorem at_topological_endpoint
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : X → Y} {homotopy : StructuredHomotopy f g}
    (invariant : PreservedHomotopyInvariant homotopy) (x : X) :
    invariant.sourceInvariant x ↔ invariant.targetInvariant (f x) := by
  simpa [homotopy.at_zero x] using invariant.preserved 0 x

/-- The invariant is preserved by the comparison endpoint map. -/
theorem at_comparison_endpoint
    {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {f g : X → Y} {homotopy : StructuredHomotopy f g}
    (invariant : PreservedHomotopyInvariant homotopy) (x : X) :
    invariant.sourceInvariant x ↔ invariant.targetInvariant (g x) := by
  simpa [homotopy.at_one x] using invariant.preserved 1 x

end PreservedHomotopyInvariant

/-- One complete, source-bound structured transport between two actual atlas charts.

`TopX` and `TopY` are the topological carriers. `RingA` and `RingB` are the algebraic
coordinate rings. `X` remains the common critical-strip object carrier of the atlas.
The embeddings into `X` make every root-height compatibility equation explicit. -/
structure NoncoerciveAtlasTransport
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    (atlas : CriticalStripAtlas ι A X H) (lower upper : ι)
    (TopX TopY RingA RingB : Type*)
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB] where
  transportId : String
  lowerBinding : SourceBinding
  upperBinding : SourceBinding
  lower_binding_matches : lowerBinding.Matches (atlas.chart lower)
  upper_binding_matches : upperBinding.Matches (atlas.chart upper)
  binding_eq : lowerBinding = upperBinding

  topological : TopologicalEquivalence TopX TopY
  comparisonMap : TopX → TopY
  homotopy : StructuredHomotopy topological.toFun comparisonMap
  homotopyInvariant : PreservedHomotopyInvariant homotopy

  ringHomomorphism : RingChartHomomorphism RingA RingB
  analytic : NonvacuousHolomorphicChartMap

  sourceTopologicalCoordinate : TopX → ℂ
  targetTopologicalCoordinate : TopY → ℂ
  sourceRingCoordinate : RingA → ℂ
  targetRingCoordinate : RingB → ℂ

  source_topological_in_domain :
    ∀ x, sourceTopologicalCoordinate x ∈ analytic.map.domain
  source_ring_in_domain :
    ∀ a, sourceRingCoordinate a ∈ analytic.map.domain

  topological_analytic_compatibility :
    ∀ x,
      analytic.map.toFun (sourceTopologicalCoordinate x) =
        targetTopologicalCoordinate (topological.toFun x)
  comparison_analytic_compatibility :
    ∀ x,
      analytic.map.toFun (sourceTopologicalCoordinate x) =
        targetTopologicalCoordinate (comparisonMap x)
  ring_analytic_compatibility :
    ∀ a,
      analytic.map.toFun (sourceRingCoordinate a) =
        targetRingCoordinate (ringHomomorphism.map a)

  sourceTopologicalPoint : TopX → X
  targetTopologicalPoint : TopY → X
  sourceRingPoint : RingA → X
  targetRingPoint : RingB → X

  source_topological_point_mem :
    ∀ x, (atlas.chart lower).carrier (sourceTopologicalPoint x)
  target_topological_point_mem :
    ∀ y, (atlas.chart upper).carrier (targetTopologicalPoint y)
  source_ring_point_mem :
    ∀ a, (atlas.chart lower).carrier (sourceRingPoint a)
  target_ring_point_mem :
    ∀ b, (atlas.chart upper).carrier (targetRingPoint b)

  topological_height_compatibility :
    ∀ x,
      atlas.root.heightAt (sourceTopologicalPoint x) =
        atlas.root.heightAt (targetTopologicalPoint (topological.toFun x))
  comparison_height_compatibility :
    ∀ x,
      atlas.root.heightAt (sourceTopologicalPoint x) =
        atlas.root.heightAt (targetTopologicalPoint (comparisonMap x))
  ring_height_compatibility :
    ∀ a,
      atlas.root.heightAt (sourceRingPoint a) =
        atlas.root.heightAt (targetRingPoint (ringHomomorphism.map a))

  height_mono :
    (atlas.chart lower).rootHeight ≤ (atlas.chart upper).rootHeight
  proofTransport :
    (atlas.chart lower).localStatement → (atlas.chart upper).localStatement

namespace NoncoerciveAtlasTransport

/-- The two homotopy endpoints describe the same target analytic coordinate. This
conclusion uses the two separately proved analytic compatibility squares, not homotopy
alone. -/
theorem endpoint_analytic_coordinates_eq
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {lower upper : ι}
    {TopX TopY RingA RingB : Type*}
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB]
    (bridge : NoncoerciveAtlasTransport atlas lower upper TopX TopY RingA RingB)
    (x : TopX) :
    bridge.targetTopologicalCoordinate (bridge.topological.toFun x) =
      bridge.targetTopologicalCoordinate (bridge.comparisonMap x) := by
  rw [← bridge.topological_analytic_compatibility x]
  exact bridge.comparison_analytic_compatibility x

/-- The two homotopy endpoints also have equal common-root height, by separately proved
height compatibility equations. -/
theorem endpoint_root_heights_eq
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {lower upper : ι}
    {TopX TopY RingA RingB : Type*}
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB]
    (bridge : NoncoerciveAtlasTransport atlas lower upper TopX TopY RingA RingB)
    (x : TopX) :
    atlas.root.heightAt
        (bridge.targetTopologicalPoint (bridge.topological.toFun x)) =
      atlas.root.heightAt
        (bridge.targetTopologicalPoint (bridge.comparisonMap x)) := by
  rw [← bridge.topological_height_compatibility x]
  exact bridge.comparison_height_compatibility x

/-- Admit the completed structured bridge as a vertical edge. It is not tagged as a
coordinate equivalence or terminal equivalence; those require independent #232 and
#231 evidence. -/
def toSourceBoundVerticalStep
    {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
    {atlas : CriticalStripAtlas ι A X H} {lower upper : ι}
    {TopX TopY RingA RingB : Type*}
    [TopologicalSpace TopX] [TopologicalSpace TopY]
    [Ring RingA] [Ring RingB]
    (bridge : NoncoerciveAtlasTransport atlas lower upper TopX TopY RingA RingB) :
    SourceBoundVerticalStep atlas lower upper where
  step :=
    { height_mono := bridge.height_mono
      transport := bridge.proofTransport }
  lowerBinding := bridge.lowerBinding
  upperBinding := bridge.upperBinding
  lower_binding_matches := bridge.lower_binding_matches
  upper_binding_matches := bridge.upper_binding_matches
  binding_eq := bridge.binding_eq
  kinds := [.logicalImplication, .heightMonotone, .structuredTransport]
  kinds_nonempty := by simp
  logical_kind_present := by simp
  height_kind_present := by simp
  coordinateEvidence := none
  coordinate_evidence_exact := by
    intro h
    simp at h
  terminal_status_exact := by
    intro h
    simp at h

end NoncoerciveAtlasTransport

end GRWTSK.RiemannHypothesis
