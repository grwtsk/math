# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicFourierFrameEnergyEquivalenceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbe4184f3870f7ae3cedbee608900f26a4714c53` · SHA-256 `cd48e1c6e47893b27c9d72f7bbb487e4af0668a61c1dcd5c75fe55199e9e0dd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicFourierFrameEnergyEquivalence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DyadicFourierFrameEnergyEquivalenceControls

open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem frame_bound_is_exactly_original_supplier :
    AllDyadicAdmissibleActionFrameBound ↔ AllDyadicEnergyBound :=
  allDyadicAdmissibleActionFrameBound_iff_energy

end GRWTSK.RiemannHypothesis.Checks.DyadicFourierFrameEnergyEquivalenceControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90770dd15a1cded43ff3fe9f750cf5d5617eac142e5ba2abe2ee89f2f8b9306c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicFourierFrameEnergyEquivalenceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
