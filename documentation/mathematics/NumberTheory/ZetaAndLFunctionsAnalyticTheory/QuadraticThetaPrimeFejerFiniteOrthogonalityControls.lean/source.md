# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e79a83e64475e2d7f05f86e05aa59b55ca021a0` · SHA-256 `12fa2579fbbdb83b1fe6be7331a28227d91bd6970ebea1195372acd541659784`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["period-4X mode ratio has full-period power one",
   "nonzero mode modulo 4X gives ratio not equal to one",
   "lattice Fourier mode equals a geometric power",
   "finite geometric sum proves nonzero mode orthogonality",
   "PeriodFourXSampledKernelMassOneClaim is discharged",
   "discrete reproduction prerequisites are now complete",
   "remaining supplier is sharp-step convolution comparison"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteOrthogonalityControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba912d1b376689834b6f3053ec203ec0f7e07475cf03e8dbd26e5e88db3548ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerFiniteOrthogonalityControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
