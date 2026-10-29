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
