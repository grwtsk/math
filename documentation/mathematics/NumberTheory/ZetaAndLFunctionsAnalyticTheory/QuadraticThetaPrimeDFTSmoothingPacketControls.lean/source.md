# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854ab021f4543443dedacd04d574f0435086ec0f` · SHA-256 `83edeee72841451251cddd2046e607eaa272e4214e7346356b6d03e9bb1a6bd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls

open GRWTSK.RiemannHypothesis

def exactFrontier : List String :=
  ["explicit smoothing packet requires finite cutoff",
   "coefficient L2 budget is at most linear in cutoff",
   "boundary width budget is at most inverse cutoff",
   "cutoff exponent must lie in [1/4,1/2] for the 3/4 target",
   "balanced exponent 1/3 leaves both schematic costs at 2/3",
   "constructing the actual source-faithful packet remains open"]

end GRWTSK.RiemannHypothesis.Checks.QuadraticThetaPrimeDFTSmoothingPacketControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fd17cf596f55b139a9f6c667ef2eaf4d5e3e08bc46096d789df767853daf86b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/QuadraticThetaPrimeDFTSmoothingPacketControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
