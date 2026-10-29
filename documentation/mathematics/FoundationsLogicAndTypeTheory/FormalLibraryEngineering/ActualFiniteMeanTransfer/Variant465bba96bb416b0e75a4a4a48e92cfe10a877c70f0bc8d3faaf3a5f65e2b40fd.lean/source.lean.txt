import ActualCommonMeanZeroSide
import Mathlib.Tactic

/-! Exact conditional source transfer for #318's real window [10,176].
The two zero lower bounds and independent J_mean budget are explicit premises;
no published zero/correction result is added as an axiom or formal instance.
Direction: grwtsk contributors; scratch formalization: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFiniteMeanTransfer
open Set
open ContinuousResearch.ActualCommonMeanCalibration
open ContinuousResearch.ActualCommonMeanZeroSide

theorem actualMean_lower160 {A : ℝ} (hA : 10 ≤ A)
    (hJ : -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS : -(1/500000:ℝ) ≤ (normalizedZeroSquare A).re) :
    -(17225001/1000000:ℝ) < sourceMean A := by
  have hsq : (100:ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-10)]
  have hb : (206:ℝ)/A^2 ≤ 206/100 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsq
  rw [sourceMean_eq_offset_zero (by linarith : 1 ≤ A)]
  linarith

theorem actualMean_lower176 {A : ℝ} (hA : 160 ≤ A)
    (hJ : -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS : -(561/100:ℝ) ≤ (normalizedZeroSquare A).re) :
    -(230119/12800:ℝ) < sourceMean A := by
  have hsq : (25600:ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-160)]
  have hb : (206:ℝ)/A^2 ≤ 206/25600 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hsq
  rw [sourceMean_eq_offset_zero (by linarith : 1 ≤ A)]
  linarith

/-- Every real point of the closed window, including A=160, is covered. -/
theorem actualMean_finite_window
    (hJ : ∀ A : ℝ, A ∈ Icc 10 176 →
      -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A)
    (hS160 : ∀ A : ℝ, A ∈ Icc 1 160 →
      -(1/500000:ℝ) ≤ (normalizedZeroSquare A).re)
    (hS176 : ∀ A : ℝ, A ∈ Icc 1 176 →
      -(561/100:ℝ) ≤ (normalizedZeroSquare A).re) :
    ∀ A : ℝ, A ∈ Icc 10 176 → -(18:ℝ) < sourceMean A := by
  intro A hA
  by_cases h160 : A ≤ 160
  · have h := actualMean_lower160 hA.1 (hJ A hA)
      (hS160 A ⟨by linarith [hA.1], h160⟩)
    linarith
  · have h := actualMean_lower176 (by linarith) (hJ A hA)
      (hS176 A ⟨by linarith [hA.1], hA.2⟩)
    linarith

#print axioms actualMean_lower160
#print axioms actualMean_lower176
#print axioms actualMean_finite_window
end ContinuousResearch.ActualFiniteMeanTransfer
