# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Definition.Variantfad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `952223ab60dfcf085b15c24ca2657159fa105d07` · SHA-256 `fad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.ProjectionProfile

/-!
# Projection-increment primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def projectionDifference
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S T : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection T -
  P.projection S

def soninIncrement
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (p : U.Prime) :
    HilbertEnd H.Ambient :=
  projectionDifference
    P
    S
    (insert p S)

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=554ba1f4b95260e0a5a1fd07415023bc6f48027e35a260c98f5ea4eb3f1d1cff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Definition/Variantfad26fe6030015a84f8dfcbfad1d9d967f404c06e8d7bb3a329a1af80da304e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
