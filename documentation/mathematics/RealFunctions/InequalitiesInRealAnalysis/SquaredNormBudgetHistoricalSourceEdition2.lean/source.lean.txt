/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Candidate proof sources, NOT compiled. The analytic Type-I estimate and its
source adapter are paper proofs in MATHEMATICS.md, not silently assumed axioms.
-/
import Mathlib
set_option autoImplicit false
namespace GRWTSK.NumberTheory.VonMangoldt.TypeIEnergyBudget

/-- Exact rational slack used after the proved analytic coefficient estimate. -/
theorem constant_slack : (2:ℝ)*((3:ℝ)/2+7/5)^2 < 17 := by norm_num

/-- Return from a bound on the actual difference of two Hilbert norms. -/
theorem forward_energy (a b X : ℝ) (hX : 0<X)
    (h : (a-b)^2 ≤ 17/X) : a^2 ≤ 2*b^2+34/X := by
  have hsq := sq_nonneg (a-2*b)
  have htwo : (2:ℝ)*(17/X)=34/X := by ring
  nlinarith

/-- The same reconstruction works in the reverse direction. -/
theorem reverse_energy (a b X : ℝ) (hX : 0<X)
    (h : (a-b)^2 ≤ 17/X) : b^2 ≤ 2*a^2+34/X := by
  apply forward_energy b a X hX
  nlinarith

/-- The complete mixed inner product is retained, with either sign. -/
theorem mixed_energy_identity (u v : ℝ) :
    (u+v)^2=u^2+v^2+2*(u*v) := by ring

/-- Existing proper-power and canonical-return allowances combine explicitly. -/
theorem canonical_upper (R EIIB E EP X : ℝ) (hX : 0<X)
    (hR : R ≤ EP) (hP : EP ≤ 2*E+32/X)
    (hE : E ≤ 2*EIIB+34/X) : R ≤ 4*EIIB+100/X := by
  have hcomb : (2:ℝ)*(34/X)+32/X=100/X := by ring
  linarith

/-- Reverse return retains the canonical residual even when it is negative. -/
theorem canonical_reverse (R EIIB E L X : ℝ) (hX : 0<X)
    (hIIB : EIIB ≤ 2*E+34/X)
    (hE : E ≤ 2*R+((7/10)*L+32)/X) :
    EIIB ≤ 4*R+((7/5)*L+98)/X := by
  have hcomb : (2:ℝ)*(((7/10)*L+32)/X)+34/X=((7/5)*L+98)/X := by ring
  linarith

end GRWTSK.NumberTheory.VonMangoldt.TypeIEnergyBudget
