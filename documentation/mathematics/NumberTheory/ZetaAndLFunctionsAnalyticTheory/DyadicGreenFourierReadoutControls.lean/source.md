# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenFourierReadoutControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7440a8da6b51cb286fa12c2b5edee32f07dfaaef` · SHA-256 `aed9d33231d6b906a272bee830d0b913e13e0c47735f06dc273754f8326564b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierReadout
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierReadoutControls

open GRWTSK.RiemannHypothesis

theorem nonzero_mode_is_exact_action
    {X : ℕ} (hX : 0 < X)
    {k : ℤ} (hk : k ≠ 0) :
    ‖action X (fourierModeComplexTest k hk).value‖^2 =
      ‖greenResidualFourierCoeff X k‖^2 :=
  action_fourierModeComplexTest_norm_sq hX hk

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenFourierReadoutControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=920f985e45616cd7c1b48bda6229b30300ab7d7406f77db441fbe9032b10ec19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicGreenFourierReadoutControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
