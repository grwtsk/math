# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Negative.FiniteHeights

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40b06bd21022d0726b85a72c1fb2aaa5aab09363` · SHA-256 `33d67935571adc34b671552827eab06e0466d1a1506a6a3a5374748ee17b66c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
open GRWTSK.NumberTheory.Zeta.Riemann
-- One bounded enclosure is not the all-natural-height premise.
example (N : ℕ) (h : RHThrough N) : _root_.RiemannHypothesis :=
  riemannHypothesis_iff_all_heights.mpr h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cd210b956b9f8154bf33eb213267756709169470d3664af26803ceaae0768ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Negative/FiniteHeights.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
