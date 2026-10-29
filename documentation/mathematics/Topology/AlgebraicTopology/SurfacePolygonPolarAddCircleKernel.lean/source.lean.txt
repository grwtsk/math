/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #993 exact head 33d724a35efcb5b5c1f42aac27a94dc599a42e49.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger
import Mathlib.Topology.Instances.AddCircle.Defs
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# Exact AddCircle kernel for real-angle polar phases

This module records the direct quotient equality bridge. The source
relates equal real-angle classes in the actual Mathlib UnitAddCircle
to integral differences, and then composes the previously drafted
complex phase equivalence. No arbitrary section of ℝ → ℝ/ℤ is used.

The source must still elaborate at the exact pinned Mathlib revision.
Continuity and cone descent remain independent obligations.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarPhaseInteger

/-- Exact equality of real representatives in the genuine additive
unit circle is equality up to an integer winding. -/
theorem unitAddCircle_coe_eq_iff_integer (θ φ : ℝ) :
    (θ : UnitAddCircle) = (φ : UnitAddCircle) ↔
      ∃ n : ℤ, θ = φ + n := by
  constructor
  · intro h
    have hz : θ - φ ∈ AddSubgroup.zmultiples (1 : ℝ) := by
      exact (QuotientAddGroup.eq_iff_sub_mem).mp h
    rcases hz with ⟨n, hn⟩
    refine ⟨n, ?_⟩
    have hn' : θ - φ = (n : ℝ) := by
      simpa using hn.symm
    linarith
  · rintro ⟨n, hn⟩
    apply (QuotientAddGroup.eq_iff_sub_mem).mpr
    change θ - φ ∈ AddSubgroup.zmultiples (1 : ℝ)
    refine ⟨n, ?_⟩
    simp [hn]

/-- Complex phase equality is exactly equality in the actual
UnitAddCircle quotient, with 2π normalization unchanged. -/
theorem polar_phase_eq_iff_unitAddCircle_eq (θ φ : ℝ) :
    Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) ↔
      (θ : UnitAddCircle) = (φ : UnitAddCircle) := by
  rw [phase_eq_iff_integer_winding, unitAddCircle_coe_eq_iff_integer]

/-- Equal positive-radius polar points determine the same true
UnitAddCircle angular address, not necessarily the same real angle. -/
theorem polar_eq_implies_unitAddCircle_eq
    {θ φ r s : ℝ} (hr : 0 < r) (hs : 0 < s)
    (h : GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk.realAnglePolar θ r =
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk.realAnglePolar φ s) :
    (θ : UnitAddCircle) = (φ : UnitAddCircle) := by
  have hp :=
    GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase.radius_and_phase_eq_of_polar_eq hr hs h
  exact (polar_phase_eq_iff_unitAddCircle_eq θ φ).mp hp.2

/-
Remaining:
* check exact AddSubgroup quotient API and zmultiples orientation;
* descend the continuous polar formula to UnitAddCircle × unitInterval;
* descend through StandardCircleCone and establish its exact fibers;
* polar surjectivity, compact-to-Hausdorff disk homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel
