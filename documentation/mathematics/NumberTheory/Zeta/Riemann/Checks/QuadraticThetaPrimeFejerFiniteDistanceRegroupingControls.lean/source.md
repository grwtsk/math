# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2091a1f1eba6b3899ec1e2f408bb64960ca69790` · SHA-256 `f16362bfd900675640fb1b8a42415cf925f7c441d35bd057f6f325188d4822f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["residue sum is regrouped exactly by cyclic distance",
   "each distance fiber contributes at most four d times the norm sample",
   "zero-distance term vanishes",
   "grouped Icc[0,2X] sum equals the factor-four positive first moment",
   "CyclicDistanceWeightedKernelPairingClaim is discharged",
   "corrected factor-four L1 and arithmetic Fejer comparisons are source-proved"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a40ab3b8a99b8ce1dc866cea6fc67c43862b7ed57afbad097ca0b9ead42c0497 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerFiniteDistanceRegroupingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
