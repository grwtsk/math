/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex.
Imported Mathlib results retain their original credits and licenses. -/
import Mathlib.Topology.Category.TopCat.Sphere
import GRWTSK.Topology.AlgebraicTopology.CircleCone

/-!
# The complex disk and the Euclidean two-disk

The real linear isometry given by the orthonormal basis `1, I` restricts to
the closed unit balls and their unit spheres. These restrictions identify
the complex disk and circle with Mathlib's `TopCat.disk 2` and its boundary,
including the explicit `ULift` in those definitions. The boundary inclusions
commute pointwise. Composing with the circle-cone homeomorphism gives the
same Euclidean disk with the standard boundary coordinates.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.ComplexDisk

abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

/-- The actual coordinate isometry sends `z` to its real and imaginary parts. -/
def coordinateIsometry : ℂ ≃ₗᵢ[ℝ] EuclideanPlane :=
  Complex.orthonormalBasisOneI.repr

@[simp] theorem coordinateIsometry_zero (z : ℂ) :
    coordinateIsometry z 0 = z.re := rfl

@[simp] theorem coordinateIsometry_one (z : ℂ) :
    coordinateIsometry z 1 = z.im := rfl

/-- Restriction of the coordinate isometry to the actual closed unit balls. -/
def closedBallHomeomorph :
    CircleCone.ClosedDisk ≃ₜ Metric.closedBall (0 : EuclideanPlane) 1 :=
  coordinateIsometry.toHomeomorph.subtype fun z => by
    change z ∈ Metric.closedBall (0 : ℂ) 1 ↔
      coordinateIsometry z ∈ Metric.closedBall (0 : EuclideanPlane) 1
    simp only [mem_closedBall_zero_iff, coordinateIsometry.norm_map]

/-- Restriction of the same coordinate isometry to the actual unit spheres. -/
def sphereHomeomorph : Circle ≃ₜ Metric.sphere (0 : EuclideanPlane) 1 :=
  coordinateIsometry.toHomeomorph.subtype fun z => by
    change z ∈ Metric.sphere (0 : ℂ) 1 ↔
      coordinateIsometry z ∈ Metric.sphere (0 : EuclideanPlane) 1
    simp only [mem_sphere_zero_iff_norm, coordinateIsometry.norm_map]

/-- The complex disk is homeomorphic to Mathlib's bundled Euclidean two-disk. -/
def topCatDiskHomeomorph : CircleCone.ClosedDisk ≃ₜ TopCat.disk.{0} 2 :=
  closedBallHomeomorph.trans Homeomorph.ulift.symm

/-- The complex circle is homeomorphic to the boundary of that same disk. -/
def topCatBoundaryHomeomorph : Circle ≃ₜ TopCat.diskBoundary.{0} 2 :=
  sphereHomeomorph.trans Homeomorph.ulift.symm

/-- The standard inclusion of the complex circle into the complex closed disk. -/
def boundaryInclusion (z : Circle) : CircleCone.ClosedDisk :=
  ⟨(z : ℂ), Metric.sphere_subset_closedBall z.property⟩

@[simp] theorem topCatDiskHomeomorph_zero (z : CircleCone.ClosedDisk) :
    ((topCatDiskHomeomorph z).down : EuclideanPlane) 0 = (z : ℂ).re := rfl

@[simp] theorem topCatDiskHomeomorph_one (z : CircleCone.ClosedDisk) :
    ((topCatDiskHomeomorph z).down : EuclideanPlane) 1 = (z : ℂ).im := rfl

@[simp] theorem topCatBoundaryHomeomorph_zero (z : Circle) :
    ((topCatBoundaryHomeomorph z).down : EuclideanPlane) 0 = (z : ℂ).re := rfl

@[simp] theorem topCatBoundaryHomeomorph_one (z : Circle) :
    ((topCatBoundaryHomeomorph z).down : EuclideanPlane) 1 = (z : ℂ).im := rfl

@[simp] theorem topCatDiskHomeomorph_symm_coe (p : TopCat.disk.{0} 2) :
    (topCatDiskHomeomorph.symm p : ℂ) =
      (((p.down : EuclideanPlane) 0 : ℝ) : ℂ) +
        (((p.down : EuclideanPlane) 1 : ℝ) : ℂ) * Complex.I := rfl

@[simp] theorem topCatBoundaryHomeomorph_symm_coe (p : TopCat.diskBoundary.{0} 2) :
    (topCatBoundaryHomeomorph.symm p : ℂ) =
      (((p.down : EuclideanPlane) 0 : ℝ) : ℂ) +
        (((p.down : EuclideanPlane) 1 : ℝ) : ℂ) * Complex.I := rfl

/-- The two concrete boundary inclusions commute under the coordinate maps. -/
@[simp] theorem boundary_commutes (z : Circle) :
    topCatDiskHomeomorph (boundaryInclusion z) =
      (TopCat.diskBoundaryInclusion 2) (topCatBoundaryHomeomorph z) := rfl

/-- The circle-cone homeomorphism, now with the standard Euclidean disk as target. -/
def coneHomeomorph : CircleCone.Cone Circle ≃ₜ TopCat.disk.{0} 2 :=
  CircleCone.homeomorph.trans topCatDiskHomeomorph

/-- The composite agrees with the standard Euclidean boundary inclusion. -/
@[simp] theorem coneHomeomorph_boundary (z : Circle) :
    coneHomeomorph (CircleCone.boundary z) =
      (TopCat.diskBoundaryInclusion 2) (topCatBoundaryHomeomorph z) := by
  have h : CircleCone.homeomorph (CircleCone.boundary z) = boundaryInclusion z :=
    Subtype.ext (CircleCone.homeomorph_boundary z)
  change topCatDiskHomeomorph (CircleCone.homeomorph (CircleCone.boundary z)) = _
  rw [h, boundary_commutes]

@[simp] theorem coneHomeomorph_coneMk_zero (z : Circle) (r : unitInterval) :
    ((coneHomeomorph (CircleCone.coneMk z r)).down : EuclideanPlane) 0 =
      (r : ℝ) * (z : ℂ).re := by
  change (CircleCone.homeomorph (CircleCone.coneMk z r) : ℂ).re = _
  rw [CircleCone.homeomorph_coneMk]
  simp

@[simp] theorem coneHomeomorph_coneMk_one (z : Circle) (r : unitInterval) :
    ((coneHomeomorph (CircleCone.coneMk z r)).down : EuclideanPlane) 1 =
      (r : ℝ) * (z : ℂ).im := by
  change (CircleCone.homeomorph (CircleCone.coneMk z r) : ℂ).im = _
  rw [CircleCone.homeomorph_coneMk]
  simp

@[simp] theorem coneHomeomorph_apex :
    ((coneHomeomorph CircleCone.apex).down : EuclideanPlane) = 0 := by
  change coordinateIsometry (CircleCone.homeomorph CircleCone.apex : ℂ) = 0
  rw [CircleCone.homeomorph_apex, map_zero]

end GRWTSK.Topology.AlgebraicTopology.ComplexDisk
