# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftedVonMangoldtPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3095dbb329bf64010b21d25d716c3a4bc22090a8` · SHA-256 `f1b2e277d032a25129f925669e2c26c5bf30e55d252aafc7196a7140707b5a08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem safe_plus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftPlus z.1).re :=
  safeShiftPlus_one_lt_re z

theorem safe_minus_stays_right_of_one (z : ZeroPoint) :
    1 < (safeShiftMinus z.1).re :=
  safeShiftMinus_one_lt_re z

theorem safe_shift_packing_positive (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeShiftPackingSequence z).valueAt n :=
  safeShiftPackingSequence_valueAt_nonnegative z n

end GRWTSK.RiemannHypothesis.Checks.SafeShiftedVonMangoldtPackingControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=405eeeb82249695db8b7d6907e881b6ea7e727bf88783d9cbca54cc6c60db7c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
