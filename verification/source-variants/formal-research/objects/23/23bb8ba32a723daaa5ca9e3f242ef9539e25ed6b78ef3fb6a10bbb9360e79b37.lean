import Mathematics.RHIsolation.Matching

/-!
# Measure-determining trace tests

Equality against every admitted test can imply measure equality only through a
registered separation theorem.
-/

namespace Mathematics.RHIsolation

universe uMeasure uTest

structure MeasureDeterminingTestClass
    (Measure : Type uMeasure)
    (Test : Type uTest) where
  norm : Test → ℝ
  evaluate : Test → Measure → ℂ
  separatesFiniteMeasures :
    ∀ left right,
      (∀ test,
        evaluate test left =
          evaluate test right) →
      left = right

theorem measureEquality_of_testClassEquality
    {Measure : Type uMeasure}
    {Test : Type uTest}
    (testClass :
      MeasureDeterminingTestClass Measure Test)
    (left right : Measure)
    (equalOnTests :
      ∀ test,
        testClass.evaluate test left =
          testClass.evaluate test right) :
    left = right :=
  testClass.separatesFiniteMeasures
    left right equalOnTests

structure CompositeMatchingDefect where
  analyticCount : Nat
  spectralCount : Nat
  unmatchedMultiplicity : Nat
  boundedLipschitzDefect : ℝ
  boundedLipschitzDefect_nonneg :
    0 ≤ boundedLipschitzDefect
  countTerm :
    unmatchedMultiplicity =
      (analyticCount - spectralCount) +
        (spectralCount - analyticCount)

end Mathematics.RHIsolation
