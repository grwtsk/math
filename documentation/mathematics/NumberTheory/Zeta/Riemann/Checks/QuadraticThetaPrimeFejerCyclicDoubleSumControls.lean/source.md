# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicDoubleSumControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d3e77d3be93e6af865ec5abdd53fbc4e8176f43` · SHA-256 `7d09b2479e45ee57fe251bd0038d2032487f5290fdf4eeb24e9ae59209e13eb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDoubleSum
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDoubleSumControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["inner cyclic sum reindexes by y -> r=x-y",
   "translated point simplifies to x-r",
   "finite x/r sums are swapped exactly",
   "kernel factor pulls out of the inner x-sum",
   "CyclicConvolutionDoubleSumReindexingClaim is discharged",
   "CyclicConvolutionL1ByTranslationClaim is discharged",
   "remaining universal supplier is interval translation cardinality only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDoubleSumControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2adf60af26c8506924c7a26348a1e575226d9cb23e192dfaf639dc3a9ce20024 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicDoubleSumControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
