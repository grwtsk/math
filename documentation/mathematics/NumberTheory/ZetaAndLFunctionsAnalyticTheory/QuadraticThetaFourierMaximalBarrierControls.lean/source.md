# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaFourierMaximalBarrierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcb57d6405843a1fabe5e6dddf07346b11a70d1d` · SHA-256 `8704796e54f73dbb0ec3474ff3e6f36681d03a347ed9f8942188ac64e88b7dc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierMaximalBarrierControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["Parseval controls L2 energy, not an octave supremum",
   "naive N-mode maximalization costs sqrt(N)",
   "bandwidth exponent beta gives theta exponent (1+beta)/2",
   "beta=1 gives exponent 1",
   "beta=1/2 gives exponent 3/4",
   "a genuine Fourier maximal readout remains open"]

example :
    fourierMaximalExponent 1 = 1 :=
  fourierMaximalExponent_one

example :
    fourierMaximalExponent ((1 : ℝ) / 2) = (3 : ℝ) / 4 :=
  fourierMaximalExponent_half

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaFourierMaximalBarrierControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f9af639f474b459d5925fa6d7084b84154e032b8420c08791a150195d83edb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaFourierMaximalBarrierControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
