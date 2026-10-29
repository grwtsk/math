# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Checks.Negative.MissingSquarefree

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08b585d53193ac6189efe6fec442d29bfb6d698d` · SHA-256 `1ef6246830c92f69ecad07e3fe7ceaf0aaaf8a087ffacf780b15b4f0f9596569`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.PartialBounds
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: the squarefree subfamily theorem needs its hypothesis.
example (t : PrimitiveAdditiveTriple) (ε : ℝ) (hε : 0 ≤ ε) :
    (t.c : ℝ) ≤ Real.rpow (t.radical : ℝ) (1 + ε) := by
  exact t.bound_of_squarefree ε hε
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bad8d1e1fe2949bf7cbd4adb0ae5316a31b9ffafa0ba4716216878a4c9249c63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/MissingSquarefree.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
