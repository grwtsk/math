/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination
import GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost
import Mathlib.Order.Bounds.Basic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Fixed polynomial allowances for exact native-feature realization

All features are the actual original-window and prescribed
Lebesgue L2 classes, including the final label of the closed inventory.

A fixed nonnegative coefficient C and natural degree d give the allowance
C*(1+T)^d. Beyond the explicit threshold 2*C*(d+1)!, exact individual
same-label realization requires an operator norm greater than this allowance.
The literal T=2A consumer prices C*(1+A)^d when A>=1 and A>C*(d+1)!.
An unbounded domain of scales therefore cannot support such a fixed allowance
for a realizing map at every admitted scale. Maps may vary with scale.

The statements apply to any unbounded chosen domain, including one independently
known to contain only strictly mature horizons. They do not prove unboundedness
of a particular maturity domain or existence of realizing maps. Exact-contact
implications remain vacuous. No equality of Grams, free mixing, signed arithmetic
budget, amplitude return, negative/joint sector, general operator bridge, RH or
converse follows. The last label may have Mobius coefficient zero. No A=0 or
C-infinity claim is made. Mathematics grants no authentication or source rights.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction

open MeasureTheory
open GRWTSK.Analysis.SpecialFunctions.ExponentialPolynomialDomination
open GRWTSK.Analysis.SpecialFunctions.ExponentialFloorGap
open GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalLastLabelOperatorCost

noncomputable section

/-- A fixed polynomial allowance is strictly below any exact last-label realization cost. -/
theorem last_label_realization_exceeds_polynomial (C : ℝ) (d : ℕ)
    {A T : ℝ} (hC : 0 ≤ C) (hA : 0 < A) (hT : 1 ≤ T)
    (beyond : 2 * C * ((d + 1).factorial : ℝ) < T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 T (Nat.floor (Real.exp T))) =
      prescribedSourceL2 A hA (Nat.floor (Real.exp T))) :
    C * (1 + T) ^ d < ‖map‖ :=
  (polynomial_lt_exp_two_mul_div_four C d hC hT beyond).trans
    (last_label_continuous_realization_exponential_norm hA (by linarith) map realizes)

/-- Direct realization of the full original inventory includes the last label. -/
theorem whole_inventory_realization_exceeds_polynomial (C : ℝ) (d : ℕ)
    {A T : ℝ} (hC : 0 ≤ C) (hA : 0 < A) (hT : 1 ≤ T)
    (beyond : 2 * C * ((d + 1).factorial : ℝ) < T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : ∀ n : ℕ, 1 ≤ n → n ≤ Nat.floor (Real.exp T) →
      map (originalWindowL2 T n) = prescribedSourceL2 A hA n) :
    C * (1 + T) ^ d < ‖map‖ :=
  last_label_realization_exceeds_polynomial C d hC hA hT beyond map
    (realizes (Nat.floor (Real.exp T)) (one_le_natFloor_exp T (by linarith)) le_rfl)

/-- On the literal horizon, even a polynomial allowance in the radius A is insufficient. -/
theorem prescribed_horizon_realization_exceeds_polynomial (C : ℝ) (d : ℕ)
    {A : ℝ} (hC : 0 ≤ C) (hA : 1 ≤ A)
    (beyond : C * ((d + 1).factorial : ℝ) < A)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 (2 * A) (Nat.floor (Real.exp (2 * A)))) =
      prescribedSourceL2 A (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA)
        (Nat.floor (Real.exp (2 * A)))) :
    C * (1 + A) ^ d < ‖map‖ := by
  have positive : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have horizon : 1 ≤ 2 * A := by linarith
  have threshold : 2 * C * ((d + 1).factorial : ℝ) < 2 * A := by linarith
  have cost := last_label_realization_exceeds_polynomial C d hC positive
    horizon threshold map realizes
  have polynomial : C * (1 + A) ^ d ≤ C * (1 + 2 * A) ^ d :=
    mul_le_mul_of_nonneg_left
      (pow_le_pow_left₀ (by linarith : (0 : ℝ) ≤ 1 + A) (by linarith) d) hC
  exact polynomial.trans_lt cost

/-- The coefficient and degree are fixed; the allowed scale set is explicitly unbounded. -/
theorem no_polynomial_individual_realization_on_unbounded_scales (C : ℝ) (d : ℕ)
    (hC : 0 ≤ C) (scales : Set ℝ) (unbounded : ¬ BddAbove scales) :
    ¬ ∀ A : ℝ, A ∈ scales → ∀ hA : 1 ≤ A,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C * (1 + A) ^ d ∧
        map (originalWindowL2 (2 * A) (Nat.floor (Real.exp (2 * A)))) =
          prescribedSourceL2 A (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA)
            (Nat.floor (Real.exp (2 * A))) := by
  intro boundedFamily
  obtain ⟨A, member, large⟩ := (not_bddAbove_iff.mp unbounded)
    (max 1 (C * ((d + 1).factorial : ℝ)))
  have admitted : 1 ≤ A := (le_max_left _ _).trans large.le
  have beyond : C * ((d + 1).factorial : ℝ) < A :=
    (le_max_right _ _).trans_lt large
  obtain ⟨map, budget, realizes⟩ := boundedFamily A member admitted
  exact (not_lt_of_ge budget)
    (prescribed_horizon_realization_exceeds_polynomial C d hC admitted beyond map realizes)

/-- A single direct same-label inventory map at each scale also pays the individual cost. -/
theorem no_polynomial_inventory_realization_on_unbounded_scales (C : ℝ) (d : ℕ)
    (hC : 0 ≤ C) (scales : Set ℝ) (unbounded : ¬ BddAbove scales) :
    ¬ ∀ A : ℝ, A ∈ scales → ∀ hA : 1 ≤ A,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C * (1 + A) ^ d ∧
        ∀ n : ℕ, 1 ≤ n → n ≤ Nat.floor (Real.exp (2 * A)) →
          map (originalWindowL2 (2 * A) n) =
            prescribedSourceL2 A (lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA) n := by
  intro boundedFamily
  apply no_polynomial_individual_realization_on_unbounded_scales C d hC scales unbounded
  intro A member hA
  obtain ⟨map, budget, realizes⟩ := boundedFamily A member hA
  refine ⟨map, budget, ?_⟩
  exact realizes (Nat.floor (Real.exp (2 * A)))
    (one_le_natFloor_exp (2 * A) (by linarith)) le_rfl

end

end GRWTSK.Analysis.InnerProductSpace.CausalRealizationPolynomialObstruction
