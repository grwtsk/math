# Monotonicity Sonin Packet Energy Mono — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d688ae8f3d34faf78fcc0dffad4411c9556840a9` · SHA-256 `8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# Packet-energy monotonicity primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    {S T : PrimeCut U}
    (hST : S ⊆ T)
    (g : W.Test) :
    soninPacketEnergy W P S g
    ≤
    soninPacketEnergy W P T g := by
  change
    W.energy (P.projection S) g
    ≤
    W.energy (P.projection T) g
  have hProjection :
      OrthogonalProjectionCertificate
        (projectionDifference P S T) :=
    cert.difference_isProjection hST
  have hDifferenceNonnegative :
      0 ≤
      W.energy
        (projectionDifference P S T)
        g := by
    rw [
      W.projection_energy_eq
        (projectionDifference P S T)
        g
        hProjection
    ]
    exact
      W.projectedNormSq_nonnegative
        (projectionDifference P S T)
        g
  have hSub :
      W.energy
        (projectionDifference P S T)
        g
      =
      W.energy (P.projection T) g
      -
      W.energy (P.projection S) g := by
    exact
      W.energy_sub
        (P.projection T)
        (P.projection S)
        g
  rw [hSub] at hDifferenceNonnegative
  exact sub_nonneg.mp hDifferenceNonnegative

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=630834c6017d401009c83f870a7f3ab572c9d7762cb1c4d97b87237f072fc0e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variant8548b0af26107d53d65d36945b7eb16c6310e463f271dc2aa5c98d8f4ba068e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
