import GRWTSK.Analysis.Polarization
open GRWTSK.Analysis.Polarization
open scoped InnerProductSpace
example {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E] (x y : E) : ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 + ‖x - y‖ ^ 2) / 4 := real_inner_eq_signed_norm_square x y
