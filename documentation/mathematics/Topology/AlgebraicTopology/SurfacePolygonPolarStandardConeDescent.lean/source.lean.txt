/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #1005 exact head 600652899f6a9f522685f6706397d328523ea341.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover
import Mathlib.Topology.Constructions
import Mathlib.Tactic

/-!
# Descent of the joint polar map through the actual standard cone

The genuine StandardCircleCone is the quotient of UnitAddCircle ×
unitInterval by precisely the zero-radius apex relation. The joint
polar map has the same value at all radius-zero points, and thus
respects that relation. The resulting Quotient.lift is continuous
from the inherited JOINT continuity, not from slice continuity.

This source does not claim surjectivity or injectivity of the cone map;
those require polar decomposition and the exact positive-radius
fiber criterion.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterConeCircleTransport
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift

/-- Every standard cone generator preserves the jointly defined
polar disk point: all zero-radius circle values equal the origin. -/
theorem standardCircleConeConnected_jointPolar_eq
    {p q : StandardCircleConeCylinder}
    (h : StandardCircleConeConnected p q) :
    unitCircleJointPolar p = unitCircleJointPolar q := by
  rcases (standardCircleConeConnected_iff p q).mp h with
    hpq | ⟨hp, hq⟩
  · rw [hpq]
  · rcases p with ⟨z, r⟩
    rcases q with ⟨w, s⟩
    dsimp at hp hq
    subst r
    subst s
    exact (unitCirclePolarDisk_zero z).trans
      (unitCirclePolarDisk_zero w).symm

/-- The genuine cone-to-closed-disk polar map is a Quotient.lift of
the source-exact jointly continuous map. -/
def standardConePolarDisk :
    StandardCircleCone → ClosedComplexUnitDisk :=
  Quotient.lift unitCircleJointPolar
    (by
      intro p q h
      exact standardCircleConeConnected_jointPolar_eq h)

/-- Exact source equation, without selecting a quotient representative. -/
@[simp] theorem standardConePolarDisk_projection
    (p : StandardCircleConeCylinder) :
    standardConePolarDisk (standardCircleConeProjection p) =
      unitCircleJointPolar p := rfl

/-- The exact standard-circle-cone radius is the complex norm of the
quotient-descended polar point, at every cone point including the apex.
This does not identify the filled polygon quotient with a disk. -/
theorem standardConePolarDisk_norm_eq_radius (x : StandardCircleCone) :
    ‖(standardConePolarDisk x).val‖ = (standardCircleConeRadius x : ℝ) := by
  refine Quotient.inductionOn x ?_
  rintro ⟨z, r⟩
  refine Quotient.inductionOn z ?_
  intro θ
  change ‖realAnglePolar θ (r : ℝ)‖ = (r : ℝ)
  exact realAnglePolar_norm θ r.property.1

/-- Joint continuity descends through the ACTUAL cone quotient. -/
theorem standardConePolarDisk_continuous :
    Continuous standardConePolarDisk := by
  exact Continuous.quotient_lift unitCircleJointPolar_continuous
    (fun _ _ h => standardCircleConeConnected_jointPolar_eq h)

/-- The cone apex is sent to the genuine complex disk origin. -/
theorem standardConePolarDisk_apex :
    standardConePolarDisk standardCircleConeApex =
      (⟨0, by simp⟩ : ClosedComplexUnitDisk) := by
  change unitCircleJointPolar (0, 0) = _
  exact unitCirclePolarDisk_zero 0

/-- The outer cone boundary has exactly unit radius in the disk. -/
theorem standardConePolarDisk_boundary_norm (z : UnitAddCircle) :
    ‖(standardConePolarDisk (standardCircleConeBoundary z) :
      ClosedComplexUnitDisk).val‖ = 1 := by
  refine Quotient.inductionOn z ?_
  intro θ
  change ‖(realAnglePolarDisk θ 1).val‖ = 1
  exact realAnglePolar_norm θ (by norm_num)

/-
Next exact gates:
1. pinned elaboration of inherited quotient and continuity suppliers;
2. exact cone polar fiber iff source equality at positive radius or apex;
3. polar decomposition of all closed-disk complex points;
4. compact-to-Hausdorff homeomorphism and original perimeter transport.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent
