# Complete source: GRWTSK.Analysis.Energy.Checks.Negative.WrongPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c0e143ea1e692d33d3f01d4a490fbb9f1455c87` · SHA-256 `bf13ad1ddc0561fca9b54c9b4a34a129dac97ba1f6d0f7c403fdcf51a736c6f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
open GRWTSK.LinearAlgebra.AlmostMathieu

-- Must fail: multiplying the unscaled phase by 2π changes equation (1.1).
example (α coupling θ : ℝ) (n : ℤ) :
    potential α coupling θ n =
      2 * coupling * Real.cos (2 * Real.pi * (α * n + θ)) := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfc55e256b325f28747e5db2857cbb2b811ca294c20ce62dfd9a59f70d94bc55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Energy/Checks/Negative/WrongPhase.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
