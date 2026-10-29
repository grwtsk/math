# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Capacity.Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1776e4ea613d380945b3889c13e878f5ff417c94` · SHA-256 `da05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP2.ProjectionProfile.Definition

/-!
# Projection-capacity primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def SoninProjectionProfile.capacity
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection S

theorem SoninProjectionProfile.capacity_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    OperatorNonnegative
      (P.capacity S) :=
  (P.projection_isProjection S).nonnegative

theorem SoninProjectionProfile.capacity_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    OperatorLE
      (P.capacity S)
      (P.capacity T) :=
  P.projection_mono hST

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=950fb2b738b3a735dddeaf0bde802d07f4b1726343b6c8eeccc6645d4c876cbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Capacity/Variantda05591d3a795697744a630ef4460354ab36d7a7b64268720ec506ccf34249e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
