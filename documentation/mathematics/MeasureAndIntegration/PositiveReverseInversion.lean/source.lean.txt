/- Reverse Mellin consumers. Apache 2.0.
Mathematical direction grwtsk contributors; implementation OpenAI Codex.
Imported OpenAI and Mathlib results retain their authorship and licenses. -/
import GRWTSK.Analysis.MellinTransform.ReverseInversion
open MeasureTheory
open GRWTSK.Analysis.MellinTransform.ReverseInversion

example (σ : ℝ) (F : ℂ → ℂ) (f : ℝ → ℂ)
    (hf : MellinConvergent f (σ : ℂ))
    (hF : Integrable (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hc : Continuous (fun y : ℝ => F ((σ : ℂ) + 2 * Real.pi * y * Complex.I)))
    (hr : ∀ x : ℝ, 0 < x → f x = mellinInv σ F x) (y : ℝ) :
    mellin f ((σ : ℂ) + 2 * Real.pi * y * Complex.I) =
      F ((σ : ℂ) + 2 * Real.pi * y * Complex.I) :=
  mellin_mellinInv_eq σ F f hf hF hc hr y

example (y : ℝ) :
    mellin logarithmicGaussian (2 * Real.pi * y * Complex.I) =
      Complex.exp (-(Real.pi : ℂ) * (y : ℂ) ^ 2) := by
  rw [logarithmicGaussian_mellin, gaussianMellin_on_line]

example : logarithmicGaussian 1 ≠ 0 := by
  rw [logarithmicGaussian_one]
  exact one_ne_zero

example : mellin logarithmicGaussian 0 = 1 := by
  simpa [gaussianMellin] using logarithmicGaussian_mellin 0
