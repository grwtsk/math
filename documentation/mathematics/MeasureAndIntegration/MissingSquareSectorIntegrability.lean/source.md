# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Negative.MissingSquareSectorIntegrability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ecd748a00459e0ca24e54fbe23675e3810ec323` · SHA-256 `7e70ec75680aebdebe62c61d7da5a8ad266208e9b3a3ce6bf60039750852beac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f g : ℝ → ℝ)
    (hplus : IntervalIntegrable (fun t ↦ (f t + g t)^2) volume a b) :
    (∫ t in a..b, f t * g t) = ((∫ t in a..b, (f t + g t)^2) - (∫ t in a..b, (f t - g t)^2))/4 :=
  integral_product_eq_signed_squares a b f g hplus
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c227924d22e1c3f780c7aacd27bc5831dee5da7260200d2ee2950effb969168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Negative/MissingSquareSectorIntegrability.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
