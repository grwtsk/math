/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDBilinearReindexing

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD.Checks

#check mobiusLogDivisorSum_eq_vonMangoldt
#check centeredModulusCoefficient_one
#check centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one
#check centeredLowGCDBilinear_eq_four_channel
#check orderedCenteredLowGCDCorrelation_eq_bilinear
#check two_mul_positiveShift_add_diagonal_eq_bilinear
#check centeredLowGCDBilinear_eq_coprime_add_nonCoprime
#check centeredCoprimeBilinear_eq_mobiusSquareExpansion
#check weighted_vonMangoldt_sub_one_sq_le_absoluteCoprimeMajorant
#check centeredCoprimeBilinear_le_absoluteMajorant

example {X Y : ℕ} (hX : 0 < X) (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    2 * positiveShiftCenteredLowGCDCorrelation X Y w +
        diagonalCenteredLowGCDCorrelation X Y w =
      centeredLowGCDBilinear X Y w :=
  two_mul_positiveShift_add_diagonal_eq_bilinear hX hY w

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD.Checks
