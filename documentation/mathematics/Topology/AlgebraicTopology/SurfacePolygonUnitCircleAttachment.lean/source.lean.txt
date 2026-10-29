/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#947. Parent PR #946 head:
5aa55f9366e1d02ebc0b764b691dece299b4697a.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

/-!
# The original polygon attaching map on the standard unit circle

Transport the authentic noninjective perimeter attachment through the
source-exact proposed perimeter homeomorphism. This is only a map
S¹ → B_k. It is not an extension from the closed disk, an adjunction
space, a CW surface, or a manifold theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

/-- Retain the exact source discrete topology used by the perimeter homeomorphism. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- The authentic attaching direction reparametrized by the standard circle. -/
def unitCircleAttachingMap (k : ℕ) :
    UnitAddCircle → PolygonBoundaryOneSkeleton k :=
  (perimeterAttach k) ∘ (perimeterUnitCircleHomeomorph k).symm

/-- Transport preserves continuity without assuming an attached disk. -/
theorem unitCircleAttachingMap_continuous (k : ℕ) :
    Continuous (unitCircleAttachingMap k) :=
  (perimeterAttach_continuous k).comp
    (perimeterUnitCircleHomeomorph k).symm.continuous

/-- On each original directed side the new map is exactly the old
paired-boundary projection. -/
@[simp] theorem unitCircleAttachingMap_source (k : ℕ)
    (p : BoundaryPoint k) :
    unitCircleAttachingMap k
      ((perimeterUnitCircleHomeomorph k) (perimeterProjection k p)) =
      boundaryProjection k p := by
  simp only [unitCircleAttachingMap, Function.comp_apply,
    Homeomorph.symm_apply_apply, perimeterAttach_projection]

/-- Equivalently, the original attaching arrow factors through the
new canonical circle coordinate. -/
theorem unitCircleAttachingMap_factorization (k : ℕ)
    (x : UnpairedPerimeter k) :
    unitCircleAttachingMap k ((perimeterUnitCircleHomeomorph k) x) =
      perimeterAttach k x := by
  simp only [unitCircleAttachingMap, Function.comp_apply, Homeomorph.symm_apply_apply]

/-- The transported map covers every point of the old paired boundary. -/
theorem unitCircleAttachingMap_surjective (k : ℕ) :
    Function.Surjective (unitCircleAttachingMap k) := by
  intro y
  obtain ⟨x, hx⟩ := perimeterAttach_surjective k y
  refine ⟨(perimeterUnitCircleHomeomorph k) x, ?_⟩
  exact (unitCircleAttachingMap_factorization k x).trans hx

/-- Exact reversed a/a⁻¹ parameter pairing on original source IDs. -/
theorem unitCircleAttachingMap_pairs_a (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    unitCircleAttachingMap k
      ((perimeterUnitCircleHomeomorph k)
        (perimeterProjection k ((h, 0), t))) =
    unitCircleAttachingMap k
      ((perimeterUnitCircleHomeomorph k)
        (perimeterProjection k ((h, 2), unitInterval.symm t))) := by
  simp only [unitCircleAttachingMap_factorization]
  exact attachingMap_pairs_a k h t

/-- Exact reversed b/b⁻¹ parameter pairing on original source IDs. -/
theorem unitCircleAttachingMap_pairs_b (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    unitCircleAttachingMap k
      ((perimeterUnitCircleHomeomorph k)
        (perimeterProjection k ((h, 1), t))) =
    unitCircleAttachingMap k
      ((perimeterUnitCircleHomeomorph k)
        (perimeterProjection k ((h, 3), unitInterval.symm t))) := by
  simp only [unitCircleAttachingMap_factorization]
  exact attachingMap_pairs_b k h t

/-- Hostile noncollapse control: despite the new domain being a standard
circle, opposite original interior points are identified by attachment. -/
theorem unitCircleAttachingMap_not_injective (k : ℕ) :
    ¬ Function.Injective (unitCircleAttachingMap k) := by
  intro hinj
  apply perimeterAttach_not_injective k
  intro x y hxy
  apply (perimeterUnitCircleHomeomorph k).injective
  apply hinj
  simpa only [unitCircleAttachingMap_factorization] using hxy

/-- Reparametrization does not lose any additional quotient information:
the two original attaching maps have the same source-identification
kernel after pulling back along the homeomorphism. -/
theorem unitCircleAttachingMap_kernel (k : ℕ)
    (x y : UnpairedPerimeter k) :
    unitCircleAttachingMap k ((perimeterUnitCircleHomeomorph k) x) =
      unitCircleAttachingMap k ((perimeterUnitCircleHomeomorph k) y) ↔
    perimeterAttach k x = perimeterAttach k y := by
  simp only [unitCircleAttachingMap_factorization]

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonUnitCircleAttachment
