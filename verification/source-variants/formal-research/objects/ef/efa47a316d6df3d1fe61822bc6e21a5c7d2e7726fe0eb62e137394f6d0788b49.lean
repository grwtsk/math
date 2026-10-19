import Mathematics.Kernel.Regularization

/-!
# Kronecker baseline

The Kronecker kernel is the zero semantic kernel plus the exact identity channel
with weight one.  It is the compatibility baseline for ordinary `ℓ²` concept
coordinates; it is not a useful semantic clustering kernel by itself.
-/

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u} [DecidableEq Index]

/-- Exact Kronecker kernel. -/
def kroneckerKernel : PositiveKernel Index :=
  regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)

@[simp]
theorem kroneckerKernel_apply (left right : Index) :
    kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 := by
  simp [kroneckerKernel]

/-- The Kronecker kernel is positive definite. -/
theorem kroneckerKernel_posDef :
    (kroneckerKernel (Index := Index)).matrix.PosDef :=
  regularizedKernel_posDef
    (zeroSemanticKernel (Index := Index)) (1 : ℝ) (by norm_num)

end Mathematics.Kernel
