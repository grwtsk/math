# Statement Riemann Von Mangoldt — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0218a9fe6adaef4168726eb84dd0ecb659c51786` · SHA-256 `3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/RvM/Statement.lean — Riemann–von Mangoldt assembly:
  Zeta23.RvM.riemannVonMangoldt (hΓ : GammaFacts) : RiemannVonMangoldt zetaZeroConfig
from Zeta23.RvM.rvM_main (MainTerm.lean) and Zeta23.RvM.zetaZeroConfig_local_count
(LocalCount.lean). Conditional on the Γ-facts by design (Stirling enters only through
`GammaFacts`).
-/
import Zeta23.RvM.MainTerm

noncomputable section

namespace Zeta23.RvM

/-- **H-RvM for Mathlib's ζ**, given the Γ-facts. -/
theorem riemannVonMangoldt (hΓ : GammaFacts) : RiemannVonMangoldt zetaZeroConfig :=
  ⟨rvM_main hΓ, zetaZeroConfig_local_count⟩

end Zeta23.RvM
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f9cfe45742236a8af1887a82009622664418dec2634349cd1cbb611a94b1175 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant3226fbc3de1b223a067d1d454c1e7400ac81c652dbbb58f494e42a6a583061f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
