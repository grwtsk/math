# Definition Sonin Packet Energy — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3170ef87f19ddd6b01a7ab241d9aabaadaeffa03` · SHA-256 `1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.PacketModel

/-!
# Sonin packet-energy primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def soninPacketEnergy
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    ℝ :=
  W.energy
    (P.projection S)
    g

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7682cfa210b253053884f3e8bba44d09991a910f904850000e4eec1ed63b8cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Definition/Variant1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
