# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NNReal.Variante05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdd75d5d4d4068831d5284be97d78d9538b486d7` · SHA-256 `e05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module
import Mathlib.Basic.ENNReal.Inv
import Mathlib.Basic.ENNReal.Operations
import Mathlib.Tactic.Linarith.NNRealPreprocessor

open NNReal

example {a b c : ℝ≥0} (h1 : 2 * a < b + 1) (h2 : b ≤ c) : a < (c + 1) / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : 3 * a + 2 * b ≤ 5 * c + 7) (h2 : c ≤ d) : a ≤ (5 * d + 7) / 3 := by
  linarith

example {a b c d e : ℝ≥0} (h1 : (a + b) / 2 + c ≤ d) (h2 : d ≤ e) : a ≤ 2 * e := by
  linarith

example {a b c d : ℝ≥0} (h1 : (a + 3 * b) / 4 < c + 1) (h2 : c ≤ d) : a < 4 * (d + 1) := by
  linarith

example {a b c d : ℝ≥0} (h1 : 2 * a + b ≤ 3 * c) (h2 : c < d + 5) : a < (3 * (d + 5)) / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : a + b ≤ c) (h2 : c ≤ d / 2) : a ≤ d / 2 := by
  linarith

example {a b c d : ℝ≥0} (h1 : a + b ≤ 2 * c + 3) (h2 : c ≤ d) : a ≤ 2 * d + 3 := by
  linarith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4460180ea15c08ba915f3600a48ec471a1fbd314c8882b59c58398eb8787202d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NNReal/Variante05112cf32447a6dadb58546201cd8e44ef8cd23fe2a8974176b5fe058ce8925.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
