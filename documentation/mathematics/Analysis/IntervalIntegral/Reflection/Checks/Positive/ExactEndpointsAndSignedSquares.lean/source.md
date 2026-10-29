# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Positive.ExactEndpointsAndSignedSquares

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e369ef95c0abce4f3da8469a6036acee2a850b54` · SHA-256 `53697294073b2a9832b23079943e08e1cf8c5d55c3788c191c8c4a972ea0b140`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) : Function.Involutive (intervalReflection a b) := interval_reflection_involutive a b
example (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t)^2) volume a b)
    (hminus : IntervalIntegrable (fun t ↦ (f t - g t)^2) volume a b) :
    (∫ t in a..b, f t * g t) = ((∫ t in a..b, (f t + g t)^2) - (∫ t in a..b, (f t - g t)^2))/4 :=
  integral_product_eq_signed_squares a b f g hplus hminus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eed68c2ba981b8c2e29975b922df1137b325e31f64d1cd08f38e1d427350852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Positive/ExactEndpointsAndSignedSquares.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
