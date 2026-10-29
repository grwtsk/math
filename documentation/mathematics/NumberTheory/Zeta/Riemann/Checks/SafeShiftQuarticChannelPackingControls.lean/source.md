# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftQuarticChannelPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36beae081b577ed237deb69ce176dfa3fa00c398` · SHA-256 `c61747b3f9b17c143c152edba0055e0790518f667a798156f6beb99e1058e3e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem structured_source_is_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ safeQuarticStructuredPackingValue z n :=
  safeQuarticStructuredPackingValue_nonnegative z n

theorem transverse_channel_dies_at_zero_height
    (z : ZeroPoint) (n : ℕ) (ht : z.1.im = 0) :
    (safeTransversePackingSequence z).valueAt n = 0 :=
  safeTransversePacking_valueAt_eq_zero_of_im_zero z n ht

end GRWTSK.RiemannHypothesis.Checks.SafeShiftQuarticChannelPackingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f77e1bb4932d5e231eed57d1cf44b39a695ff82ac4595bc031567247c916e1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftQuarticChannelPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
