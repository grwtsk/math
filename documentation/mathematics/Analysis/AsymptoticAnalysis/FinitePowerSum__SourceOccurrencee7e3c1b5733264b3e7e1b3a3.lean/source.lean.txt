/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Finite sums of fractional powers

An explicit finite integral-test bound for the locally integrable power
`x ^ (β - 1)` when `0 < β ≤ 1`.
-/

set_option autoImplicit false
noncomputable section

open Set MeasureTheory
open scoped BigOperators

namespace GRWTSK.Analysis.Asymptotics.FinitePowerSum

/-- The closed positive-integer power sum has its sharp elementary integral
allowance. -/
theorem sum_Icc_rpow_sub_one_le {β : ℝ}
    (hβ0 : 0 < β) (hβ1 : β ≤ 1) (N : ℕ) :
    (∑ k ∈ Finset.Icc 1 N, (k : ℝ) ^ (β - 1)) ≤
      (N : ℝ) ^ β / β := by
  induction N with
  | zero => simp [Real.zero_rpow hβ0.ne']
  | succ N ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      by_cases hN : N = 0
      · subst N
        norm_num
        have hβinv : (1 : ℝ) ≤ 1 / β :=
          (le_div_iff₀ hβ0).2 (by simpa using hβ1)
        simpa using hβinv
      · have hNpos : 0 < N := Nat.pos_of_ne_zero hN
        have hNposR : (0 : ℝ) < N := by exact_mod_cast hNpos
        have hanti : AntitoneOn (fun x : ℝ => x ^ (β - 1))
            (Icc (N : ℝ) ((N : ℝ) + ((1 : ℕ) : ℝ))) :=
          (Real.antitoneOn_rpow_Ioi_of_exponent_nonpos (by linarith)).mono (by
            intro x hx
            show 0 < x
            exact hNposR.trans_le hx.1)
        have hstep :
            (∑ i ∈ Finset.range 1,
              (((N : ℝ) + (i + 1 : ℕ)) : ℝ) ^ (β - 1)) ≤
              ∫ x in (N : ℝ)..(N : ℝ) + ((1 : ℕ) : ℝ), x ^ (β - 1) :=
          hanti.sum_le_integral
        have hstep' : ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
            ∫ x in (N : ℝ)..(N + 1 : ℕ), x ^ (β - 1) := by
          simpa only [Finset.range_one, Finset.sum_singleton, Nat.cast_zero,
            Nat.cast_one, add_zero, zero_add, Nat.cast_add] using hstep
        rw [integral_rpow (Or.inl (by linarith : -1 < β - 1))] at hstep'
        have hstep'' : ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
            (((N + 1 : ℕ) : ℝ) ^ β - (N : ℝ) ^ β) / β := by
          simpa only [sub_add_cancel] using hstep'
        have hcalc :
            (N : ℝ) ^ β / β + ((N + 1 : ℕ) : ℝ) ^ (β - 1) ≤
              ((N + 1 : ℕ) : ℝ) ^ β / β := by
          calc
            _ ≤ (N : ℝ) ^ β / β +
                ((((N + 1 : ℕ) : ℝ) ^ β - (N : ℝ) ^ β) / β) :=
              add_le_add le_rfl hstep''
            _ = _ := by field_simp [hβ0.ne']; ring_nf
        exact (add_le_add ih le_rfl).trans hcalc

end GRWTSK.Analysis.Asymptotics.FinitePowerSum

#print axioms GRWTSK.Analysis.Asymptotics.FinitePowerSum.sum_Icc_rpow_sub_one_le
