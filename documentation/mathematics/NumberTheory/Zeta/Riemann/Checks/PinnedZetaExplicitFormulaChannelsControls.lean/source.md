# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedZetaExplicitFormulaChannelsControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35baf691e43f4c95ea74dfd0af4552971d3f5705` · SHA-256 `e22dd454ad3a2185ae5b444f954c760d73a7afd7bac60a572caa998ce43bef7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedZetaExplicitFormulaChannels
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedZetaExplicitFormulaChannelsControls

open GRWTSK.RiemannHypothesis

theorem trivial_zero_minus_two :
    riemannZeta (-2 : ℂ) = 0 := by
  simpa using pinned_trivial_zero 0

theorem completed_FE_at_two :
    completedRiemannZeta (1 - (2 : ℂ)) =
      completedRiemannZeta 2 :=
  pinned_completed_functional_equation 2

/-- The channel bundle is inhabited without supplying a global explicit-formula
summation theorem. -/
def knownChannels : KnownZetaExplicitFormulaChannels :=
  pinnedKnownZetaExplicitFormulaChannels

def globalSummationStatus : String :=
  "OPEN: contour/test-function identity + summation order + endpoint + tail"

end GRWTSK.RiemannHypothesis.Checks.PinnedZetaExplicitFormulaChannelsControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c663fa67c32f012b6b173c794e849dd2a52ab42d576a94a9551de21c6d1eebf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedZetaExplicitFormulaChannelsControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
