# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenCoordinateNecessaryDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83c2b9780f7fc8f1778194a23e7e996c4f27ac84` · SHA-256 `3b131e5bcab145cd4e8ef9f8143850fc0831a03622595d8781492dcfcf814f21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateNecessaryDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls

open GRWTSK.RiemannHypothesis

def firstNecessaryChannels : List String :=
  ["mass0", "mass1", "k=-1 weighted DFT", "k=+1 weighted DFT"]

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateNecessaryDecayControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8af396b23225fc8ed7833beb3abd6ac257731dd2f07e0ade58d37dcefd22168a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicGreenCoordinateNecessaryDecayControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
