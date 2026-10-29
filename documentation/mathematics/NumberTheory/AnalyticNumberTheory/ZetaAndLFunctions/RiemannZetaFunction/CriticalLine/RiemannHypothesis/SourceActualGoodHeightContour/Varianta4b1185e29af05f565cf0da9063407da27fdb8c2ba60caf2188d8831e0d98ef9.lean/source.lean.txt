import SourceActualPrimeBumpDictionary
import Zeta23.WeilEF.Contour
import Zeta23.WeilEF.GoodHeights
import Zeta23.WeilEF.FullLine

/-!
A genuine selected growing good height for the actual source's finite full residue ledger.
The completed-zeta multiplier, every crossed zero multiplicity, both horizontal segments,
and both vertical segments remain. The source double pole zeros at 0 and 1 are proved.
This gives no zero exclusion or uniform upper bound for the signed growing head.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualGoodHeightContour
open MeasureTheory Set Zeta23
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualPrimeBumpDictionary SourceActualBumpMellinLineBudget
open SourceActualRightBumpTail SourceActualBumpTwoTailBudget SourceActualBumpMovingHeight
noncomputable section

/-- The actual ceiling index for choosing a good height above the prescribed source scale. -/
def actualGoodHeightIndex (A c : ℝ) : ℕ := ⌈max 7 (actualBumpMovingHeight A c)⌉₊

/-- The ceiling and closed lower bound are genuine for every real source input. -/
theorem actualGoodHeightIndex_bounds (A c : ℝ) :
    7 ≤ actualGoodHeightIndex A c ∧
      max 7 (actualBumpMovingHeight A c) ≤ (actualGoodHeightIndex A c : ℝ) ∧
      (actualGoodHeightIndex A c : ℝ) < max 7 (actualBumpMovingHeight A c) + 1 := by
  have h7 : (7 : ℝ) ≤ max 7 (actualBumpMovingHeight A c) := le_max_left _ _
  have h0 : 0 ≤ max 7 (actualBumpMovingHeight A c) := by linarith
  have hceil := Nat.le_ceil (max 7 (actualBumpMovingHeight A c))
  have hj : 7 ≤ actualGoodHeightIndex A c := by
    exact_mod_cast h7.trans hceil
  exact ⟨hj, hceil, Nat.ceil_lt_add_one h0⟩

/-- The genuine actual source pole weights vanish, with the original s²(s−1)² multiplier. -/
theorem actualInitialPrimeMellin_poles_zero (A : ℝ) (hA : 1 ≤ A) :
    actualInitialPrimeMellin A 0 = 0 ∧ actualInitialPrimeMellin A 1 = 0 := by
  constructor <;> rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA] <;>
    simp [bumpMellinWeight]

/-- Any genuine good height above the source height retains the same exact actual tail cost. -/
theorem actualInitialPrimeTwoTail_above_movingHeight_norm_le (A c R : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hR : actualBumpMovingHeight A c ≤ R) :
    ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c / A ^ 9 := by
  have hbase := actualBumpMovingHeight_ge_one A c hA hc
  rw [actualInitialPrimeTwoTail_eq_bump hA hc]
  have hb := actualBumpTwoTail_norm_le A c R hA hc (hbase.trans hR)
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg c
  have hnum : 0 ≤ actualRightBumpTailNumerator A c := by
    unfold actualRightBumpTailNumerator
    positivity
  have hpow := pow_le_pow_left₀ (show 0 ≤ actualBumpMovingHeight A c by linarith) hR 5
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : actualRightBumpTailNumerator A c /
      (5 * Real.pi * actualBumpMovingHeight A c ^ 5) =
      (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * sourceNormalization A * A ^ 9) := by
    rw [ht]
    unfold actualRightBumpTailNumerator
    field_simp
  calc
    _ ≤ actualRightBumpTailNumerator A c / (5 * Real.pi * R ^ 5) := hb
    _ ≤ actualRightBumpTailNumerator A c /
        (5 * Real.pi * actualBumpMovingHeight A c ^ 5) := by
      apply div_le_div_of_nonneg_left hnum (by positivity)
      gcongr
    _ = _ := he
    _ ≤ (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * (4096 / 109395) * A ^ 9) := by
      apply div_le_div_of_nonneg_left (by positivity) (by positivity)
      gcongr
      exact actualBumpNormalization_lower A hA
    _ = _ := by unfold actualBumpMovingTailConstant; ring

/-- Actual good-height selection and the complete finite source residue identity are unconditional.
All zero multiplicities and the entire completed-zeta contour are retained. -/
theorem actual_source_growing_goodheight_residue_ledger :
    ∃ Cg : ℝ, 0 < Cg ∧ ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3 / 2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c) + 2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg * Real.log ((actualGoodHeightIndex A c : ℝ) + 3) ^ 2) ∧
        ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c / A ^ 9 ∧
        ∃ Z : Finset ℂ,
          (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R} ∧
          RectangleIntegral' (fun s => actualInitialPrimeMellin A s *
            logDeriv completedRiemannZeta s)
            ((1 - c : ℝ) - (R : ℂ) * Complex.I) ((c : ℂ) + (R : ℂ) * Complex.I) =
            ∑ ρ ∈ Z, (zeroMult ρ : ℂ) * actualInitialPrimeMellin A ρ := by
  obtain ⟨Cg, hCg, hgood⟩ := WeilEF.good_heights_at
  refine ⟨Cg, hCg, ?_⟩
  intro A c hA hc hc2
  have hi := actualGoodHeightIndex_bounds A c
  obtain ⟨R, hjR, hRj, hRgood⟩ := hgood (actualGoodHeightIndex A c) hi.1
  have hlow := hi.2.1.trans hjR
  have hupp : R < max 7 (actualBumpMovingHeight A c) + 2 := by linarith [hi.2.2]
  have h7 : 7 ≤ R := (le_max_left _ _).trans hlow
  have hbase : actualBumpMovingHeight A c ≤ R := (le_max_right _ _).trans hlow
  have hcomplete := WeilEF.completedZeta_ne_zero_on_horizontals hc hc2
    (fun s him hr1 hr2 => (hRgood s him hr1 hr2).1)
  obtain ⟨Z, hZ, hrect⟩ := WeilEF.rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 h7 hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero] at hrect
  exact ⟨R, hlow, hupp, hRgood,
    actualInitialPrimeTwoTail_above_movingHeight_norm_le A c R hA hc hbase, Z, hZ, hrect⟩

end
end FormalResearch.RiemannHypothesis.SourceActualGoodHeightContour
