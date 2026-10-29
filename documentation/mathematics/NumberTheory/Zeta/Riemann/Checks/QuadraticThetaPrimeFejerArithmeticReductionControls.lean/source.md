# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerArithmeticReductionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb93ef69fd49d3cd0eab994f9b4c55bec82b26a8` · SHA-256 `7407cb5d927a6cb162467bbb20092a4d76a7821c20b8a5f99f70efbe0a27f17c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerArithmeticReduction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticReductionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["sharp and smoothed discrepancies use the same arithmetic atom",
   "exact sharp-minus-smoothed error is an atom times weight-error sum",
   "safe atom envelope is 1+log(4X)",
   "arithmetic error reduces to universal L1 step-smoothing error",
   "remaining supplier is purely combinatorial L1 first-moment bound"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerArithmeticReductionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa3b56ca83d88e976ceaf48d9d184519e1e7d5550c0f00a602c7edaa0b2f48db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerArithmeticReductionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
