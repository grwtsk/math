import Mathematics.SemiLocalDefect.Trace.WeilCorrespondence
import Mathlib.Tactic.Ring

/-!
# Packet square-root scale

The final inequality is derived from separately visible packet, arithmetic,
and operator bounds.
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uScale uTest

structure SquareRootScaleProblem
    (Scale : Type uScale)
    (Test : Type uTest) where
  discrepancy : Scale → Test → ℝ
  scaleWeight : Scale → ℝ
  testWeight : Test → ℝ
  scaleWeight_nonnegative :
    ∀ scale, 0 ≤ scaleWeight scale
  testWeight_nonnegative :
    ∀ test, 0 ≤ testWeight test

structure PacketSquareRootComponents
    {Scale : Type uScale}
    {Test : Type uTest}
    (problem :
      SquareRootScaleProblem Scale Test) where
  packetTerm :
    Scale → Test → ℝ
  arithmeticTail :
    Scale → Test → ℝ
  operatorResidual :
    Scale → Test → ℝ
  exactSplit :
    ∀ scale test,
      problem.discrepancy scale test =
        packetTerm scale test +
          arithmeticTail scale test +
          operatorResidual scale test
  packetConstant : ℝ
  arithmeticConstant : ℝ
  operatorConstant : ℝ
  packetConstant_nonnegative :
    0 ≤ packetConstant
  arithmeticConstant_nonnegative :
    0 ≤ arithmeticConstant
  operatorConstant_nonnegative :
    0 ≤ operatorConstant
  packetBound :
    ∀ scale test,
      |packetTerm scale test| ≤
        packetConstant *
          problem.scaleWeight scale *
          problem.testWeight test
  arithmeticBound :
    ∀ scale test,
      |arithmeticTail scale test| ≤
        arithmeticConstant *
          problem.scaleWeight scale *
          problem.testWeight test
  operatorBound :
    ∀ scale test,
      |operatorResidual scale test| ≤
        operatorConstant *
          problem.scaleWeight scale *
          problem.testWeight test

def SquareRootNormFinite
    {Scale : Type uScale}
    {Test : Type uTest}
    (problem :
      SquareRootScaleProblem Scale Test) : Prop :=
  ∃ constant : ℝ,
    0 ≤ constant ∧
      ∀ scale test,
        |problem.discrepancy scale test| ≤
          constant *
            problem.scaleWeight scale *
            problem.testWeight test

theorem packet_to_discrepancy_squareRoot
    {Scale : Type uScale}
    {Test : Type uTest}
    {problem :
      SquareRootScaleProblem Scale Test}
    (components :
      PacketSquareRootComponents problem) :
    SquareRootNormFinite problem := by
  refine ⟨components.packetConstant +
      components.arithmeticConstant +
      components.operatorConstant, ?_, ?_⟩
  · exact add_nonneg
      (add_nonneg
        components.packetConstant_nonnegative
        components.arithmeticConstant_nonnegative)
      components.operatorConstant_nonnegative
  · intro scale test
    rw [components.exactSplit]
    calc
      |components.packetTerm scale test +
          components.arithmeticTail scale test +
          components.operatorResidual scale test|
          ≤
        |components.packetTerm scale test| +
          |components.arithmeticTail scale test| +
          |components.operatorResidual scale test| := by
            exact abs_add_three _ _ _
      _ ≤
        components.packetConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.arithmeticConstant *
              problem.scaleWeight scale *
              problem.testWeight test +
          components.operatorConstant *
              problem.scaleWeight scale *
              problem.testWeight test :=
        add_le_add
          (add_le_add
            (components.packetBound scale test)
            (components.arithmeticBound scale test))
          (components.operatorBound scale test)
      _ =
        (components.packetConstant +
            components.arithmeticConstant +
            components.operatorConstant) *
          problem.scaleWeight scale *
          problem.testWeight test := by ring

end Mathematics.SemiLocalDefect.Trace
