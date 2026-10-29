/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenHighTailComponents
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Finite symmetric exact-alias residual energy, k=±qX. -/
def greenAliasResidualEnergy (X Q : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 Q,
    (‖greenCenteringResidual X ((q * X : ℕ) : ℤ)‖^2 +
     ‖greenCenteringResidual X (-((q * X : ℕ) : ℤ))‖^2)

/-- The two signs have identical scalar alias majorants. -/
theorem greenAliasResidualEnergy_le_components
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenAliasResidualEnergy X Q ≤
      4 * ∑ q ∈ Finset.Icc 1 Q,
        (greenAliasResidualA ((q * X : ℕ) : ℤ)^2 +
         greenAliasResidualD ((q * X : ℕ) : ℤ)^2) := by
  unfold greenAliasResidualEnergy
  apply Finset.sum_le_sum
  intro q hq
  have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
  have hkpos : ((q * X : ℕ) : ℤ) ≠ 0 := by omega
  have hpos := sq_norm_greenCenteringResidual_le_aliasing hX hkpos
    (by
      unfold GreenMeshAliasing
      exact ⟨q, by norm_num [mul_comm]⟩)
  have hkneg : -((q * X : ℕ) : ℤ) ≠ 0 := neg_ne_zero.mpr hkpos
  have hneg := sq_norm_greenCenteringResidual_le_aliasing hX hkneg
    (by
      unfold GreenMeshAliasing
      exact ⟨-q, by push_cast; ring⟩)
  have hsameA :
      greenAliasResidualA (-((q * X : ℕ) : ℤ)) =
        greenAliasResidualA ((q * X : ℕ) : ℤ) := by
    unfold greenAliasResidualA greenResidualA
    simp
  have hsameD :
      greenAliasResidualD (-((q * X : ℕ) : ℤ)) =
        greenAliasResidualD ((q * X : ℕ) : ℤ) := by
    unfold greenAliasResidualD
    simp
  rw [hsameA, hsameD] at hneg
  linarith

/-- Exact scalar forms of alias components. -/
theorem greenAliasResidualA_mul_eq
    {X q : ℕ} (hX : 1 ≤ X) (hq : 1 ≤ q) :
    greenAliasResidualA ((q * X : ℕ) : ℤ)^2 =
      9 / (16 * Real.pi^4 * (q : ℝ)^4 * (X : ℝ)^4) := by
  unfold greenAliasResidualA greenResidualA
  simp only [Int.cast_natCast, abs_ofNat]
  field_simp
  ring

theorem greenAliasResidualD_mul_eq
    {X q : ℕ} (hX : 1 ≤ X) (hq : 1 ≤ q) :
    greenAliasResidualD ((q * X : ℕ) : ℤ)^2 =
      (Real.log 2)^2 /
        (4 * Real.pi^2 * (q : ℝ)^2 * (X : ℝ)^2) := by
  unfold greenAliasResidualD
  simp only [Int.cast_natCast, abs_ofNat]
  field_simp
  ring

/-- Universal finite alias-family O(X^-2) bound. -/
theorem greenAliasResidualEnergy_le
    {X Q : ℕ} (hX : 1 ≤ X) :
    ∃ C2 C4 : ℝ, 0 ≤ C2 ∧ 0 ≤ C4 ∧
      greenAliasResidualEnergy X Q ≤
        (9 / (4 * Real.pi^4)) * C4 / (X : ℝ)^4 +
        ((Real.log 2)^2 / Real.pi^2) * C2 / (X : ℝ)^2 := by
  obtain ⟨C2, C4, hC2, hC4, h2, h4⟩ :=
    exists_reciprocalSquareFourthPartialSumBounds
  refine ⟨C2, C4, hC2, hC4, ?_⟩
  calc
    greenAliasResidualEnergy X Q ≤
      4 * ∑ q ∈ Finset.Icc 1 Q,
        (greenAliasResidualA ((q * X : ℕ) : ℤ)^2 +
         greenAliasResidualD ((q * X : ℕ) : ℤ)^2) :=
      greenAliasResidualEnergy_le_components hX
    _ = 4 * ((9 / (16 * Real.pi^4 * (X : ℝ)^4)) *
          (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^4) +
        (((Real.log 2)^2 / (4 * Real.pi^2 * (X : ℝ)^2)) *
          (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2))) := by
      apply congrArg (fun z : ℝ => 4 * z)
      rw [Finset.sum_add_distrib]
      congr 1 <;> rw [Finset.mul_sum] <;>
        apply Finset.sum_congr rfl <;> intro q hq
      · rw [greenAliasResidualA_mul_eq hX (Finset.mem_Icc.mp hq).1]
        ring
      · rw [greenAliasResidualD_mul_eq hX (Finset.mem_Icc.mp hq).1]
        ring
    _ ≤ (9 / (4 * Real.pi^4)) * C4 / (X : ℝ)^4 +
        ((Real.log 2)^2 / Real.pi^2) * C2 / (X : ℝ)^2 := by
      have hXr : 0 < (X : ℝ) := by exact_mod_cast hX
      have hpi : 0 < Real.pi := Real.pi_pos
      have h2Q := h2 Q
      have h4Q := h4 Q
      positivity

end GRWTSK.RiemannHypothesis
