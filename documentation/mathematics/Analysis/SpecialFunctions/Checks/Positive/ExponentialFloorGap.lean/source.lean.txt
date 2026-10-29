import GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

set_option linter.hashCommand false

namespace GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap

#print axioms one_le_natFloor_exp
#print axioms natFloor_exp_pos
#print axioms natFloor_exp_cast_pos
#print axioms natFloor_exp_le
#print axioms exp_lt_natFloor_add_one
#print axioms gap_nonneg
#print axioms gap_lt_inv_natFloor
#print axioms exp_lt_two_mul_natFloor
#print axioms exp_two_mul_div_four_lt_natFloor_sq
#print axioms cubicAllowance_le_inv_natFloor_pow_four
#print axioms natFloor_sq_le_of_cost

#check one_le_natFloor_exp
#check natFloor_exp_pos
#check natFloor_exp_cast_pos
#check natFloor_exp_le
#check exp_lt_natFloor_add_one
#check gap_nonneg
#check gap_lt_inv_natFloor
#check exp_lt_two_mul_natFloor
#check exp_two_mul_div_four_lt_natFloor_sq
#check cubicAllowance_le_inv_natFloor_pow_four
#check natFloor_sq_le_of_cost

end GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
