import FormalResearch.RiemannHypothesis.SourcePairing
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.Asymptotics.Defs
import Zeta23.FromPNTPlus.MediumPNT

noncomputable section

open Filter Asymptotics
open scoped Topology

namespace FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

open FormalResearch.RiemannHypothesis.SourcePairing

theorem chebyshevPrimePower_eq_psi (x : ℝ) :
    chebyshevPrimePower x = Chebyshev.psi x := by
  rw [chebyshevPrimePower, Chebyshev.psi_eq_sum_Icc]
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Icc] at hn ⊢
    exact ⟨Nat.zero_le n, hn.2⟩
  · intro n hn hn'
    have hnlt : n < 2 := by
      simp only [Finset.mem_Icc] at hn hn'
      omega
    interval_cases n <;> simp

theorem chebyshevError_eq_psi_sub (x : ℝ) :
    chebyshevError x = Chebyshev.psi x - x := by
  rw [chebyshevError, chebyshevPrimePower_eq_psi]

theorem chebyshevError_eq_fun :
    chebyshevError = Chebyshev.psi - id := by
  funext x
  exact chebyshevError_eq_psi_sub x

theorem chebyshevError_abs_le (x : ℝ) (hx : 0 ≤ x) :
    |chebyshevError x| ≤ (Real.log 4 + 5) * x := by
  rw [chebyshevError_eq_psi_sub]
  calc
    |Chebyshev.psi x - x| ≤ |Chebyshev.psi x| + |x| := abs_sub _ _
    _ = Chebyshev.psi x + x := by
      rw [abs_of_nonneg (Chebyshev.psi_nonneg x), abs_of_nonneg hx]
    _ ≤ (Real.log 4 + 4) * x + x := by
      gcongr
      exact Chebyshev.psi_le_const_mul_self hx
    _ = (Real.log 4 + 5) * x := by ring

theorem errorProfile_abs_le (t : ℝ) :
    |errorProfile t| ≤ (Real.log 4 + 5) * Real.exp t := by
  exact chebyshevError_abs_le (Real.exp t) (Real.exp_pos t).le

theorem errorProfile_eventual_of_pnt {c : ℝ}
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ t ≥ T,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨C, hC, hb⟩ := hpnt.exists_pos
  have hbound := Real.tendsto_exp_atTop.eventually hb.bound
  obtain ⟨T, hT⟩ := eventually_atTop.1 hbound
  refine ⟨C, hC, max T 1, le_max_right _ _, ?_⟩
  intro t ht
  have h := hT t (le_trans (le_max_left _ _) ht)
  simpa [Real.norm_eq_abs, Pi.sub_apply, id_eq, Real.log_exp,
    abs_of_pos (Real.exp_pos t), abs_of_pos (Real.exp_pos _),
    errorProfile, chebyshevError_eq_psi_sub, mul_assoc] using h

theorem errorProfile_tail_of_pnt {c : ℝ} (hc : 0 < c)
    (hpnt : (Chebyshev.psi - id) =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10))) :
    ∃ C > 0, ∃ T ≥ 1, ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨C, hC, T, hT, hb⟩ := errorProfile_eventual_of_pnt hpnt
  refine ⟨C, hC, T, hT, ?_⟩
  intro A hA t ht
  refine (hb t (hA.trans ht)).trans ?_
  apply mul_le_mul_of_nonneg_left _ (mul_nonneg hC.le (Real.exp_pos _).le)
  apply Real.exp_le_exp.mpr
  have hp := Real.rpow_le_rpow (show 0 ≤ A by linarith) ht
    (show (0 : ℝ) ≤ 1 / 10 by norm_num)
  nlinarith

/-- The pinned unconditional PNT theorem transported to the actual signed source error. -/
theorem source_quantitative_pnt : ∃ c > 0,
    chebyshevError =O[atTop]
      fun x : ℝ => x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) := by
  rw [chebyshevError_eq_fun]
  exact _root_.MediumPNT

/-- The actual error on every upper logarithmic interval, with no RH or estimate premise. -/
theorem errorProfile_quantitative_tail : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hpnt⟩ := _root_.MediumPNT
  obtain ⟨C, hC, T, hT, hb⟩ := errorProfile_tail_of_pnt hc hpnt
  exact ⟨c, hc, C, hC, T, hT, hb⟩

end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevPrimePower_eq_psi
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevPrimePower_eq_psi
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_psi_sub
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_psi_sub
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_fun
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_fun
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_eventual_of_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_eventual_of_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_tail_of_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_tail_of_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
