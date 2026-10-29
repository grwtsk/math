/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConstructedRectangleCount
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.RectangleMeshControls

set_option autoImplicit false

/-!
# Constructed-source positive and failure controls

All finite decisions below remain unexecuted Lean scripts. The small pole square
is NOT the target counting rectangle. No target success is asserted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.ConstructedSourceControls

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent

/-- N=1, one Bernoulli correction, exact base-one log and exp at the removed pole. -/
def poleParameters : RationalPoleValue.Parameters := ⟨1,0,4,0,0,0,1⟩
def coarseParameters : RationalPoleValue.Parameters := { poleParameters with expTerms := 0 }

theorem pole_value_computed :
    RationalPoleValue.evaluate one poleParameters = some ⟨one,0⟩ := by decide

/-- Composition uses the sourced finite-model residual, not a supplied F(1) ball. -/
theorem pole_value_sound : Holds (⟨one,0⟩ : Ball) (poleNormalizedZeta (toComplex one)) :=
  RationalPoleValue.evaluate_sound pole_value_computed

theorem pole_precision_zero : RationalPoleValue.checkWithin one poleParameters 0 = true := by decide

/-- A legitimate coarse Taylor bound can pass validity while failing precision. -/
theorem validity_not_precision :
    RationalPoleValue.check one coarseParameters = true ∧
    RationalPoleValue.valueBall one coarseParameters = ⟨zero,2⟩ ∧
    RationalPoleValue.checkWithin one coarseParameters (1/10) = false := by decide

theorem invalid_source_domain :
    RationalPoleValue.evaluate zero poleParameters = none ∧
    RationalPoleValue.evaluate (-1,3) poleParameters = none ∧
    RationalPoleValue.evaluate one { poleParameters with cutoff := 0 } = none := by decide

theorem negative_tolerance_rejected :
    RationalPoleValue.checkWithin one poleParameters (-1) = false := by decide

/-- Positive-base identity and domain checks remain even in the generic leaf. -/
theorem wrong_scale_and_base_rejected :
    RationalPowerValue.evaluate one 1 ⟨1,0,0,4,0,1⟩ = none ∧
    RationalPowerValue.evaluate one 0 ⟨0,0,0,4,0,1⟩ = none ∧
    RationalPowerValue.evaluate (-1,0) 1 ⟨0,0,0,4,0,1⟩ = none := by decide

/-- Constant-zero logarithm center does not erase its nonzero uncertainty. -/
theorem coarse_log_error_retained :
    RationalPowerValue.check one 2 ⟨1,0,0,4,0,1⟩ = true ∧
    RationalPowerValue.valueBall one 2 ⟨1,0,0,4,0,1⟩ = ⟨one,3/4⟩ := by decide

def polePlan : ConstructedRectangleCount.Plan := ⟨one,1/10,1/2,poleParameters⟩
def plans : List ConstructedRectangleCount.Plan := List.replicate 9 polePlan

/-- Every old source record is recovered from resolutions, not copied as input. -/
theorem generated_records :
    ConstructedRectangleCount.records plans = RectangleMeshControls.data := by decide

theorem all_plans_checked : ConstructedRectangleCount.checkPlans 9 plans = true := by decide

theorem generated_enclosures : RationalPoleContour.Enclosures 9
    (ConstructedRectangleCount.records plans) :=
  ConstructedRectangleCount.enclosures_of_checkPlans all_plans_checked

theorem small_box_computed :
    ConstructedRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks plans RectangleMeshControls.image = some 0 := by decide

/-- Empty/missing/extra plans, including the zero-width cell, cannot pass. -/
theorem complete_plan_inventory_required :
    ConstructedRectangleCount.checkPlans 0 [] = false ∧
    ConstructedRectangleCount.checkPlans 9 (plans.take 8) = false ∧
    ConstructedRectangleCount.checkPlans 9 (plans ++ [polePlan]) = false := by decide

theorem changed_source_center_rejected :
    ConstructedRectangleCount.checkPlans 1 [{ polePlan with center := zero }] = false := by decide

/-- The coarse expression is true but its zero-centered radius cannot exclude zero. -/
theorem coarse_values_do_not_certify_tubes :
    ConstructedRectangleCount.evaluateBox RectangleMeshControls.lower RectangleMeshControls.upper
      9 RectangleMeshControls.marks
      (List.replicate 9 { polePlan with parameters := coarseParameters })
      RectangleMeshControls.image = none := by decide

/-- A small sourced example is not a complete evaluation at height fifteen. -/
theorem target_geometry_not_supplied :
    ConstructedRectangleCount.evaluate 15 9 RectangleMeshControls.marks
      plans RectangleMeshControls.image = none := by decide

/-- A literal point ON the left side of the actual target rectangle. This is
one local disk, not a complete contour. Large finite reductions remain unrun. -/
def pilotCenter : Coordinates := (1/4,113/8)
def pilotParameters : RationalPoleValue.Parameters := ⟨81,7,160,32,32,7,32⟩

theorem pilot_source_checked : RationalPoleValue.check pilotCenter pilotParameters = true := by
  decide

theorem pilot_precision_checked :
    RationalPoleValue.checkWithin pilotCenter pilotParameters (1/10^16) = true := by decide

/-- Precision does not remove the independent whole-disk variation cost. -/
theorem pilot_patch_checked :
    RationalPolePatch.check pilotCenter (1/10000) (1/8)
      (RationalPoleValue.valueBall pilotCenter pilotParameters) = true ∧
    RationalPolePatch.check pilotCenter (1/1000) (1/8)
      (RationalPoleValue.valueBall pilotCenter pilotParameters) = false := by decide

/-- Actual-source target for ONE closed disk. No value oracle is a theorem
hypothesis; the entire unexecuted proof chain still requires acceptance. -/
theorem pilot_disk_nonzero :
    ∀ z ∈ Metric.closedBall (toComplex pilotCenter) (1/10000 : ℝ),
      poleNormalizedZeta z ≠ 0 :=
  RationalPolePatch.check_sound pilot_patch_checked.1
    (RationalPoleValue.valueBall_sound pilot_source_checked)

end GRWTSK.RiemannHypothesis.Checks.ConstructedSourceControls
