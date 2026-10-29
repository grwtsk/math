/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk
import GRWTSK.Analysis.ErrorBounds.RationalExpTrace
import Mathlib.Data.Rat.Floor

set_option autoImplicit false

/-!
# Outward dyadic rounding of rational complex enclosures

The named complex coordinate arithmetic and L1 norm majorant are reused.
Coordinate flooring and radius ceiling are distinct operations. Negative
coordinates are floored toward minus infinity, not truncated toward zero.
All containment conclusions concern exact complex values. A parser, runtime,
resource budget or equivalence with a Python implementation is not supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic

open RationalComplexEnclosure
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)

/-- A positive exact denominator for every natural precision, including zero. -/
def denominator (bits : ℕ) : ℚ := (2 : ℚ) ^ bits

def down (bits : ℕ) (x : ℚ) : ℚ := ((⌊x * denominator bits⌋ : ℤ) : ℚ) / denominator bits

def up (bits : ℕ) (x : ℚ) : ℚ := ((⌈x * denominator bits⌉ : ℤ) : ℚ) / denominator bits

def rounded (bits : ℕ) (u : Coordinates) : Coordinates := (down bits u.1, down bits u.2)

/-- This is data, not an asserted certificate. Holds supplies its exact semantics. -/
structure Ball where
  mid : Coordinates
  rad : ℚ
  deriving DecidableEq

def Holds (b : Ball) (z : ℂ) : Prop := ‖z - toComplex b.mid‖ ≤ (b.rad : ℝ)

def roundBall (bits : ℕ) (b : Ball) : Ball :=
  ⟨rounded bits b.mid, up bits (b.rad + magnitude (sub (rounded bits b.mid) b.mid))⟩

def ballAdd (bits : ℕ) (a b : Ball) : Ball :=
  roundBall bits ⟨add a.mid b.mid, a.rad + b.rad⟩

def ballMul (bits : ℕ) (a b : Ball) : Ball :=
  roundBall bits ⟨mul a.mid b.mid,
    magnitude a.mid * b.rad + magnitude b.mid * a.rad + a.rad * b.rad⟩

def ballScale (bits : ℕ) (u : Coordinates) (b : Ball) : Ball :=
  roundBall bits ⟨mul u b.mid, magnitude u * b.rad⟩

theorem denominator_pos (bits : ℕ) : 0 < denominator bits := by
  unfold denominator
  positivity

/-- Signed floor and ceiling give outward bounds over Q. -/
theorem down_le (bits : ℕ) (x : ℚ) : down bits x ≤ x := by
  unfold down
  exact (div_le_iff₀ (denominator_pos bits)).mpr (Int.floor_le _)

theorem le_up (bits : ℕ) (x : ℚ) : x ≤ up bits x := by
  unfold up
  exact (le_div_iff₀ (denominator_pos bits)).mpr (Int.le_ceil _)

theorem down_nonneg (bits : ℕ) {x : ℚ} (hx : 0 ≤ x) : 0 ≤ down bits x := by
  apply div_nonneg
  · exact_mod_cast (Int.floor_nonneg.mpr (mul_nonneg hx (denominator_pos bits).le))
  · exact (denominator_pos bits).le

theorem up_nonneg (bits : ℕ) {x : ℚ} (hx : 0 ≤ x) : 0 ≤ up bits x :=
  hx.trans (le_up bits x)

@[simp] theorem down_zero (bits : ℕ) : down bits 0 = 0 := by simp [down]
@[simp] theorem up_zero (bits : ℕ) : up bits 0 = 0 := by simp [up]

theorem holds_radius_nonneg {b : Ball} {z : ℂ} (h : Holds b z) : 0 ≤ b.rad := by
  have hr : (0 : ℝ) ≤ b.rad := (norm_nonneg _).trans h
  exact_mod_cast hr

