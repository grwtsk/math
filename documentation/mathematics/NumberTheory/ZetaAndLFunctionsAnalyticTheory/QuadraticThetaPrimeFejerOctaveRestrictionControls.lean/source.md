# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerOctaveRestrictionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22ab6cf544375aec051919cd7ddca99d906e0cda` · SHA-256 `166bacab9db386cdd0ba37d85d6c9c789650525eb63a44be5dbc2a79de97fc84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOctaveRestriction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOctaveRestrictionControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["arithmetic octave L1 is reindexed through the endpoint-aware residue equivalence",
   "sharp and smoothed arithmetic weights are replaced by their cyclic counterparts",
   "octave residue subtype sum is bounded by the full cyclic sum by nonnegativity",
   "OctaveL1LeCyclicL1Claim is discharged",
   "no arithmetic indexing gap remains before first-moment propagation"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerOctaveRestrictionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ea4274ed277d375e401276b1aa236be9e41f828608947846d37e14610466711 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerOctaveRestrictionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
