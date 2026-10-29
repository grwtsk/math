/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.AtanhLogEnclosure
import GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic
import GRWTSK.Analysis.ErrorBounds.RationalLogEnclosure

set_option autoImplicit false

/-!
# Rational atanh logarithms with exact dyadic range reduction and rounding

This is a separate refinement of the endpoint-corrected prototype's logarithm,
not a silent change to the older reciprocal-grid checker. The same mantissa and
scale guards are reused; the polynomial and remainder are the atanh formulas.
The lower endpoint is used with its FULL one-sided remainder as a symmetric
radius. Source candidates only: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalAtanhLog

open scoped BigOperators
open RationalComplexEnclosure
open RationalDyadicArithmetic

/-- Rational atanh coordinate, with its domain supplied by validScale. -/
def coordinate (r : ℚ) : ℚ := (r - 1) / (r + 1)

def lower (r : ℚ) (n : ℕ) : ℚ :=
  2 * ∑ i ∈ Finset.range n, coordinate r ^ (2 * i + 1) / (2 * i + 1)

def remainder (r : ℚ) (n : ℕ) : ℚ :=
  2 * coordinate r ^ (2 * n + 1) / ((2 * n + 1) * (1 - coordinate r ^ 2))

/-- n=0 is a legitimate coarse enclosure, not an exact logarithm. -/
def center (t : ℚ) (k n₂ nr : ℕ) : ℚ :=
  (k : ℚ) * lower 2 n₂ + lower (RationalLogEnclosure.mantissa t k) nr

def radius (t : ℚ) (k n₂ nr : ℕ) : ℚ :=
  (k : ℚ) * remainder 2 n₂ + remainder (RationalLogEnclosure.mantissa t k) nr

/-- Reuse the existing rational scale predicate; no reciprocal grids are evaluated. -/
def validScale (t : ℚ) (k : ℕ) : Bool := RationalLogEnclosure.validScale t k 1 1

def enclosure (t : ℚ) (k n₂ nr bits : ℕ) : Ball :=
  roundBall bits ⟨(center t k n₂ nr, 0), radius t k n₂ nr⟩

def checkWithin (t : ℚ) (k n₂ nr bits : ℕ) (ε : ℚ) : Bool :=
  validScale t k && decide (0 ≤ ε ∧ (enclosure t k n₂ nr bits).rad ≤ ε)

@[simp] theorem cast_lower (r : ℚ) (n : ℕ) :
    (lower r n : ℝ) = AtanhLogEnclosure.partialSum (((r : ℝ) - 1) / ((r : ℝ) + 1)) n := by
  simp [lower, coordinate, AtanhLogEnclosure.partialSum]

@[simp] theorem cast_remainder (r : ℚ) (n : ℕ) :
    (remainder r n : ℝ) = AtanhLogEnclosure.tail (((r : ℝ) - 1) / ((r : ℝ) + 1)) n := by
  simp [remainder, coordinate, AtanhLogEnclosure.tail]

/-- The exact analytic logarithm of the literal rational input is enclosed. -/
theorem base_bounds {r : ℚ} (hr : 1 ≤ r) (n : ℕ) :
    0 ≤ Real.log (r : ℝ) - (lower r n : ℝ) ∧
      Real.log (r : ℝ) - (lower r n : ℝ) ≤ (remainder r n : ℝ) := by
  simpa only [cast_lower, cast_remainder] using
    AtanhLogEnclosure.reduced_bounds (by exact_mod_cast hr) n

theorem lower_nonneg {r : ℚ} (hr : 1 ≤ r) (n : ℕ) : 0 ≤ lower r n := by
  have hd : (0 : ℚ) < r + 1 := by linarith
  have hc : 0 ≤ coordinate r := div_nonneg (by linarith) hd.le
  unfold lower
  positivity

theorem remainder_nonneg {r : ℚ} (hr : 1 ≤ r) (n : ℕ) : 0 ≤ remainder r n := by
  have h := base_bounds hr n
  have : (0 : ℝ) ≤ remainder r n := h.1.trans h.2
  exact_mod_cast this

theorem scale_bounds {t : ℚ} {k : ℕ} (h : validScale t k = true) :
    1 ≤ t ∧ 1 ≤ RationalLogEnclosure.mantissa t k ∧
      RationalLogEnclosure.mantissa t k ≤ 2 := by
  obtain ⟨ht, hk, hk2, _, _⟩ := (RationalLogEnclosure.validScale_iff t k 1 1).mp h
  have hp : (0 : ℚ) < 2 ^ k := by positivity
  refine ⟨ht, (le_div_iff₀ hp).mpr (by simpa using hk), ?_⟩
  apply (div_le_iff₀ hp).mpr
  simpa only [pow_succ, mul_comm] using hk2

