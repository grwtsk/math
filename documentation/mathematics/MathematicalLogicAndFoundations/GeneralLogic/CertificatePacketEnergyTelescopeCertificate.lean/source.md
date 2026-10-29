# Certificate Packet Energy Telescope Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d679cedb08a4b0fbca73ef9967a92cf87afd7051` · SHA-256 `e4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.Telescope.Sum

/-!
# Packet-energy telescope certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PacketEnergyTelescopeCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (_capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    Prop where
  every_step_fresh :
    ∀ i : Fin E.order.length,
      E.order.get i ∉
        E.prefixCut i.val
  energy_eq_base_add_sum :
    soninPacketEnergy W P S g
    =
    soninPacketEnergy
      W P (∅ : PrimeCut U) g
    +
    packetIncrementSum
      W P E g
  incrementSum_eq_difference :
    packetIncrementSum
      W P E g
    =
    soninPacketEnergy W P S g
    -
    soninPacketEnergy
      W P (∅ : PrimeCut U) g

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0228ee2f33b402b6c71d3eb57e732e4cf0723588455b147f277c9ad804a9ac6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certificate/Variante4141968d240dfd899873fc5af608442d5a58739bddd77dde683f9c294aa8a3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
