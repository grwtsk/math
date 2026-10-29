# Complete source: GRWTSK.Analysis.FunctionalAnalysis.PolarTraceSystem.Variant660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0686e2fa789a5201708d3055b686caf53ff5dd3e` · SHA-256 `660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.OperatorPullback
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph

/-!
# Fixed-Hilbert polar trace system

The graph cut supplies the safe-arc predicate.  Packet covariance and packet
norm transport are proof fields, not consequences of graph scheduling.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure PolarTraceSystem
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (Hilbert : Type uHilbert)
    (Test : Type uTest)
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert] where
  defect :
    graph.Node → HilbertEnd Hilbert
  defect_positive :
    ∀ node,
      (defect node).IsPositive
  transport :
    Arc graph → HilbertEnd Hilbert
  packet :
    PacketTraceModel graph Hilbert Test
  packetCovariant :
    ∀ arc operator test,
      cut.safeArc arc = true →
        packet.energy arc.head operator test =
          packet.energy arc.tail
            (operatorPullback
              (transport arc) operator)
            test
  packetNormTransport :
    ∀ arc test,
      cut.safeArc arc = true →
        packet.packetNormSq arc.head test ≤
          ‖transport arc‖ ^ 2 *
            packet.packetNormSq arc.tail test
  digest : CertificateDigest

def PolarTraceSystem.packetEnergy
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (node : graph.Node)
    (test : Test) : ℝ :=
  system.packet.energy node
    (system.defect node) test

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20bf5dd6ea34feb1ec93da71eac1c9864028c9eb41b58a330c07aa9a91340e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PolarTraceSystem/Variant660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
