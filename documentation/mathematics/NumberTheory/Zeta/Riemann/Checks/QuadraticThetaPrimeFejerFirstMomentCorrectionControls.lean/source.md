# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerFirstMomentCorrectionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45a10a656fe380f01d250ff70d01f2c5fd59a4d4` · SHA-256 `861c40a5cdc8cdf688fca557c0ee700edee1b471522bd01a577a286796aa02fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentCorrection
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentCorrectionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["plain sampled-kernel mass is not the correct sharp-step error budget",
   "displacement d crosses d boundary positions",
   "correct budget is the first moment sum d*kappa(d)",
   "period-4X square decay gives d*kappa(d) <= X/(N*d)",
   "finite harmonic summation is isolated explicitly",
   "remaining arithmetic theorem is the sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFirstMomentCorrectionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c7575b91d04da24a67373b1444cedfe03448a84cf33fcd3857c6f0f030d05cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerFirstMomentCorrectionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
