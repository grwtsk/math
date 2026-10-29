# Complete source: GRWTSK.Analysis.MellinTransform.Checks.Positive.ReverseInversion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e32c15eb2ba1826a0e964d78fbc9f1bca1a8f500` · SHA-256 `39e177c3bb2da0e92037758fddf450d1700e1237fe16ee865cbfe892520322b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37a420d8820cd89b93013572979b799f3a327afde4c2421f8aced1f03e2c6cbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ReverseInversion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
