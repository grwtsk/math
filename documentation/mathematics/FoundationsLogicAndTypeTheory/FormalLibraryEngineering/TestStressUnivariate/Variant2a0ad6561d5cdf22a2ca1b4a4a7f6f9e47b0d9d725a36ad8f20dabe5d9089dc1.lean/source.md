# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressUnivariate.Variant2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d656ff48f9c23a2295dca8d838b9aae01fbaa160` · SHA-256 `2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

open Set

-- Univariate stress tests for interval_bound.
example : ∀ x ∈ Icc (0 : ℝ) 1, Real.exp x ≤ 3 := by
  interval_bound

example : ∀ x ∈ Icc (-2 : ℝ) 2, Real.sin x + Real.cos x ≤ 2 := by
  interval_bound

example : ∀ x ∈ Icc (-1 : ℝ) 1, x ^ 4 + x ^ 2 ≤ (2 : ℚ) := by
  interval_bound

example : ∀ x ∈ Icc (0 : ℝ) 4, Real.sqrt x ≤ 2 := by
  interval_bound

example : ∀ x ∈ Icc (0 : ℝ) 2, Real.exp (Real.sin x) ≤ 3 := by
  interval_bound
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b49c2570d12b0e066945967e97993807f4a020b437490e101dcdbad920a98e9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestStressUnivariate/Variant2a0ad6561d5cdf22a2ca1b4a4a7f6f9e47b0d9d725a36ad8f20dabe5d9089dc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
