# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `028944cf9aeb67a1818a3a7c9ef769f4ccc8ed79` · SHA-256 `13e015a5a50191b8467f6c789eb5781daab3e070dee34fcee66898e68581e8fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceFibers
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["every cyclic distance modulo 4X is at most 2X",
   "a fixed distance d has only the two candidate residues d and 4X-d",
   "every cyclic-distance fiber has cardinality at most two",
   "finite pairing multiplicity is source-closed",
   "remaining pairing work is pointwise signed-kernel to norm-sample comparison plus finite regrouping"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceFibersControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f58c1037f3c8ef6182103b25700443a8ddcd1ead7b79245fab3ce68004fdb0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicDistanceFibersControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
