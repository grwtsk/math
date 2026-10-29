/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalAtanhPower
import Mathlib.Data.Nat.Log

set_option autoImplicit false

/-!
# All 81 endpoint-candidate logarithms and directed rounding controls

The source constructs the same scale, 32-term atanh polynomial and 160-bit
rounded ball for every positive base in the prior literal candidate. These
are elementary logarithm claims, not zeta values. The large finite decisions
are UNEXECUTED proof scripts, not reports of successful kernel evaluation.
No CenterEstimates proof, Euler--Maclaurin theorem or runtime qualification.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.Checks.EndpointLogRefinement

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure
open RationalDyadicArithmetic

/-- The actual finite cutoff, not a supplied list purporting to have this coverage. -/
def candidateLog (k : ℕ) : Ball := RationalAtanhLog.enclosure (k : ℚ) (Nat.log2 k) 32 32 160

theorem all_scales_valid : ∀ k ∈ Finset.Icc 1 81,
    RationalAtanhLog.validScale (k : ℚ) (Nat.log2 k) = true := by decide

/-- No stored midpoint or external analytic log-error premise occurs. -/
theorem candidate_log_sound {k : ℕ} (hk : k ∈ Finset.Icc 1 81) :
    Holds (candidateLog k) (Real.log (k : ℝ) : ℂ) := by
  simpa only [candidateLog, Rat.cast_natCast] using
    RationalAtanhLog.enclosure_sound (all_scales_valid k hk) 32 32 160

/-- The radius is recomputed for EVERY base; this decision still needs Lean replay. -/
theorem all_log_radii_small : ∀ k ∈ Finset.Icc 1 81,
    (candidateLog k).rad ≤ (1 / 10 ^ 31 : ℚ) := by decide

theorem candidate_log_precision {k : ℕ} (hk : k ∈ Finset.Icc 1 81) :
    ‖(Real.log (k : ℝ) : ℂ) - toComplex (candidateLog k).mid‖ ≤ (1 / 10 ^ 31 : ℝ) :=
  (candidate_log_sound hk).trans (by exact_mod_cast all_log_radii_small k hk)

/-- Signed coordinate floor, not truncation toward zero; radius ceiling is outward. -/
theorem signed_rounding_control :
    down 3 (-1 / 3) = -3 / 8 ∧ up 3 (1 / 3) = 3 / 8 ∧
      down 3 (-1 / 3) ≠ -1 / 4 := by decide

/-- The new formula is deliberately distinct from the old reciprocal-grid value. -/
theorem log_two_control :
    RationalAtanhLog.center 2 1 1 1 = 2 / 3 ∧
    RationalAtanhLog.radius 2 1 1 1 = 1 / 36 ∧
    RationalLogEnclosure.center 2 1 1 1 = 3 / 4 ∧
    RationalLogEnclosure.radius 2 1 1 1 = 1 / 4 := by decide

theorem rounded_log_two_control :
    RationalAtanhLog.enclosure 2 1 1 1 3 = ⟨(5 / 8, 0), 1 / 8⟩ ∧
    RationalAtanhLog.checkWithin 2 1 1 1 3 (1 / 8) = true ∧
    RationalAtanhLog.checkWithin 2 1 1 1 3 (1 / 16) = false := by decide

/-- A one-sided full tail is not a half-width around the lower endpoint. -/
theorem halving_tail_at_lower_is_false : ¬ |Real.log 2 - (2 / 3 : ℝ)| ≤ 1 / 72 := by
  have hl := (RationalAtanhLog.base_bounds (show (1 : ℚ) ≤ 2 by norm_num) 2).1
  norm_num [RationalAtanhLog.lower, RationalAtanhLog.coordinate, Finset.sum_range_succ] at hl
  intro h
  have hu := (abs_le.mp h).2
  linarith

/-- The same log-two approximation error occurs four times. -/
theorem shared_radius_control :
    RationalAtanhLog.radius 16 4 1 1 = 1 / 9 ∧
      RationalAtanhLog.radius 16 4 1 1 ≠ 1 / 36 := by decide

/-- Zero terms have a nonzero allowance at two; invalid scales fail independently. -/
theorem domain_and_zero_terms_control :
    RationalAtanhLog.validScale 0 0 = false ∧
    RationalAtanhLog.validScale (1 / 2) 0 = false ∧
    RationalAtanhLog.validScale 4 0 = false ∧
    RationalAtanhLog.checkWithin 2 1 0 0 8 0 = false ∧
    RationalAtanhLog.checkWithin 2 1 1 1 8 (-1) = false := by decide

/-- Floor movement of both coordinates is charged before the radius is rounded up. -/
theorem complex_center_displacement_control :
    roundBall 1 ⟨(1 / 3, -1 / 3), 0⟩ = ⟨(0, -1 / 2), 1 / 2⟩ ∧
    inBall (sub (1 / 3, -1 / 3) (0, -1 / 2)) 0 = false := by decide

/-- Two zero-centered unit balls have products of radius one, not zero. -/
theorem cross_radius_control :
    ballMul 4 ⟨zero, 1⟩ ⟨zero, 1⟩ = ⟨zero, 1⟩ ∧ inBall one 0 = false := by decide

/-- Early radius rounding is amplified by later squares and is not an equality. -/
theorem outward_recurrence_control :
    RationalExpTrace.propagate (1 / 10) (fun _ => 0) 1 = 21 / 100 ∧
    outwardPropagation 3 (1 / 10) (fun _ => 0) 1 = 3 / 8 ∧
    outwardPropagation 3 (1 / 10) (fun _ => 0) 2 = 1 := by decide

/-- No point belongs to a negative-radius datum, even though data constructors are total. -/
theorem negative_radius_not_evidence : ¬ Holds ⟨zero, -1⟩ (0 : ℂ) := by
  norm_num [Holds, toComplex_zero]

/-- A complete, nonconstant inverse-power trace at the computed rounded log center. -/
def inverseTwoTrace : RationalExpTrace.Trace :=
  ⟨[(377 / 512, 0), (142129 / 262144, 0)], 0, [0]⟩

theorem inverse_two_trace_checked :
    RationalExpTrace.check (RationalAtanhPower.exponent one 2 1 1 1 3)
      1 1 3 inverseTwoTrace = true := by decide

/-- Compose actual logarithm and exponential bounds for the original power. -/
theorem inverse_two_enclosed :
    Holds (RationalAtanhPower.output one 2 1 1 1 3 1 1 3 inverseTwoTrace)
      ((2 : ℂ) ^ (-1 : ℂ)) := by
  have h := RationalAtanhPower.inverse_power_sound (by decide : 0 ≤ one.1)
    (by decide : RationalAtanhLog.validScale 2 1 = true) inverse_two_trace_checked
  simpa only [toComplex_one] using h

theorem inverse_two_total_radius :
    (RationalAtanhPower.output one 2 1 1 1 3 1 1 3 inverseTwoTrace).rad = 1 / 2 := by decide

end GRWTSK.RiemannHypothesis.Checks.EndpointLogRefinement
