# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftCoefficientDecayControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eb4609426886f236781a9bfeb9553193bf5f8c7` · SHA-256 `eeb3d12f3b73663d48ab9bf90714fa8442673a462c2658d33c3112e724533e0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftCoefficientDecay
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls

open Filter Topology
open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem axial_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeAxialQuarticCoefficient z) atTop (𝓝 0) :=
  safeAxialQuarticCoefficient_tendsto_zero z

theorem transverse_unrenormalized_decay (z : ZeroPoint) :
    Tendsto (safeTransverseQuarticCoefficient z) atTop (𝓝 0) :=
  safeTransverseQuarticCoefficient_tendsto_zero z

end GRWTSK.RiemannHypothesis.Checks.SafeShiftCoefficientDecayControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c62ba4c60c678d4020fba4735caaa29f776153585b71503ccea6231a1c3a6958 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftCoefficientDecayControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
