/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #995 exact head 18f65ef246991fb73b823449a50f3a25614e966a.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel
import Mathlib.Topology.Instances.AddCircle.Real

/-!
# Exact polar quotient compatibility, before continuous product descent

This bounded module avoids inventing a section of the quotient.
It proves that the inherited disk-valued polar formula respects
equality of genuine UnitAddCircle classes. The topological product
quotient descent and its joint continuity remain independent.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarQuotientCompatibility

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel

/-- The authentic unit-circle quotient relation preserves the disk
polar value, without choosing a preferred angular representative. -/
theorem realAnglePolarDisk_respects_unitAddCircle (θ φ : ℝ)
    (r : unitInterval)
    (h : (θ : UnitAddCircle) = (φ : UnitAddCircle)) :
    realAnglePolarDisk θ r = realAnglePolarDisk φ r := by
  obtain ⟨n, hn⟩ := (unitAddCircle_coe_eq_iff_integer θ φ).mp h
  subst θ
  apply Subtype.ext
  exact realAnglePolar_add_int φ (r : ℝ) n

/-- The zero-radius disk point does not depend on any real angle. -/
theorem realAnglePolarDisk_zero_all_angles (θ φ : ℝ) :
    realAnglePolarDisk θ 0 = realAnglePolarDisk φ 0 := by
  apply Subtype.ext
  exact (realAnglePolar_zero θ).trans (realAnglePolar_zero φ).symm

/-- A source-level coherence check for two independent integer
representatives of the same true angular class. -/
theorem realAnglePolarDisk_two_integer_shifts
    (θ : ℝ) (r : unitInterval) (m n : ℤ) :
    realAnglePolarDisk (θ + m) r =
      realAnglePolarDisk (θ + n) r := by
  apply Subtype.ext
  calc
    realAnglePolar (θ + m) (r : ℝ) =
      realAnglePolar θ (r : ℝ) := realAnglePolar_add_int θ _ m
    _ = realAnglePolar (θ + n) (r : ℝ) :=
      (realAnglePolar_add_int θ _ n).symm

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarQuotientCompatibility
