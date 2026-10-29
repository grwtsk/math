# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPrimeOnlyLiteralFormulasControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78d3d7834d219fe2349412e7858b5c1b3a3cba5a` · SHA-256 `7bccb08016420b578055113f74c333553f8e796713c96959be67ace3dd0f9e50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls

open GRWTSK.RiemannHypothesis
open Chebyshev

theorem endpoint_sum_is_theta_octave_discrepancy
    {X : ℕ} (hX : 0 < X) :
    primeOnlyMass0 X + primeOnlyMass1 X =
      (θ (((2 * X : ℕ) : ℝ)) - θ ((X : ℕ) : ℝ)) /
        (X : ℝ) - 1 :=
  primeOnlyMass0_add_mass1_eq_theta_increment hX

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyLiteralFormulasControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b349345f146e6cff6a190dce848bcf408ea4dae240f02b4770239380c9606f95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPrimeOnlyLiteralFormulasControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
