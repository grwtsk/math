# Definition Finite Sonin Horizon — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17525abd6389eb97122ac22be2aa93225461dd70` · SHA-256 `f9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP1.SoninHorizon

/-!
# Transported-range primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def FiniteSoninHorizon.transportedRange
    {U : FinitePrimeHorizon}
    (H : FiniteSoninHorizon U)
    (S : PrimeCut U) :
    Submodule ℂ H.Ambient :=
  LinearMap.range
    (H.toTop S).toLinearMap

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a74464c58ee541569d7bb7a5567d99c0c6bbb2839829e1329dd44ec57a0a6603 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Definition/Variantf9c524fa234959b76eb904e4caea7b9e77c12d3175cbe5f3703f4f7969dc8dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
