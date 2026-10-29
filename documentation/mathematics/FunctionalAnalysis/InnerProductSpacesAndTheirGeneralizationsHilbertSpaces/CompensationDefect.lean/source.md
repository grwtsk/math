# Compensation Defect — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a51ab7aefb96949a954f0a927f8375f5ab01ac7b` · SHA-256 `474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PolarTraceSystem

/-!
# Local compensation defect

The defect is literally `T* D_next T - D_current`.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def PolarTraceSystem.compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph) :
    HilbertEnd Hilbert :=
  operatorPullback
      (system.transport arc)
      (system.defect arc.head) -
    system.defect arc.tail

theorem packetEnergy_difference_eq_compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.head test -
        system.packetEnergy arc.tail test =
      system.packet.energy arc.tail
        (system.compensationDefect arc)
        test := by
  unfold PolarTraceSystem.packetEnergy
  rw [system.packetCovariant
    arc (system.defect arc.head) test safe]
  exact
    (system.packet.energy_sub
      arc.tail
      (operatorPullback
        (system.transport arc)
        (system.defect arc.head))
      (system.defect arc.tail)
      test).symm

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba67613f3cc72b215b3087d096c40e6525006c51dded9d13717b7c976ae61d4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/CompensationDefect/Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
