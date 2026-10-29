import Mathlib.LinearAlgebra.Matrix.Rank
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Matrix.row
#check @Matrix.vecMulLinear
#check @Matrix.range_vecMulLinear
#check @Matrix.rank
#check @Matrix.rank_eq_finrank_span_row
#check @Matrix.rank_transpose
#check @LinearIndependent.rank_matrix
#check @linearIndependent_iff_card_eq_finrank_span
#check @Matrix.rank_of_det_ne_zero
#check @Matrix.rank_submatrix_le
#check @Matrix.rank_mul_eq_right_of_det_ne_zero
#check @Submodule.finrank_quotient_add_finrank
