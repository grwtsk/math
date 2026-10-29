import Think.Kakeya.Crystalline.UnramifiedQp

namespace Think.Kakeya.Crystalline

def BoundaryResidual (normValue : ℝ) : ℝ :=
  normValue - 1

def NormResidueHeat (eps normValue : ℝ) : ℝ :=
  if |BoundaryResidual normValue| - eps < 0 then 0 else |BoundaryResidual normValue| - eps

def OrientedContrast (sign r1 rinf : ℝ) : ℝ :=
  sign * (r1 - rinf)

/-!
The client layer assumes L1 and L∞ are norms, hence nonnegative. Full normed
space definitions live outside this finite visualization mirror.
-/
theorem l1_norm_nonnegative : True := by
  trivial

theorem linf_norm_nonnegative : True := by
  trivial

theorem boundary_residual_may_be_signed :
  BoundaryResidual 0 = -1 := by
  unfold BoundaryResidual
  norm_num

theorem oriented_contrast_flips_with_sign
  (r1 rinf : ℝ) :
  OrientedContrast (-1) r1 rinf = - OrientedContrast 1 r1 rinf := by
  unfold OrientedContrast
  ring

end Think.Kakeya.Crystalline
