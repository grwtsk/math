# Complete source: GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af7608d766eaff879db4a588f04830973503c9de` · SHA-256 `5554f5db4066ce77123191268c91f6e6d0d369f1333a31ad094035a04d0a175f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv

/-! # Classical logarithmic coefficient at zero
This identifies the local zeta coefficient. Matching it to the globally
boundary-normalized Riesz primitive still needs the contour/source bridge. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients

theorem logDeriv_riemannZeta_zero :
    logDeriv riemannZeta 0 = Complex.log (2 * Real.pi) := by
  rw [logDeriv_apply, deriv_riemannZeta_zero, riemannZeta_zero]
  ring

theorem continuousAt_neg_logDeriv_zero :
    ContinuousAt (fun s : ℂ => -logDeriv riemannZeta s) 0 := by
  have ha := analyticOn_riemannZeta 0 (by norm_num)
  exact (ha.deriv.continuousAt.div ha.continuousAt (by rw [riemannZeta_zero]; norm_num)).neg

/-- The regular local coefficient multiplying x in the first-Riesz integrand. -/
theorem classical_linear_coefficient (x : ℝ) :
    -(logDeriv riemannZeta 0) * (x : ℂ) = -(x : ℂ) * Complex.log (2 * Real.pi) := by
  rw [logDeriv_riemannZeta_zero]
  ring
end GRWTSK.NumberTheory.Chebyshev.FirstRieszClassicalCoefficients
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08897c6d414d617b1d1a4c770b070d43afe74f40f1588a21921dfc79e44e3183 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/FirstRieszClassicalCoefficients.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
