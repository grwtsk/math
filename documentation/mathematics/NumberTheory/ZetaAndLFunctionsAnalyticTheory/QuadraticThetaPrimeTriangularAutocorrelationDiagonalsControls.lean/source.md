# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a98d21638bc52be9c6bcf1c7d98176445dce49c` · SHA-256 `13c72b258c954096a5ca6b83fceddbff2d3e18807a07cf37481f154c115a83f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationDiagonals
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["fixed positive autocorrelation diagonal has multiplicity N-d",
   "all terms on that diagonal have phase exp(2*pi*i*d*t)",
   "negative diagonal is the conjugate phase",
   "multiplicity divided by N matches triangular coefficient",
   "remaining autocorrelation step is only partitioning the double sum by offsets"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52c6a6d4bdf1a446190efc6da01d41f162882838784e4096e702406e4ad91c95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularAutocorrelationDiagonalsControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
