# Cofinal Limit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0da05944167336a87d8adc8daf71c3e3e283507b` · SHA-256 `c5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Trace.Energy

/-!
# Cofinal packet-energy limits

The finite monotone family is distinguished from its certified cofinal limit.
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure CofinalCutSequence
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

structure PacketEnergyCofinalLimit
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (sequence : CofinalCutSequence Prime) where
  limitEnergy : Test → ℝ
  epsilonConvergence :
    ∀ test epsilon,
      0 < epsilon →
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          |packetEnergy capacity packet
              (sequence.cut index) test -
            limitEnergy test| < epsilon
  nonnegative :
    ∀ test,
      0 ≤ limitEnergy test
  boundedByPacket :
    ∀ test,
      limitEnergy test ≤
        packet.packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6633e9572bbf486e3a9e7a7d48df10b08a436212add3da986756919940f473f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CofinalLimit/Variantc5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
