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
