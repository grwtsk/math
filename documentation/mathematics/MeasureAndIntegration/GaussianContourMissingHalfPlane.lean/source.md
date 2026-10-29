# Complete source: GRWTSK.NumberTheory.LSeries.Checks.Negative.GaussianContourMissingHalfPlane

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `537feee540df7dacca6a56de51b0cb599818d90c` · SHA-256 `64ba991461f9816a2e2b8dbc9ddcf8e69fe75164efc1e35f712c66faede3e9c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentional missing-half-plane control. Apache-2.0. -/
import GRWTSK.NumberTheory.LSeries.Checks.Positive.GaussianContour
open GRWTSK.NumberTheory.LSeries.GaussianContour

-- Intended rejection: non-strict sigma >= 1 cannot supply the strict half-plane.
example : Summable (fun n : ℕ => ∫ v : ℝ, ‖gaussianZetaSummand 1 1 n v‖) := by
  exact gaussianZetaSummand_integral_norm_summable 1 1 (le_refl (1 : ℝ)) (by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dea00114f69a69d5bcbe01959d9cb86c9fa7c09ee99d17d3ad4b9d029dbcadb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/LSeries/Checks/Negative/GaussianContourMissingHalfPlane.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
