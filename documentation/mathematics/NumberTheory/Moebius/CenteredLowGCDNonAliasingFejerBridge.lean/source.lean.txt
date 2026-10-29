/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDBilinearReindexing
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerBounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open GRWTSK.RiemannHypothesis

theorem nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hY : 1 ≤ Y) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) +
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
        (nonAliasingFejerPrefixWeight X N m) := by
  exact two_mul_positiveShift_add_diagonal_eq_bilinear
    hreg.1 hY (nonAliasingFejerPrefixWeight X N m)

theorem nonAliasingFejerPrefixWeight_centeredLowGCDBridge
    {X N m Y : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X)
    (hY : 1 ≤ Y) :
    (∀ n ∈ octaveIndexSet X,
      nonAliasingFejerPrefixWeight X N m n ∈ Set.Icc (0 : ℝ) 1) ∧
    (2 * positiveShiftCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) +
        diagonalCenteredLowGCDCorrelation X Y
          (nonAliasingFejerPrefixWeight X N m) =
      centeredLowGCDBilinear X Y
        (nonAliasingFejerPrefixWeight X N m)) := by
  constructor
  · intro n hn
    exact nonAliasingFejerPrefixWeight_mem_Icc
      hreg hm0 hm1 hn
  · exact
      nonAliasingFejer_two_mul_positiveShift_add_diagonal_eq_bilinear
        hreg hY

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
