# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPrimeOnlyNecessaryCancellationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a3c977b1a590fb7ac5dc1a17d31a3968d33a8f2` · SHA-256 `74ab81e290235eff0cb5dc1f0d07f2d03961c1fb3d3b3645d98b50cadf031705`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyNecessaryCancellation
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls

def hardPrimeChannels : List String :=
  ["sum log(p)/p - log 2",
   "(theta(2X)-theta(X))/X - 1",
   "k=-1 prime weighted DFT coordinate",
   "k=+1 prime weighted DFT coordinate"]

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyNecessaryCancellationControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9451e2296c044bf419ff2ec81b1a393ac22bf0498ab8db03553a27090444f241 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPrimeOnlyNecessaryCancellationControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
