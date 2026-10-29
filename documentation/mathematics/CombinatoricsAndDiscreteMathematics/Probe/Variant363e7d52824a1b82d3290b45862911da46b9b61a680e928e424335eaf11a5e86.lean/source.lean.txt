import SourceAdaptiveSignedCoefficientRows
set_option autoImplicit false
open ArithmeticFunction
open RH16AdaptiveSignedCoefficients

example : truncatedConvolution 4 13 5 = vonMangoldt 5 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 7 = vonMangoldt 7 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 35 = 0 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]