/-- The entire center displacement is added before upward radius rounding. -/
theorem roundBall_sound (bits : ℕ) {b : Ball} {z : ℂ} (h : Holds b z) :
    Holds (roundBall bits b) z := by
  unfold Holds roundBall
  calc
    ‖z - toComplex (rounded bits b.mid)‖ ≤
        ‖z - toComplex b.mid‖ + ‖toComplex b.mid - toComplex (rounded bits b.mid)‖ := by
      simpa only [dist_eq_norm] using dist_triangle z (toComplex b.mid) (toComplex (rounded bits b.mid))
    _ ≤ (b.rad : ℝ) + (magnitude (sub (rounded bits b.mid) b.mid) : ℝ) := by
      apply add_le_add h
      simpa only [toComplex_sub, norm_sub_rev] using
        norm_le_magnitude (sub (rounded bits b.mid) b.mid)
    _ ≤ (up bits (b.rad + magnitude (sub (rounded bits b.mid) b.mid)) : ℝ) := by
      exact_mod_cast le_up bits (b.rad + magnitude (sub (rounded bits b.mid) b.mid))

/-- Cancellation of centers never cancels their independently proved errors. -/
theorem ballAdd_sound (bits : ℕ) {a b : Ball} {z w : ℂ}
    (ha : Holds a z) (hb : Holds b w) : Holds (ballAdd bits a b) (z + w) := by
  apply roundBall_sound
  unfold Holds
  simp only [toComplex_add, Rat.cast_add]
  calc
    _ = ‖(z - toComplex a.mid) + (w - toComplex b.mid)‖ := by congr 1; ring
    _ ≤ ‖z - toComplex a.mid‖ + ‖w - toComplex b.mid‖ := norm_add_le _ _
    _ ≤ _ := add_le_add ha hb

/-- Both linear error terms AND the product of radii are retained. -/
theorem ballMul_sound (bits : ℕ) {a b : Ball} {z w : ℂ}
    (ha : Holds a z) (hb : Holds b w) : Holds (ballMul bits a b) (z * w) := by
  apply roundBall_sound
  have hra : (0 : ℝ) ≤ a.rad := by exact_mod_cast holds_radius_nonneg ha
  have hrb : (0 : ℝ) ≤ b.rad := by exact_mod_cast holds_radius_nonneg hb
  have hma : (0 : ℝ) ≤ magnitude a.mid := by exact_mod_cast magnitude_nonneg a.mid
  have hmb : (0 : ℝ) ≤ magnitude b.mid := by exact_mod_cast magnitude_nonneg b.mid
  unfold Holds
  simp only [toComplex_mul, Rat.cast_add, Rat.cast_mul]
  calc
    _ = ‖toComplex a.mid * (w - toComplex b.mid) +
        toComplex b.mid * (z - toComplex a.mid) +
        (z - toComplex a.mid) * (w - toComplex b.mid)‖ := by congr 1; ring
    _ ≤ ‖toComplex a.mid * (w - toComplex b.mid)‖ +
        ‖toComplex b.mid * (z - toComplex a.mid)‖ +
        ‖(z - toComplex a.mid) * (w - toComplex b.mid)‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ _ := by
      simp only [norm_mul]
      exact add_le_add
        (add_le_add
          (mul_le_mul (norm_le_magnitude _) hb (norm_nonneg _) hma)
          (mul_le_mul (norm_le_magnitude _) ha (norm_nonneg _) hmb))
        (mul_le_mul ha hb (norm_nonneg _) hra)

theorem ballScale_sound (bits : ℕ) (u : Coordinates) {b : Ball} {z : ℂ}
    (h : Holds b z) : Holds (ballScale bits u b) (toComplex u * z) := by
  apply roundBall_sound
  unfold Holds
  simp only [toComplex_mul, Rat.cast_mul, ← mul_sub, norm_mul]
  exact mul_le_mul (norm_le_magnitude _) h (norm_nonneg _)
    (by exact_mod_cast magnitude_nonneg u)

