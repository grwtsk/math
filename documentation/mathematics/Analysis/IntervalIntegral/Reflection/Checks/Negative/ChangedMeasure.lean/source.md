# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Negative.ChangedMeasure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `607e1c3ed107be2a0aa154928a8f508ff5268823` · SHA-256 `a24e35c0beefdaac435ba34c6e17b82420dc03e62791e5be8f28712e63e46a9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b : ℝ) (f : ℝ → ℝ) :
    (∫ t in a..b, f (intervalReflection a b t) ∂Measure.dirac a) = (∫ t in a..b, f t ∂Measure.dirac a) :=
  integral_reflection a b f
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62f691aa15d6dc9d3d935c36d863c6d1e052437736c9de17af93d0d5f421234a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntervalIntegral/Reflection/Checks/Negative/ChangedMeasure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
