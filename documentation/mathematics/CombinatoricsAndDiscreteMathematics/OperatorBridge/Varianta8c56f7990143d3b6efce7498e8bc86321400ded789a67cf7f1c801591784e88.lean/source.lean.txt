import Mathematics.SemiLocalDefect.Trace.ArithmeticTail

/-!
# Semi-local operator bridge residual
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure SemiLocalOperatorBridge
    (Prime : Type uPrime)
    [DecidableEq Prime]
    (Test : Type uTest) where
  truncatedArithmetic :
    Finset Prime → Test → ℝ
  packetEnergy :
    Finset Prime → Test → ℝ
  residual :
    Finset Prime → Test → ℝ
  split :
    ∀ cut test,
      truncatedArithmetic cut test =
        packetEnergy cut test +
          residual cut test
  cofinalDecay : Prop
  cofinalDecayProof : cofinalDecay
  uniformOnUnitBall : Prop
  uniformOnUnitBallProof :
    uniformOnUnitBall

end Mathematics.SemiLocalDefect.Trace
