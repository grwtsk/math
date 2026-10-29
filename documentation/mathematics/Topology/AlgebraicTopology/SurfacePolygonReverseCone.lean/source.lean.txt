/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial

/-! # Descent from the genuine perimeter cone into the filled polygon.
This uses the actual zero-radius EqvGen identification, not a
separately postulated cone map. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialFilling
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseRadial
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskBoundary

local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

/-- The original filling respects precisely the cone's collapsed end. -/
theorem cylinder_respects_cone (k : ℕ)
    {p q : UnpairedPerimeter k × unitInterval}
    (h : CircleCone.coneSetoid (UnpairedPerimeter k) p q) :
    perimeterCylinderToFilling k p = perimeterCylinderToFilling k q := by
  rcases h with h | h
  · exact congrArg (perimeterCylinderToFilling k) h
  · have hp : p.2 = (0 : unitInterval) := Subtype.ext h.1
    have hq : q.2 = (0 : unitInterval) := Subtype.ext h.2
    cases p with
    | mk x r =>
      cases q with
      | mk y s =>
        change r = 0 at hp
        change s = 0 at hq
        subst r
        subst s
        exact (perimeterCylinderToFilling_zero k x).trans
          (perimeterCylinderToFilling_zero k y).symm

/-- Genuine quotient descent from the original unpaired-perimeter cone. -/
def perimeterConeToFilling (k : ℕ) :
    CircleCone.Cone (UnpairedPerimeter k) → FilledPolygonQuotient k :=
  Quotient.lift (perimeterCylinderToFilling k)
    (fun _ _ h => cylinder_respects_cone k h)

@[simp] theorem perimeterConeToFilling_source (k : ℕ)
    (x : UnpairedPerimeter k) (r : unitInterval) :
    perimeterConeToFilling k (CircleCone.coneMk x r) =
      perimeterCylinderToFilling k (x, r) := rfl

/-- Continuous quotient lift, using the source-exact joint supplier. -/
theorem perimeterConeToFilling_continuous (k : ℕ) :
    Continuous (perimeterConeToFilling k) := by
  apply Continuous.quotient_lift
    (perimeterCylinderToFilling_continuous k)

/-- Transfer from the actual Euclidean two-disk through the checked
inverse of the original perimeter cone-to-disk homeomorphism. -/
def euclideanDiskToFilling (k : ℕ) :
    TopCat.disk.{0} 2 → FilledPolygonQuotient k :=
  (perimeterConeToFilling k) ∘
    (perimeterConeDiskHomeomorph k).symm

theorem euclideanDiskToFilling_continuous (k : ℕ) :
    Continuous (euclideanDiskToFilling k) :=
  (perimeterConeToFilling_continuous k).comp
    (perimeterConeDiskHomeomorph k).symm.continuous

/-- At the original perimeter boundary this is exactly the existing
outer filling map, using the actual checked disk boundary chart. -/
theorem euclideanDiskToFilling_boundary (k : ℕ)
    (x : UnpairedPerimeter k) :
    euclideanDiskToFilling k
      ((TopCat.diskBoundaryInclusion 2)
        (perimeterDiskBoundaryHomeomorph k x)) =
      perimeterToFilling k x := by
  rw [← perimeterConeDiskHomeomorph_boundary k x]
  change perimeterConeToFilling k
    ((perimeterConeDiskHomeomorph k).symm
      (perimeterConeDiskHomeomorph k (ConeCongruence.boundary x))) = _
  rw [Homeomorph.symm_apply_apply]
  exact perimeterCylinderToFilling_one k x

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone
