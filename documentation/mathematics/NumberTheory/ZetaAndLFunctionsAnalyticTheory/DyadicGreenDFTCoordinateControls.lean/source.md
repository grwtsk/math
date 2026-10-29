# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenDFTCoordinateControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bee00bf5c3352c4e181ecf246d746f7e8a779a5` · SHA-256 `ab408bf3c06e3480c53926783cbb1eb2648814e5f709256fb08a8fb82aa871ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenDFTCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenDFTCoordinateControls

open GRWTSK.RiemannHypothesis

theorem shifted_and_unshifted_phase_agree
    (X : ℕ) (k : ℤ) (n : ℕ) :
    fourier (-k)
      (GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy.location X n :
        AddCircle (1 : ℝ)) =
      greenDFTPhase X k n :=
  fourier_at_location_eq_DFTPhase X k n

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenDFTCoordinateControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ffde2f0090aff4ffe2caf052ac88e14ddae731ecff2440b8570a26799ff5262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicGreenDFTCoordinateControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
