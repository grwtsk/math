# Complete source: GRWTSK.Algebra.FiniteField.GF128.InverseSteps

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4150031fa925242918cd2d8dec009cd9f65f31ff` · SHA-256 `56a0f36613029bd8285e20a1266d867df675799102c29af2cb17bbd6bb0a74b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.FiniteField.GF128.Bitwise
namespace GRWTSK.Algebra.FiniteField.GF128
set_option maxRecDepth 100000
set_option maxHeartbeats 50000000

/-- One exact even exponentiation iteration, with certified multiplication. -/
theorem pow_even_step (n e : Nat) (b r nb : Word)
    (he : e ≠ 0) (hp : e % 2 ≠ 1) (hb : mul b b = nb) :
    powFuel (n + 1) e b r = powFuel n (e / 2) nb r := by
  rw [powFuel, if_neg he, if_neg hp, hb]

/-- One exact odd exponentiation iteration, with certified multiplications. -/
theorem pow_odd_step (n e : Nat) (b r nb nr : Word)
    (he : e ≠ 0) (hp : e % 2 = 1) (hb : mul b b = nb) (hr : mul r b = nr) :
    powFuel (n + 1) e b r = powFuel n (e / 2) nb nr := by
  rw [powFuel, if_neg he, if_pos hp, hb, hr]
end GRWTSK.Algebra.FiniteField.GF128
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2998f10bb824adc46ef6fee226101b5b1050e70988f9247dac40c3bc67d4b73c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/InverseSteps.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