/-- One shared log(2) error is charged k times, not once and not in quadrature. -/
theorem log_bounds {t : ℚ} {k : ℕ} (h : validScale t k = true) (n₂ nr : ℕ) :
    0 ≤ Real.log (t : ℝ) - (center t k n₂ nr : ℝ) ∧
      Real.log (t : ℝ) - (center t k n₂ nr : ℝ) ≤ (radius t k n₂ nr : ℝ) := by
  obtain ⟨ht, hr, _⟩ := scale_bounds h
  have htwo := base_bounds (show (1 : ℚ) ≤ 2 by norm_num) n₂
  have hrest := base_bounds hr nr
  have heq := DyadicLogEnclosure.log_dyadic_reconstruct
    (t := (t : ℝ)) (by exact_mod_cast (zero_lt_one.trans_le ht)) k
  rw [← RationalLogEnclosure.cast_mantissa] at heq
  have hk : (0 : ℝ) ≤ k := Nat.cast_nonneg k
  have hlow := add_nonneg (mul_nonneg hk htwo.1) hrest.1
  have hupp := add_le_add (mul_le_mul_of_nonneg_left htwo.2 hk) hrest.2
  simp only [center, radius, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast]
  rw [heq]
  constructor <;> nlinarith

/-- The unrounded lower endpoint is nonnegative; the negative-exponent ray is valid. -/
theorem center_nonneg {t : ℚ} {k : ℕ} (h : validScale t k = true) (n₂ nr : ℕ) :
    0 ≤ center t k n₂ nr :=
  add_nonneg (mul_nonneg (Nat.cast_nonneg k) (lower_nonneg (by norm_num) n₂))
    (lower_nonneg (scale_bounds h).2.1 nr)

/-- The rounded ball uses the true log, full truncation width, and center displacement. -/
theorem enclosure_sound {t : ℚ} {k : ℕ} (h : validScale t k = true)
    (n₂ nr bits : ℕ) :
    Holds (enclosure t k n₂ nr bits) (Real.log (t : ℝ) : ℂ) := by
  apply roundBall_sound
  obtain ⟨hl, hu⟩ := log_bounds h n₂ nr
  have hc : toComplex (center t k n₂ nr, 0) = ((center t k n₂ nr : ℝ) : ℂ) := by
    apply Complex.ext <;> simp [toComplex]
  change ‖(Real.log (t : ℝ) : ℂ) - toComplex (center t k n₂ nr, 0)‖ ≤ _
  rw [hc, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hl]
  exact hu

/-- Flooring a nonnegative real lower endpoint keeps the computed log center real and nonnegative. -/
theorem enclosure_center {t : ℚ} {k : ℕ} (h : validScale t k = true)
    (n₂ nr bits : ℕ) :
    0 ≤ (enclosure t k n₂ nr bits).mid.1 ∧ (enclosure t k n₂ nr bits).mid.2 = 0 := by
  exact ⟨down_nonneg bits (center_nonneg h n₂ nr), down_zero bits⟩

theorem checkWithin_sound {t ε : ℚ} {k n₂ nr bits : ℕ}
    (h : checkWithin t k n₂ nr bits ε = true) :
    ‖(Real.log (t : ℝ) : ℂ) - toComplex (enclosure t k n₂ nr bits).mid‖ ≤ (ε : ℝ) := by
  have hh : validScale t k = true ∧ (0 ≤ ε ∧ (enclosure t k n₂ nr bits).rad ≤ ε) := by
    simpa only [checkWithin, Bool.and_eq_true, decide_eq_true_eq] using h
  exact (enclosure_sound hh.1 n₂ nr bits).trans (by exact_mod_cast hh.2.2)

/-- A successful enclosure may be reported at another rational center only with its displacement. -/
theorem presented_log_error {t : ℚ} {k : ℕ} (h : validScale t k = true)
    (n₂ nr bits : ℕ) (v : Coordinates) :
    ‖(Real.log (t : ℝ) : ℂ) - toComplex v‖ ≤
      ((enclosure t k n₂ nr bits).rad +
        RationalNewtonDisk.magnitude (sub v (enclosure t k n₂ nr bits).mid) : ℝ) := by
  calc
    _ ≤ ‖(Real.log (t : ℝ) : ℂ) - toComplex (enclosure t k n₂ nr bits).mid‖ +
        ‖toComplex (enclosure t k n₂ nr bits).mid - toComplex v‖ := by
      simpa only [dist_eq_norm] using dist_triangle (Real.log (t : ℝ) : ℂ)
        (toComplex (enclosure t k n₂ nr bits).mid) (toComplex v)
    _ ≤ _ := by
      push_cast
      apply add_le_add (enclosure_sound h n₂ nr bits)
      simpa only [toComplex_sub, norm_sub_rev] using
        RationalNewtonDisk.norm_le_magnitude (sub v (enclosure t k n₂ nr bits).mid)

end GRWTSK.Analysis.ErrorBounds.RationalAtanhLog
