/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalRoundedArithmetic

set_option autoImplicit false

/-!
# Exact rational complex quotients and one final rounding

These operations are total rational algebra. A quotient identity is not a
nonzero-denominator certificate. The tent caller separately checks a POSITIVE
lower bound using rational squared norms. No floating-point operations occur.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalRoundedArithmetic

namespace QComplex

def sub (z w : QComplex) : QComplex := ⟨z.re - w.re, z.im - w.im⟩
def normSq (z : QComplex) : ℚ := z.re ^ 2 + z.im ^ 2

def div (z w : QComplex) : QComplex :=
  ⟨(z.re * w.re + z.im * w.im) / normSq w,
    (z.im * w.re - z.re * w.im) / normSq w⟩

@[simp] theorem embed_sub (z w : QComplex) : embed (sub z w) = embed z - embed w := by
  apply Complex.ext <;> simp [embed, sub]

@[simp] theorem cast_normSq (z : QComplex) : (normSq z : ℝ) = ‖embed z‖ ^ 2 := by
  rw [← Complex.normSq_eq_norm_sq]
  simp [normSq, Complex.normSq_apply, embed, pow_two]

/-- Exact algebra, including the inherited totalized zero convention. Sound
numerical division still requires the separate positive-denominator guard. -/
@[simp] theorem embed_div (z w : QComplex) : embed (div z w) = embed z / embed w := by
  apply Complex.ext <;> simp [embed, div, normSq, Complex.div_re, Complex.div_im,
    Complex.normSq_apply, pow_two] <;> ring

/-- Squared rational guards suffice; no computed square root is trusted. -/
theorem denominator_lower (h d : ℚ) (c : QComplex)
    (hh : 0 < h) (hd : 0 < d)
    (hbound : d ^ 2 ≤ h ^ 2 * normSq c * normSq (add c one)) :
    (d : ℝ) ≤ (h : ℝ) * ‖embed c‖ * ‖embed c + 1‖ := by
  have hhR : (0 : ℝ) < h := by exact_mod_cast hh
  have hdR : (0 : ℝ) < d := by exact_mod_cast hd
  have hsq : (d : ℝ) ^ 2 ≤ (h : ℝ) ^ 2 * ‖embed c‖ ^ 2 * ‖embed c + 1‖ ^ 2 := by
    have ht : (d : ℝ) ^ 2 ≤ (h : ℝ) ^ 2 * (normSq c : ℝ) *
        (normSq (add c one) : ℝ) := by exact_mod_cast hbound
    simpa only [cast_normSq, embed_add, embed_one] using ht
  have hp : 0 ≤ (h : ℝ) * ‖embed c‖ * ‖embed c + 1‖ := by positivity
  have he : ((h : ℝ) * ‖embed c‖ * ‖embed c + 1‖) ^ 2 =
      (h : ℝ) ^ 2 * ‖embed c‖ ^ 2 * ‖embed c + 1‖ ^ 2 := by ring
  nlinarith

end QComplex

/-- One final quantization charges BOTH components and rounds its error upward.
This is used for the quotient and again, separately, for final accumulation. -/
theorem initialState_sound (bits : ℕ) (v : QComplex) (e : ℚ) (a : ℂ)
    (he : ‖a - QComplex.embed v‖ ≤ (e : ℝ)) :
    ‖a - QComplex.embed (initialState bits v e).value‖ ≤
      ((initialState bits v e).error : ℝ) := by
  simpa only [run, DyadicExponentialEnclosure.squareValue] using
    run_sound bits v e a he 0

end GRWTSK.Analysis.Complex.RationalRoundedArithmetic
