# Weil Specialization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd616e8bb7e63f6cd4b06d1ca015c97529e5fe3b` · SHA-256 `066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TraceInvariance

/-!
# Weil-form specialization

The convolution-square interface identifies a separately supplied Weil
functional with the arithmetic trace; it does not manufacture that identity.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe
  uHilbert uPacketTest uArithmeticTest
  uConvolutionTest

structure WeilTraceCorrespondence
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (arithmetic :
      ArithmeticTraceCorrespondence system) where
  ConvolutionTest :
    graph.Node → Type uConvolutionTest
  starSquare :
    ∀ node,
      ConvolutionTest node →
        arithmetic.ArithmeticTest node
  admissible :
    ∀ node,
      ConvolutionTest node → Prop
  weilFunctional :
    ∀ node,
      arithmetic.ArithmeticTest node → ℝ
  arithmeticTrace_eq_weil :
    ∀ node test,
      arithmetic.arithmeticTrace node test =
        weilFunctional node test
  digest : CertificateDigest

theorem weilFunctional_invariant_of_exactCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (arithmetic :
      ArithmeticTraceCorrespondence system)
    (correspondence :
      WeilTraceCorrespondence arithmetic)
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport
        arithmetic)
    (arc : Arc graph)
    (test :
      arithmetic.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.weilFunctional arc.head
        (arithmetic.transportTest
          arc test) =
      correspondence.weilFunctional
        arc.tail test := by
  rw [
    ← correspondence.arithmeticTrace_eq_weil,
    ← correspondence.arithmeticTrace_eq_weil
  ]
  exact
    arithmeticTrace_invariant_of_exactCompensation
      system arithmetic
      traceExact arithmeticExact arc test safe

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d56977ee22f0f0ed63524963347f1c44b1b37443c1aa473a3d705633dce3a7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/WeilSpecialization/Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
