# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5caf0c75337d28cd035e9f68b0d6d1ec170a1ba7` · SHA-256 `85c44226cf8faaa187e418dffd1d5d2a0ed140dd4e625dba1407c0b7f9cab829`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimePartialDiscrepancy
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

def truncatedFourierLowExponent (β : ℝ) : ℝ := (1 + β) / 2
def truncatedFourierBoundaryExponent (β : ℝ) : ℝ := 1 - β

theorem truncatedFourierLow_le_threeQuarters_iff {β : ℝ} :
    truncatedFourierLowExponent β <= (3 : ℝ) / 4 ↔
      β <= (1 : ℝ) / 2 := by
  unfold truncatedFourierLowExponent
  constructor <;> intro h <;> linarith

theorem truncatedFourierBoundary_le_threeQuarters_iff {β : ℝ} :
    truncatedFourierBoundaryExponent β <= (3 : ℝ) / 4 ↔
      (1 : ℝ) / 4 <= β := by
  unfold truncatedFourierBoundaryExponent
  constructor <;> intro h <;> linarith

theorem truncatedFourierBoth_le_threeQuarters_iff {β : ℝ} :
    (truncatedFourierLowExponent β <= (3 : ℝ) / 4 ∧
      truncatedFourierBoundaryExponent β <= (3 : ℝ) / 4) ↔
      ((1 : ℝ) / 4 <= β ∧ β <= (1 : ℝ) / 2) := by
  rw [truncatedFourierLow_le_threeQuarters_iff,
    truncatedFourierBoundary_le_threeQuarters_iff]
  constructor
  · rintro ⟨hupper, hlower⟩
    exact ⟨hlower, hupper⟩
  · rintro ⟨hlower, hupper⟩
    exact ⟨hupper, hlower⟩

@[simp] theorem truncatedFourierLowExponent_oneThird :
    truncatedFourierLowExponent ((1 : ℝ) / 3) = (2 : ℝ) / 3 := by
  norm_num [truncatedFourierLowExponent]

@[simp] theorem truncatedFourierBoundaryExponent_oneThird :
    truncatedFourierBoundaryExponent ((1 : ℝ) / 3) = (2 : ℝ) / 3 := by
  norm_num [truncatedFourierBoundaryExponent]

def PrimeDFTSmoothingReadoutAt (β ρ : ℝ) : Prop :=
  AllDyadicPrimeOnlyFourierCoordinateBound →
    DyadicPrimePartialDiscrepancyLogSqAt ρ

theorem sevenEighths_DFTSmoothingReadout_to_partialDiscrepancy
    {β : ℝ}
    (hfourier : AllDyadicPrimeOnlyFourierCoordinateBound)
    (hsmooth : PrimeDFTSmoothingReadoutAt β ((7 : ℝ) / 8)) :
    SevenEighthsPrimePartialDiscrepancy :=
  hsmooth hfourier

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ca30e2aaf588f739a7f40fee018039c0457b8e9f8db581102fc50747c893b7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingWindow.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
