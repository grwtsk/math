/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #991 exact head ea26d00b9129894872237aadb04553367afab6f9.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase
import Mathlib.Topology.Instances.AddCircle.Real

/-!
# Polar compatibility with the authentic unit-circle quotient

This file isolates the quotient-equivalence supplier. A full
continuous product quotient lift is still open and is NOT asserted.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCircleDescent

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity

/-- Integer translation invariance in the exact closed disk subtype,
consuming the inherited period theorem rather than redefining polar. -/
theorem polarDisk_add_int (θ : ℝ) (r : unitInterval) (n : ℤ) :
    realAnglePolarDisk (θ + n) r = realAnglePolarDisk θ r := by
  apply Subtype.ext
  exact realAnglePolar_add_int θ (r : ℝ) n

/-- A source-independent helper: integer-translation equivalence
of real angular coordinates is respected at every radial value. -/
theorem polarDisk_eq_of_int_translate
    (θ φ : ℝ) (r : unitInterval)
    (n : ℤ) (h : φ = θ + n) :
    realAnglePolarDisk φ r = realAnglePolarDisk θ r := by
  subst φ
  exact polarDisk_add_int θ r n

/-- The polar expression at the center is independent of the
chosen real representative, including unrelated real angles. -/
theorem polarDisk_zero_angle_independent (θ φ : ℝ) :
    realAnglePolarDisk θ 0 = realAnglePolarDisk φ 0 := by
  apply Subtype.ext
  simp only [realAnglePolarDisk]
  exact (realAnglePolar_zero θ).trans (realAnglePolar_zero φ).symm

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarCircleDescent
