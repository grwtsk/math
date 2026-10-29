# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a366b095393caed97c67463f5f0b81537f84f2e0` · SHA-256 `24e97f85d9885d08231702a9b02527de8c975a446ec0245b8fabcd45835e00f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicTranslationSubadditivity
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["generic cyclic translation L1 is subadditive",
   "natural-multiple shifts telescope from the unit shift",
   "reverse shift is represented by L-r.val",
   "minimum of forward and reverse lengths gives cyclic distance",
   "CyclicSharpTranslationTelescopingClaim is discharged",
   "remaining smoothing supplier is unit translation boundary control only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8492d21a6e9e5a9dae8e0756ed58da8a286ff7ed63e8f12234b9ef932a589185 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicTranslationSubadditivityControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
