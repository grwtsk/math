# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftPrimeTermFactorizationControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `554d40cb4fa348da875b8769ad31dda52dc2944d` · SHA-256 `750eb89ec0a45b1d31d6619e9b3d80dfdcc9d6da184d8ae9f6139c80e8234fad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SafeShiftPrimeTermFactorizationControls

open GRWTSK.RiemannHypothesis
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor

theorem even_scale_centered
    (z : ZeroPoint) (e : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeEvenDefectScale z e = 1 :=
  safeEvenDefectScale_eq_one_of_zeroDefect z e ha

theorem odd_scale_centered
    (z : ZeroPoint) (e : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeOddDefectScale z e = 0 :=
  safeOddDefectScale_eq_zero_of_zeroDefect z e ha

end GRWTSK.RiemannHypothesis.Checks.SafeShiftPrimeTermFactorizationControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af570f067cdbcd95d3699fd746be2f2d66370925b96372a6547e491d68523074 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftPrimeTermFactorizationControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
