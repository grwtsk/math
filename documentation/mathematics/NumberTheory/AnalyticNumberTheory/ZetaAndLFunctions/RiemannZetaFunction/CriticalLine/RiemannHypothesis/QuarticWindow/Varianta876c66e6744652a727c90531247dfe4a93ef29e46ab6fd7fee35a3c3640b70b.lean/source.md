# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.QuarticWindow.Varianta876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee89a16234978f01a8b0dcbc6a1d507ebea45ce9` · SHA-256 `a876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/QuarticWindow.lean — umbrella for the ξ′ quartic-window admissibility component.
  QuarticWindow/Params.lean    — P.atV v T rfl-dictionary, atV_phi, localFun/a/b/φ̂/trace bridges
  QuarticWindow/ModWindow.lean — GENERIC: a modulated ramp taper f·φ is an Zeta23.AdmWindow (admWindow_phiM)
  QuarticWindow/Quartic.lean   — f_Q = √vQuartic(·/L) is a ModFactor (A = 3/2, B = 12) ⇒ admWindow_phiV_quartic
  QuarticWindow/ZeroSide.lean  — PoissonSq / BlockInputs / Gz=Gp / tail package / 1/2 ≤ a ≤ 1 for P.atV vQuartic T,
                                 windowZeroSide_atV (the WindowZeroSide bundle)
  QuarticWindow/Moments.lean   — |a−2777/3000|, |b−518783/600000| ≤ 2w/L, |g(y) − L·vConv(y/L)| ≤ 4w, b ≥ 1/2,
                                 localHypsCoreQ_eventually
  QuarticWindow/Family.lean    — admFamily_phiV_quartic / admFamily_atV_quartic (the AdmFamily bundle)
-/
import Zeta23.XiPrime.QuarticWindow.Params
import Zeta23.XiPrime.QuarticWindow.ModWindow
import Zeta23.XiPrime.QuarticWindow.Quartic
import Zeta23.XiPrime.QuarticWindow.ZeroSide
import Zeta23.XiPrime.QuarticWindow.Moments
import Zeta23.XiPrime.QuarticWindow.Family
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c527c4daac10898a53609ac398b1675fc05a82c46f950677b29ad8f95bed372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuarticWindow/Varianta876c66e6744652a727c90531247dfe4a93ef29e46ab6fd7fee35a3c3640b70b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
