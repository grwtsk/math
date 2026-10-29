# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerArithmeticPackingCoordinateControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `844fa14c7a118cfec5ad30b61266c3a57903bec7` · SHA-256 `c2ec113554f130e61d740857c2ac53de5e8a69ed069e1113c3cdd766d583e1d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerArithmeticPackingCoordinate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PrimePowerArithmeticPackingCoordinateControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis

def primeTwo : PrimeIndex := ⟨2, by norm_num⟩

def twoSquaredEvent : PrimePowerEvent where
  prime := primeTwo
  exponent := 2
  exponent_pos := by norm_num

/-- The raw x-coordinate for 2^2 is exactly 2 log 2. -/
theorem twoSquared_logScale :
    twoSquaredEvent.logScale = 2 * Real.log 2 := by
  norm_num [twoSquaredEvent, PrimePowerEvent.logScale, primeTwo]

/-- The raw y-coordinate for every power of 2 remains log 2 before the exact
explicit-formula test weight is applied. -/
theorem twoSquared_mangoldtScale :
    twoSquaredEvent.mangoldtScale = Real.log 2 := by
  rfl

/-- The natural source label is the actual prime-power value 4. -/
theorem twoSquared_natValue :
    twoSquaredEvent.natValue = 4 := by
  norm_num [twoSquaredEvent, PrimePowerEvent.natValue, primeTwo]

/-- The event-level source predicate recognizes the actual value. -/
theorem four_is_primePowerEventValue :
    IsPrimePowerEventValue 4 := by
  exact ⟨twoSquaredEvent, twoSquared_natValue⟩

end GRWTSK.RiemannHypothesis.Checks.PrimePowerArithmeticPackingCoordinateControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=576d0a5add5a793a6eed7138608d60f24e48b8e10f6bfa06f7273629a24fc66e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerArithmeticPackingCoordinateControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
