# Theorems Theorems — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f046a1c8b0ef863ae36fb9a3f22460965c0afdb` · SHA-256 `75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.Telescope.Certificate

/-!
# Packet-energy telescope theorem primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_chain_telescope
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test)
    (cert :
      PacketEnergyTelescopeCertificate
        W P capacity E g) :
    soninPacketEnergy W P S g
    =
    soninPacketEnergy
      W P (∅ : PrimeCut U) g
    +
    packetIncrementSum
      W P E g :=
  cert.energy_eq_base_add_sum

theorem packetIncrementSum_enumeration_independent
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E₁ E₂ : CutEnumeration U S)
    (g : W.Test)
    (cert₁ :
      PacketEnergyTelescopeCertificate
        W P capacity E₁ g)
    (cert₂ :
      PacketEnergyTelescopeCertificate
        W P capacity E₂ g) :
    packetIncrementSum W P E₁ g
    =
    packetIncrementSum W P E₂ g := by
  calc
    packetIncrementSum W P E₁ g
      =
      soninPacketEnergy W P S g
      -
      soninPacketEnergy
        W P (∅ : PrimeCut U) g :=
        cert₁.incrementSum_eq_difference
    _ =
      packetIncrementSum W P E₂ g :=
        cert₂.incrementSum_eq_difference.symm

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf61ca90839215ce7912066bdb5c25077f21bc8f502f9b7d61f7805bf820699c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Theorems/Variant75674b0356aa2bd27fd89a82d650b5258b7efcbca1cc09612e1407a5ace9d5cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
