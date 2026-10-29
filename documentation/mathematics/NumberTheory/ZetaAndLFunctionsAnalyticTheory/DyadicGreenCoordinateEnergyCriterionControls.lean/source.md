# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicGreenCoordinateEnergyCriterionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13503288d6cc6c633b468a65d348ac80e3c46726` · SHA-256 `f0823131b48ea72d8401ddcffe10b50f6068c2ed8ec50157567131c3c871092e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateEnergyCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateEnergyCriterionControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem explicit_coordinate_bound_is_original_supplier :
    AllDyadicArithmeticFourierCoordinateBound ↔ AllDyadicEnergyBound :=
  allDyadicArithmeticFourierCoordinateBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicGreenCoordinateEnergyCriterionControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a0462a6409051e24eef2e7a33be773883d3e3867ae978a062ea6780517b7dd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicGreenCoordinateEnergyCriterionControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
