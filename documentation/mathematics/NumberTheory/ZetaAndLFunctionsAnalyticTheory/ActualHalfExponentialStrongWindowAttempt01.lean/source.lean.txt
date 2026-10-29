import ActualPeriodicHalfExponentialFar
import RootActualFullPhysicalPeriodicInterior

/-!
The actual smaller exponential far cutoff lies beyond U plus one.
This stronger guard is proved separately from the valid U-based far budget;
the literal full periodic row then splits without losing either component.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualHalfExponentialStrongWindow
open ActualPeriodicHalfExponentialFar RootActualFullPhysicalPeriodicInterior
open SourceActualFarPeriodicBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource Realization
noncomputable section

/-- The true closed natural lower column lies below exp(A/2) at every real source scale. -/
theorem actualHalfExponentialPeriodicCutoff_lower_column {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A := by
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 1 ≤ A ^ 2 := by nlinarith
  have hscaled := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  have hpoly : A ^ 2 + 1 ≤ (A / 2) ^ 3 / 6 := by nlinarith
  have he := Real.pow_div_factorial_le_exp (by linarith : 0 ≤ A / 2) 3
  norm_num only [Nat.factorial, Nat.cast_ofNat] at he
  unfold actualHalfExponentialPeriodicCutoff
  simp only [Nat.cast_add, Nat.cast_one]
  exact (add_le_add_right hU 1).trans (hpoly.trans he)

/-- The stronger actual source orders retain both the closed lower column and true NAT quotient. -/
theorem actualHalfExponentialPeriodicCutoff_strong_orders {A : ℝ} (hA : 25600 ≤ A) :
    ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualHalfExponentialPeriodicCutoff A ∧
      actualHalfExponentialPeriodicCutoff A ≤
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) :=
  ⟨actualHalfExponentialPeriodicCutoff_lower_column hA,
    (actualHalfExponentialPeriodicCutoff_orders hA).2.2⟩

/-- The exact full actual physical row keeps both pieces at the smaller proved cutoff. -/
theorem actualFullPhysicalPeriodicRow_eq_half_near_add_far {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t =
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (actualHalfExponentialPeriodicCutoff A) +
      actualPhysicalPeriodicPrefixRow A t (actualHalfExponentialPeriodicCutoff A)
        ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
  obtain ⟨hl, hk⟩ := actualHalfExponentialPeriodicCutoff_strong_orders hA
  exact actualFullPhysicalPeriodicRow_eq_near_add_far (by linarith : 1 ≤ A) hl hk t

end
end FormalResearch.RiemannHypothesis.ActualHalfExponentialStrongWindow
