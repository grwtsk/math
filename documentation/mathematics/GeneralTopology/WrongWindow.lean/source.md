# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace.Checks.Negative.WrongWindow

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d907f2eabb25807e6a7bf685877e20c8b916ff0` · SHA-256 `b77ac269f8946a92ba99978920345a9c0f813ea2f838cc27892938f7add8d9a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {a T : ℝ} (ha : 0 ≤ a) (haT : a ≤ T) :
    noteWindowLaplace (causalShift a f) z T =
      Complex.exp (-z*a)*noteWindowLaplace f z T := by
  exact noteWindowLaplace_causalShift hf hf0 z ha haT
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c191888a604c97bd298001ffb89898ab42a3adfe79bf57ea9bfcec29b1f41573 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace/Checks/Negative/WrongWindow.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
