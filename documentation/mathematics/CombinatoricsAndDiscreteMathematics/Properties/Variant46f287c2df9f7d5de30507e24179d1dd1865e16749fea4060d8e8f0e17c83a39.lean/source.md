# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Properties.Variant46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd67c2288a90bc9a9a055ac2bc67b13ebb80c90` · SHA-256 `46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.Increment.Certificate

/-!
# Projection-increment theorem primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninIncrement_isOrthogonalProjection
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (_hp : p ∉ S) :
    OrthogonalProjectionCertificate
      (soninIncrement P S p) := by
  apply cert.difference_isProjection
  intro x hx
  exact Finset.mem_insert_of_mem hx

theorem soninIncrement_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorNonnegative
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).nonnegative

theorem soninIncrement_idempotent
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorIdempotent
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).idempotent

theorem soninIncrement_selfAdjoint
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorSelfAdjoint
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).selfAdjoint

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c838f98a9be1a0218326e7b0242193480fe27b2703a41069e304e0a67d280ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Properties/Variant46f287c2df9f7d5de30507e24179d1dd1865e16749fea4060d8e8f0e17c83a39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
