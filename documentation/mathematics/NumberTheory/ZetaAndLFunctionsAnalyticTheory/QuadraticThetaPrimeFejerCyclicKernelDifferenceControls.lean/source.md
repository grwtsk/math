# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d1e060b56832e78ca7d89db756cb9e8a35a2dfe` · SHA-256 `ea88d989b27c461e7c53dbcec7bbfa1312b424adb9fd89d9ecfe119645ffa472`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicKernelDifference
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["signed sampled kernel is periodic with arbitrary lattice period",
   "equal ZMod residues give equal signed sampled-kernel values",
   "cyclic residue difference equals integer difference modulo 4X",
   "ArithmeticCyclicKernelDifferenceClaim is discharged",
   "arithmetic/cyclic prefix bridge is reduced to finite reindexing only"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicKernelDifferenceControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fb0dab012e9958997d672e259f5bd7fc73f9ef6aea3931e49ecf127e9877b0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicKernelDifferenceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
