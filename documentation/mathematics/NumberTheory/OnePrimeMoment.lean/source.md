# One Prime Moment — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8338eb71a4c5b3567df4d94706ceceb2de144891` · SHA-256 `d5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.CoefficientRing
import Mathlib.Data.Nat.Prime.Basic

/-!
# One-prime moment data

Lambert-series and integrality claims remain theorem-bearing fields.
-/

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentSystem where
  prime : Nat
  prime_isPrime : Nat.Prime prime
  moment : Nat → RationalQSeries
  jacobiDiagonal : Nat → RationalQSeries
  jacobiOffDiagonal : Nat → RationalQSeries
  lambertRepresentation : Prop
  lambertRepresentationProof :
    lambertRepresentation
  integrality :
    ∀ degree,
      CoefficientDomainCertificate (moment degree)
  digest : RealizationDigest

def OnePrimeMomentSystem.q
    (system : OnePrimeMomentSystem) : ℚ :=
  1 / system.prime

theorem OnePrimeMomentSystem.q_nonnegative
    (system : OnePrimeMomentSystem) :
    0 ≤ system.q := by
  simp [OnePrimeMomentSystem.q]

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ed5c53d6e845f899c292efb73051fb0ad3c9f3bbf67156d44de76193b53bc1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/OnePrimeMoment/Variantd5b589fdc662cbbbcc22c4e7e7d0465274044503eb03f68575f864aa88f5d31f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
