# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicHigherPrimePowerFullResidualControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18a838c323ea90e07c3d7a611bb682b851ac82ce` · SHA-256 `0e1b50287eaea3e64453eb6b03d07db591803ca1db78c81368fe45ea9ceeb9f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicHigherPrimePowerFullResidual
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFullResidualControls

open GRWTSK.RiemannHypothesis

theorem complete_higher_power_residual_is_inverse_scale :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ X : ℕ, 0 < X →
      higherPrimePowerFullWitnessEnergy X ≤ K / (X : ℝ) :=
  higherPrimePowerFullWitnessEnergy_inv_bound

end GRWTSK.RiemannHypothesis.Checks.DyadicHigherPrimePowerFullResidualControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4c578279ba1b9ac661ffacdd8802538fec8d2d6a2eed750545de9fdfb0b5742 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicHigherPrimePowerFullResidualControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
