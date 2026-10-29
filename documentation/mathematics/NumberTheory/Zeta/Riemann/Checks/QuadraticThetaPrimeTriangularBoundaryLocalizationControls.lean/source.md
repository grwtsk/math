# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularBoundaryLocalizationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bdc06107fb0ed110b88a7dd5a1484c4c45716d9` · SHA-256 `2e70d8b963b25589f626ac413f49dc8d697792860fa90ad38d93e655ec1a13f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularBoundaryLocalization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularBoundaryLocalizationControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["the previous boundary claim is provably vacuous",
   "localized prime mass in length H below 4X is <= H*log(4X)",
   "corrected localization data names the actual approximation error",
   "actual kernel localization into width ceil(X/N) remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularBoundaryLocalizationControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1294bd73e6cd7acff9c61ca5c84ea48741397c397446928ba28d6638bedc78be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularBoundaryLocalizationControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