/-- Upward radius rounding at the seed and after EVERY nonlinear reconstruction. -/
def outwardPropagation (bits : ℕ) (e : ℚ) (r : ℕ → ℚ) : ℕ → ℚ
  | 0 => up bits e
  | n + 1 => up bits (2 * outwardPropagation bits e r n +
      outwardPropagation bits e r n ^ 2 + r n)

theorem propagate_nonneg {e : ℚ} {r : ℕ → ℚ} (he : 0 ≤ e) (n : ℕ)
    (hr : ∀ j < n, 0 ≤ r j) : 0 ≤ RationalExpTrace.propagate e r n := by
  revert hr
  induction n with
  | zero => intro _; exact he
  | succ n ih =>
      intro hr
      have hn := ih (fun j hj => hr j (Nat.lt_trans hj (Nat.lt_succ_self n)))
      have hlast := hr n (Nat.lt_succ_self n)
      simp only [RationalExpTrace.propagate]
      positivity

/-- Rounded allowances dominate, rather than equal, the inherited exact recurrence. -/
theorem propagate_le_outward (bits : ℕ) {e : ℚ} {r : ℕ → ℚ} (he : 0 ≤ e) (n : ℕ)
    (hr : ∀ j < n, 0 ≤ r j) :
    RationalExpTrace.propagate e r n ≤ outwardPropagation bits e r n := by
  revert hr
  induction n with
  | zero => intro _; exact le_up bits e
  | succ n ih =>
      intro hr
      have hrn : ∀ j < n, 0 ≤ r j := fun j hj => hr j (Nat.lt_trans hj (Nat.lt_succ_self n))
      have hn := propagate_nonneg he n hrn
      have hle := ih hrn
      have hu : 0 ≤ outwardPropagation bits e r n := hn.trans hle
      have hsq := mul_le_mul hle hle hn hu
      simp only [RationalExpTrace.propagate, outwardPropagation]
      apply le_trans _ (le_up bits _)
      nlinarith [hsq]

/-- Same checked exponent and trace, now with the prototype's outward allowance. -/
theorem checked_exp_outward_error (bits : ℕ) {w : Coordinates} {B : ℚ} {s M : ℕ}
    {tr : RationalExpTrace.Trace} (hc : RationalExpTrace.check w B s M tr = true) :
    ‖Complex.exp (toComplex w) - toComplex (RationalExpTrace.valueAt tr s)‖ ≤
      (outwardPropagation bits (RationalExpTrace.seedTail B s M + tr.seedRadius)
        (RationalExpTrace.radiusAt tr) s : ℝ) := by
  obtain ⟨_, hB, _, _, _, hseed, hsteps⟩ := (RationalExpTrace.check_iff_valid _ _ _ _ _).mp hc
  have hB0 : 0 ≤ B := by
    have hb := (inBall_iff _ _).mp hB
    have : (0 : ℝ) ≤ B := (norm_nonneg _).trans hb
    exact_mod_cast this
  have hs0 : 0 ≤ tr.seedRadius := by
    have hs := (inBall_iff _ _).mp hseed
    have : (0 : ℝ) ≤ tr.seedRadius := (norm_nonneg _).trans hs
    exact_mod_cast this
  have he : 0 ≤ RationalExpTrace.seedTail B s M + tr.seedRadius := by
    unfold RationalExpTrace.seedTail
    positivity
  have hr : ∀ j < s, 0 ≤ RationalExpTrace.radiusAt tr j := by
    intro j hj
    have hb := (inBall_iff _ _).mp (hsteps j (Finset.mem_range.mpr hj))
    have : (0 : ℝ) ≤ RationalExpTrace.radiusAt tr j := (norm_nonneg _).trans hb
    exact_mod_cast this
  apply (RationalExpTrace.check_sound hc).trans
  change (RationalExpTrace.propagate (RationalExpTrace.seedTail B s M + tr.seedRadius)
      (RationalExpTrace.radiusAt tr) s : ℝ) ≤ _
  exact_mod_cast propagate_le_outward bits he s hr

end GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic
