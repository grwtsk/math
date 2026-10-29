# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Carrier.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `905936bd4cefa0ae278241672776681f48d83a1a` · SHA-256 `9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Prime-horizon carrier primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure FinitePrimeHorizon where
  Prime : Type
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ p, Nat.Prime (value p)
  id : HorizonId
  revision : Nat
  digest : Digest

instance (U : FinitePrimeHorizon) :
    Fintype U.Prime :=
  U.primeFintype

instance (U : FinitePrimeHorizon) :
    DecidableEq U.Prime :=
  U.primeDecEq

instance (U : FinitePrimeHorizon) :
    LinearOrder U.Prime :=
  U.primeOrder

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd55df5c2e1c2110f24022178c41a1c11feb683ec9b419a5cb923014d8dea333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Carrier/Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
