# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeDFTSmoothingWindowControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c272dcbdb784decf7ceb9379c4cc3c5e9f7d71c` · SHA-256 `8fde9a9370fa8d27e6b29a38b716bd612a54ba26bedd7e691e95d70b489c4bb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingWindow
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingWindowControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["N_X~X^beta low-mode cost exponent is (1+beta)/2",
   "boundary width X/N_X gives power exponent 1-beta up to logs",
   "both fit 3/4 exactly for 1/4 <= beta <= 1/2",
   "beta=1/3 balances both schematic powers at 2/3",
   "the actual smoothed DFT reconstruction theorem remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingWindowControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20ca2761b13b4d77538ee354e7eeca5e5a2a94549c694d656eec59a0d8ae1a5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeDFTSmoothingWindowControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
