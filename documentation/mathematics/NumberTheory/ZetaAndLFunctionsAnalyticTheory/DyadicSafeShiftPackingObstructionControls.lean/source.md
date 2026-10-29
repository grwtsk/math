# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicSafeShiftPackingObstructionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be3a5cd63e219fa66f504080eaa8a04a776f5841` · SHA-256 `48fbbbbe9f133b6f39655b8e970e08c5254bac86e349a612c49887246edcc4a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftPackingObstruction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftPackingObstructionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem lower_mass_packet_impossible_at_offline_zero
    (z : ZeroPoint) (ha : zeroDefect z.1 ≠ 0) :
    ¬ OffLineDyadicCommonLowerMassAtZero z ha :=
  no_offLineDyadicCommonLowerMassAtZero z ha

end GRWTSK.RiemannHypothesis.Checks.DyadicSafeShiftPackingObstructionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75eb4959220edd0655bb71476ea355e52a21f728df606c49b135daf64020bcf2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicSafeShiftPackingObstructionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
