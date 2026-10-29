# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeFejerCyclicPrefixReindexingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ce4d0f1f5904afa05d4a2ae8aea240d1d8c69d2` · SHA-256 `5232ab2f18bde7f40aa9540fe723bd436b3d3cac73bb2942883bdc921a53c059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicPrefixReindexing
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicPrefixReindexingControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["endpoint-aware representative recasts to the original ZMod residue",
   "sharp cyclic residues are equivalent to arithmetic q in (2X,m]",
   "cyclic convolution reindexes exactly through that equivalence",
   "ArithmeticCyclicPrefixReindexingClaim is discharged",
   "ArithmeticPrefixWeightEqualsCyclicConvolutionClaim is discharged",
   "remaining work is universal L1 contraction and translation counting"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeFejerCyclicPrefixReindexingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c719e0087d0a1213515ab495a45f096b6ae6a0cd198db810a45af64fcfcf3ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeFejerCyclicPrefixReindexingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
