# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicThetaOctaveSupplierControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fcfd8b9c8c22abe7d42c1146713ca56d4b59f2f` · SHA-256 `a4ecbff64a6545aa001e8fba9893cf4651ae9e1ff2ddd3aaeeceaba95fd0ba4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaOctaveSupplier
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem theta_supplier_returns_original_energy
    (h : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicEnergyBound :=
  thetaOctaveSquareRootBound_to_allDyadicEnergyBound h

end GRWTSK.RiemannHypothesis.Checks.DyadicThetaOctaveSupplierControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53dc412289fe19425222cb29811b456c5e669ca7435dce8a3ac7188650d13997 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicThetaOctaveSupplierControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
