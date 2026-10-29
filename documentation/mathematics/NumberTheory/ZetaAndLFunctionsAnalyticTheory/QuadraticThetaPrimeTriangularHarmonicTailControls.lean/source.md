# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95cd56d1a510da7377f94c2031c52d06b9ce90d0` · SHA-256 `a05f886c53f71f90ef3f548c78b16c6cf80541bdf467bdd2d06e44d3d2aed14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHarmonicTail
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["triangular tail modeled by pointwise leakage O((X/N)/d)",
   "summing over lattice distance costs harmonic(X)",
   "harmonic(X) <= 1+log X",
   "balanced N~X^(1/3) keeps tail power at 2/3 up to logs",
   "actual pointwise kernel leakage theorem remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeTriangularHarmonicTailControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b41162f5c335b68303d3713f79d107f9cb47cdeda4e7f3ea32530435500655 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeTriangularHarmonicTailControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
