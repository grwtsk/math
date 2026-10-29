# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicDistanceSampleControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83e21c550370ce171c0a8375a32a99db67a4416b` · SHA-256 `c6ab0ef2774d27fadecea14c7ccf4a6d700031b08f325d4c64d789ecb40fb74a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceSample
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceSampleControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["geometric block satisfies G(-t)=conj(G(t))",
   "symmetric triangular kernel is even",
   "signed lattice sample is bounded by norm sample",
   "reflected residue L-d has the same kernel norm as d",
   "cyclic kernel sample is bounded by norm sample at cyclic distance",
   "remaining factor-four work is finite regrouping by distance only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicDistanceSampleControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84350157bd8fe9ecb70661d04a490a4bcf7017702d7228d15756a32fbf41cf09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicDistanceSampleControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
