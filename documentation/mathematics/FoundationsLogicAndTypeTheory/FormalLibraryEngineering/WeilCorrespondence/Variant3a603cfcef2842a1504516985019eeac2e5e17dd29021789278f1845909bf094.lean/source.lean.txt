import Mathematics.SemiLocalDefect.Trace.OperatorBridge

/-!
# Weil boundary correspondence

Arithmetic truncation and operator realization defects remain visible in the
exact decomposition.
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure WeilBoundaryIdentification
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  arithmetic :
    SemiLocalArithmeticTail Prime Test
  operator :
    SemiLocalOperatorBridge Prime Test
  truncatedSidesAgree :
    ∀ cut test,
      arithmetic.truncatedWeil cut test =
        operator.truncatedArithmetic cut test
  exactDecomposition :
    ∀ cut test,
      arithmetic.globalWeil test =
        operator.packetEnergy cut test +
          arithmetic.tail cut test +
          operator.residual cut test
  localGlobalCompatibility : Prop
  localGlobalCompatibilityProof :
    localGlobalCompatibility

end Mathematics.SemiLocalDefect.Trace
