# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedVonMangoldtCoefficientSourceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32774aee48a7b8ac788ceda9265c35066ffed6a4` · SHA-256 `6cbebd745e7c4c086367e9c26ec18f747721af9acd0fbb32b94f79abf2f3dfc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtCoefficientSourceControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis

def primeFive : PrimeIndex := ⟨5, by norm_num⟩

def fiveSquaredEvent : PrimePowerEvent where
  prime := primeFive
  exponent := 2
  exponent_pos := by norm_num

theorem fiveSquared_coefficient_is_log_five :
    mathlibVonMangoldtCoefficient.coefficient fiveSquaredEvent =
      Real.log 5 := by
  simpa [PrimePowerEvent.mangoldtScale, fiveSquaredEvent, primeFive] using
    mathlibVonMangoldtCoefficient_eq_mangoldtScale fiveSquaredEvent

theorem fiveSquared_raw_weight_is_one :
    mathlibVonMangoldtCoefficient.toWeight.testWeight fiveSquaredEvent = 1 :=
  mathlibVonMangoldt_testWeight_eq_one fiveSquaredEvent

/-- The exact coefficient channel does not by itself supply a full explicit
formula or critical-strip identity. -/
def coefficientChannelStatus : String :=
  "BOUND_AT_PINNED_MATHLIB / GLOBAL_EXPLICIT_FORMULA_OPEN"

end GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtCoefficientSourceControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=293155f117ef560dfe67bb63af955041d95589bd9534d1a2c89d5555af854079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedVonMangoldtCoefficientSourceControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
