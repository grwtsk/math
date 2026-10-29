# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceResidual.Variant850c2116a07ee7eb22c2cc52155a00e7a8f18e8255c0a7fb3a8d407857892980

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `532fe8107f6253418c46202217d93950a6afef38` · SHA-256 `850c2116a07ee7eb22c2cc52155a00e7a8f18e8255c0a7fb3a8d407857892980`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceTransport
import Mathlib.Tactic.Ring

/-!
# Bounded residual trace compensation

When exact covariance is unavailable, the failure is represented by an
operator-valued residual with a proof-bearing trace-ideal bound.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uTest

structure ResidualTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test) where
  residual :
    Arc graph → model.Operator
  compensation :
    ∀ arc,
      operatorConjugate
          system.phaseRepresentation.operations
          (system.transportOperator arc)
          (system.defect arc.head) =
        system.defect arc.tail +
          residual arc
  operatorNorm :
    model.Operator → ℝ
  operatorNorm_nonnegative :
    ∀ operator,
      0 ≤ operatorNorm operator
  localBudget :
    Arc graph → ℝ
  localBudget_nonnegative :
    ∀ arc,
      0 ≤ localBudget arc
  residualBound :
    ∀ arc,
      operatorNorm (residual arc) ≤
        localBudget arc
  traceIdealBound :
    ∀ arc test,
      abs
        (
        (system.packet arc.tail).energy
          test (residual arc)
        ) ≤
        operatorNorm (residual arc) *
          (system.packet arc.tail).packetNormSq
            test

theorem residual_packet_identity
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ResidualTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    polarPacketEnergy system arc.head test -
        polarPacketEnergy system arc.tail test =
      (system.packet arc.tail).energy
        test (certificate.residual arc) := by
  unfold polarPacketEnergy
  rw [system.transportTraceLaw arc test,
    certificate.compensation arc,
    (system.packet arc.tail).map_add]
  ring

theorem residual_packet_bound
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ResidualTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    abs
      (
      polarPacketEnergy system arc.head test -
        polarPacketEnergy system arc.tail test
      ) ≤
      certificate.localBudget arc *
        (system.packet arc.tail).packetNormSq
          test := by
  rw [residual_packet_identity
    system certificate arc test]
  exact le_trans
    (certificate.traceIdealBound arc test)
    (mul_le_mul_of_nonneg_right
      (certificate.residualBound arc)
      ((system.packet arc.tail).packetNormSq_nonnegative
        test))

end Mathematics.SemiLocalDefect.ResidueDeflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b295f41a44598e5cf11e141e78f2141aa4eab885ff1b30d80ebcf48bde071dcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceResidual/Variant850c2116a07ee7eb22c2cc52155a00e7a8f18e8255c0a7fb3a8d407857892980.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
