# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DirichletDampedPrimePowerPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42d1fe725b0c498edfa445d3358ed2e9291881eb` · SHA-256 `65525dba7200b2ef907f88d78ce1f001c0ec407d84f340a4fd1244c75566d675`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem damped_packing_is_positive (n : ℕ) :
    0 ≤ dirichletTwoPackingSequence.valueAt n :=
  dirichletTwoPacking_valueAt_nonnegative n

theorem damped_packing_has_required_decay :
    Tendsto dirichletTwoPackingSequence.valueAt atTop (𝓝 0) :=
  dirichletTwoPacking_valueAt_tendsto_zero

end GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22898949ce230b806a433af769a28c3f55a8b25b30c5196a677975a1591cb576 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DirichletDampedPrimePowerPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
