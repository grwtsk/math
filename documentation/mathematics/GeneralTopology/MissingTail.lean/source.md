# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace.Checks.Negative.MissingTail

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a820b943b989e5148ccdd910e76ef3f2f2d80b0` · SHA-256 `b891ea1e2a20b4f1b8865c4e803a87445e5bb0abda7c1ba90fe587aad6d63da5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace
open GRWTSK.RiemannHypothesis.CCC
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T := by
  exact noteWindowLaplace_primeFilter hf hf0 z hp hpT
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d28b2cd875231b7e67f8a08d3243c2a01d9766961018d3d952099d7149406eb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace/Checks/Negative/MissingTail.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
