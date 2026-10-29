/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.Fourier.LpSpace

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped FourierTransform
open MeasureTheory

/-- Native L² Fourier normalization is an isometry; angular rescaling is not implicit. -/
theorem l2_parseval (f : Lp (α := ℝ) ℂ 2) : ‖𝓕 f‖^2 = ‖f‖^2 := by
  rw [MeasureTheory.Lp.norm_fourier_eq]
theorem l2_cross_parseval (f g : Lp (α := ℝ) ℂ 2) :
    inner ℂ (𝓕 f) (𝓕 g) = inner ℂ f g := MeasureTheory.Lp.inner_fourier_eq _ _


end GRWTSK.Analysis.Waveform
