# Experiments — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07975214e7a6e89001e708b839bcc312908e4fde` · SHA-256 `07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SUCAS.Realization
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
open MeasureTheory Set
open FormalResearch.SUCAS.Realization
open FormalResearch.RiemannHypothesis.SourcePairing

example : (∫ x : ℝ in (-1)..1, ((1 - x ^ 2) ^ 4) ^ 2) = (65536 / 109395 : ℝ) := by
  have expand : (fun x : ℝ ↦ ((1 - x ^ 2) ^ 4) ^ 2) =
      (fun x ↦ 1 - 8*x^2 + 28*x^4 - 56*x^6 + 70*x^8 - 56*x^10 + 28*x^12 - 8*x^14 + x^16) := by
    funext x; ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
    intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a5ab633dab4d886f0f054e87d2ef9ffbdecf28fe0edfab3551445f5f02b53c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Experiments/Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
