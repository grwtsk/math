import FormalResearch.RiemannHypothesis.XiToeplitz
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

namespace FormalResearch.RiemannHypothesis.ThetaCoefficientScratch

noncomputable section

/-- The centered function uses the actual entire pole-removed xi definition. -/
def centeredXi (u : ℂ) : ℂ := XiToeplitz.xi (1 / 2 + u)

/-- Translation to the center preserves every complex iterated derivative. -/
theorem iteratedDeriv_centeredXi_zero (m : ℕ) :
    iteratedDeriv m centeredXi 0 = iteratedDeriv m XiToeplitz.xi (1 / 2) := by
  change iteratedDeriv m (fun u : ℂ => XiToeplitz.xi (1 / 2 + u)) 0 = _
  rw [iteratedDeriv_comp_const_add]
  simp

/-- The even complex derivative of the literal cosh kernel at its center. -/
theorem iteratedDeriv_cosh_linear_zero (n : ℕ) (t : ℝ) :
    iteratedDeriv (2 * n) (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) 0 =
      (2 * (t : ℂ)) ^ (2 * n) := by
  have harg : (fun u : ℂ => Complex.cosh (2 * u * (t : ℂ))) =
      fun u : ℂ => Complex.cosh ((2 * (t : ℂ)) * u) := by
    funext u
    congr 1
    ring
  rw [harg, iteratedDeriv_comp_const_mul Complex.contDiff_cosh,
    Complex.iteratedDeriv_even_cosh]
  simp

#print axioms iteratedDeriv_centeredXi_zero
#print axioms iteratedDeriv_cosh_linear_zero

#check iteratedDeriv_comp_const_add
#check iteratedDeriv_comp_add_const
#check iteratedDeriv_comp_neg
#check iteratedDeriv_comp_const_sub
#check iteratedDeriv_fun_add
#check iteratedDeriv_const_mul_field
#check iteratedDeriv_mul_const_field
#check iteratedDeriv_div_const
#check iteratedDeriv_comp_const_mul
#check iteratedDeriv_cexp_const_mul
#check Complex.iteratedDeriv_even_cosh
#check Complex.iteratedDeriv_odd_cosh
#check iteratedDeriv_sum

end
end FormalResearch.RiemannHypothesis.ThetaCoefficientScratch
