# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `408a212e1afc64104fdd09e08e4f95a9fecb551b` · SHA-256 `23d0d40f4104695d8394c756639adeff39aa295ae57d9688bf04a930725d6241`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform

/-- Generic exact return, preserving real exponents and the complete error. -/
theorem polynomial_return {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR * (1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce * (1+T)^s) :
    ∀ T, 0 ≤ T → X T ≤ (CR+Ce)*(1+T)^(max r s) := by
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have hpR := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r s)
  have hpE := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r s)
  rw [hid T hT]
  calc
    R T + e T ≤ CR*(1+T)^r + Ce*(1+T)^s := add_le_add (hR T hT) ((le_abs_self _).trans (he T hT))
    _ ≤ CR*(1+T)^(max r s) + Ce*(1+T)^(max r s) :=
      add_le_add (mul_le_mul_of_nonneg_left hpR hCR) (mul_le_mul_of_nonneg_left hpE hCe)
    _ = _ := by ring


end GRWTSK.Analysis.Waveform
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcec8e698d05c6278c8de0f35c1ea7269e54bf9d06afc40b11ac5819b370d1ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PolynomialErrorBound__SourceOccurrence309f0842c746681854d1e8ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
