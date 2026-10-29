# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Complete.Variantd43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4916d3b649443aee891a9beb7c6cd4ba89bd563` · SHA-256 `d43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/GammaFacts/Complete.lean — assembly of H-Γ:
All nine fields of Zeta23.GammaFacts ([eq:mufacts] + the Γ-halves of [eq:muints])
are proved: even/smooth (Zeta23/GammaFacts.lean), monotoneOn/mu_zero_le/
neg_one_lt_mu_zero/deriv_bound (Zeta23/GammaFacts/Mu.lean, via the digamma
partial-fraction series), stirling (Zeta23/GammaFacts/StirlingVert.lean, C = 20/2π),
int_mu/int_mu_sq (Zeta23/GammaFacts/IntMu.lean, from stirling + FTC).
-/
import Zeta23.Hypotheses
import Zeta23.GammaFacts
import Zeta23.GammaFacts.Mu
import Zeta23.GammaFacts.IntMu
import Zeta23.GammaFacts.StirlingVert

noncomputable section

namespace Zeta23

/-- GammaFacts from any Stirling bound for μ (the only analytically deep field). -/
theorem gammaFacts_of_stirling (hst : MuInts.StirlingHyp) : GammaFacts :=
  ⟨mu_even, mu_smooth, MuFields.mu_monotoneOn, MuFields.mu_zero_le, MuFields.neg_one_lt_mu_zero,
    hst, MuFields.mu_deriv_bound, MuInts.int_mu_of_stirling hst, MuInts.int_mu_sq_of_stirling hst⟩

/-- **H-Γ, unconditionally.** -/
theorem gammaFacts : GammaFacts := gammaFacts_of_stirling StirlingVert.mu_stirling

end Zeta23
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fae503114beeb06e7be2c6354aafaad5ba851b89227f5071fef648b479ae7f90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Complete/Variantd43b2d4f3fa0c1d22210e1f671b875a88b09747247e67becbbc38f85f34f2fb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
