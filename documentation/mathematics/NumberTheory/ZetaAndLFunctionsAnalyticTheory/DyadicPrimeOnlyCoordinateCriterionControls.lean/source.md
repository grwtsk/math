# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicPrimeOnlyCoordinateCriterionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8656d6c26cec8ac7967a55d81b2a5f3e64daeef2` · SHA-256 `4e2b2d8009891fe96aa921599e6fabacb3c90204f75e9c15d216e4e6e50e8b74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyCoordinateCriterionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem prime_only_bound_is_exactly_RH_G01_supplier :
    AllDyadicPrimeOnlyFourierCoordinateBound ↔ AllDyadicEnergyBound :=
  allDyadicPrimeOnlyFourierCoordinateBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicPrimeOnlyCoordinateCriterionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce0b9fce4cdc5b02b93493efcb3323a391b1c5ad5131b5341d824d4193f497b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicPrimeOnlyCoordinateCriterionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
