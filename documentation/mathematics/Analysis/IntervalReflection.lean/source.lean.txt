/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Historical human/machine authoring split unknown.
Lean and mathlib retain upstream identities, named authors and licenses.
-/
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.Analysis.IntervalReflection

/-!
# Exact reflection of a finite real interval

Reflection uses both endpoints, with Lebesgue interval integrals. The integral
identities are oriented (`a..b`); discrete endpoint atoms and arithmetic boundary
terms are not represented here and must be handled separately when present.
Applying these identities to a research weight requires its actual definition
and the stated integrability hypotheses.
-/


open MeasureTheory


/-- Reflection about the midpoint of the exact pair of endpoints. -/
def intervalReflection (a b t : ℝ) : ℝ := a + b - t



/-- The endpoint reflection is an involution, even for reversed endpoints. -/
theorem interval_reflection_involutive (a b : ℝ) :
    Function.Involutive (intervalReflection a b) := by
  intro t
  dsimp [intervalReflection]
  ring



/-- Reflection preserves the closed interval with exactly these endpoints. -/
theorem interval_reflection_mem_Icc_iff (a b t : ℝ) :
    intervalReflection a b t ∈ Set.Icc a b ↔ t ∈ Set.Icc a b := by
  simp only [Set.mem_Icc, intervalReflection]
  constructor <;> rintro ⟨h₁, h₂⟩ <;> constructor <;> linarith



/-- The reflection-even part of a real function. -/
noncomputable def evenPart (a b : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  (f t + f (intervalReflection a b t)) / 2



/-- The reflection-odd part of a real function. -/
noncomputable def oddPart (a b : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  (f t - f (intervalReflection a b t)) / 2



theorem even_add_odd (a b : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    evenPart a b f t + oddPart a b f t = f t := by
  dsimp [evenPart, oddPart]
  ring



theorem even_part_reflection (a b : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    evenPart a b f (intervalReflection a b t) = evenPart a b f t := by
  simp only [evenPart, interval_reflection_involutive a b t]
  ring



theorem odd_part_reflection (a b : ℝ) (f : ℝ → ℝ) (t : ℝ) :
    oddPart a b f (intervalReflection a b t) = -oddPart a b f t := by
  simp only [oddPart, interval_reflection_involutive a b t]
  ring



/-- Lebesgue interval integration is invariant under this exact reflection. -/
theorem integral_reflection (a b : ℝ) (f : ℝ → ℝ) :
    (∫ t in a..b, f (intervalReflection a b t)) = ∫ t in a..b, f t := by
  simp [intervalReflection, intervalIntegral.integral_comp_sub_left]



/-- An odd integrand has zero integral. This equality also holds under
Mathlib's total-integral convention for nonintegrable functions; any subsequent
linearity argument must separately supply integrability. -/
theorem integral_eq_zero_of_reflection_odd (a b : ℝ) (f : ℝ → ℝ)
    (hodd : ∀ t, f (intervalReflection a b t) = -f t) :
    (∫ t in a..b, f t) = 0 := by
  have h := integral_reflection a b f
  simp only [hodd, intervalIntegral.integral_neg] at h
  linarith



/-- Reflection-even and reflection-odd sectors have zero cross integral. -/
theorem integral_even_mul_odd (a b : ℝ) (f g : ℝ → ℝ) :
    (∫ t in a..b, evenPart a b f t * oddPart a b g t) = 0 := by
  apply integral_eq_zero_of_reflection_odd
  intro t
  rw [even_part_reflection, odd_part_reflection, mul_neg]



/-- The reverse cross integral vanishes as well. -/
theorem integral_odd_mul_even (a b : ℝ) (f g : ℝ → ℝ) :
    (∫ t in a..b, oddPart a b f t * evenPart a b g t) = 0 := by
  simpa only [mul_comm] using integral_even_mul_odd a b g f



/-- Pointwise real polarization integrated over the exact oriented interval.
Both square-sector integrability obligations remain explicit. -/
theorem integral_product_eq_signed_squares (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t) ^ 2) volume a b)
    (hminus : IntervalIntegrable (fun t ↦ (f t - g t) ^ 2) volume a b) :
    (∫ t in a..b, f t * g t) =
      ((∫ t in a..b, (f t + g t) ^ 2) - (∫ t in a..b, (f t - g t) ^ 2)) / 4 := by
  calc
    (∫ t in a..b, f t * g t) =
        ∫ t in a..b, ((f t + g t) ^ 2 - (f t - g t) ^ 2) / 4 := by
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ = _ := by rw [intervalIntegral.integral_div, intervalIntegral.integral_sub hplus hminus]



/-- Exact orthogonal integral decomposition. Integrability of all four sector
products is explicit; in particular no unproved regularity of an RH weight is
silently introduced by this generic identity. -/
theorem integral_product_eq_even_add_odd (a b : ℝ) (f g : ℝ → ℝ)
    (hpp : IntervalIntegrable (fun t ↦ evenPart a b f t * evenPart a b g t) volume a b)
    (hpm : IntervalIntegrable (fun t ↦ evenPart a b f t * oddPart a b g t) volume a b)
    (hmp : IntervalIntegrable (fun t ↦ oddPart a b f t * evenPart a b g t) volume a b)
    (hmm : IntervalIntegrable (fun t ↦ oddPart a b f t * oddPart a b g t) volume a b) :
    (∫ t in a..b, f t * g t) =
      (∫ t in a..b, evenPart a b f t * evenPart a b g t) +
      (∫ t in a..b, oddPart a b f t * oddPart a b g t) := by
  calc
    (∫ t in a..b, f t * g t) = ∫ t in a..b,
        ((evenPart a b f t * evenPart a b g t + evenPart a b f t * oddPart a b g t) +
        oddPart a b f t * evenPart a b g t) + oddPart a b f t * oddPart a b g t := by
      apply intervalIntegral.integral_congr
      intro t _
      dsimp [evenPart, oddPart]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add ((hpp.add hpm).add hmp) hmm,
        intervalIntegral.integral_add (hpp.add hpm) hmp,
        intervalIntegral.integral_add hpp hpm,
        integral_even_mul_odd, integral_odd_mul_even]
      ring




end GRWTSK.Analysis.IntervalReflection
