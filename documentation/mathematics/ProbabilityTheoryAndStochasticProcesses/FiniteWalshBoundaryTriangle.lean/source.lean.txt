/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Proof draft assistance: OpenAI. Mathlib retains its upstream attribution. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteLabeledBoundaryTV
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite triangle for Walsh energy and labeled boundary

Issue #630, direct parent PR #638 at
bfcb93241df2d164e62e750637d81bf983808dd5.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Every term uses the SAME nonempty finite root set and the SAME complete
Boolean pattern space. Actual arithmetic cancellation, cyclic indexing,
sofic-limit existence, spectral gaps and RH are not supplied.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators
variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Exact change of the scaled empirical pattern discrepancy. -/
theorem scaledDeviation_change (roots : Finset ℕ)
    (source model : ℕ → ι → Bool) (a : ι → Bool) :
    scaledPatternDeviation roots model a =
      (Fintype.card (ι → Bool) : ℚ) *
        ((categoricalPatternCount roots model a -
          categoricalPatternCount roots source a) / (roots.card : ℚ)) +
      scaledPatternDeviation roots source a := by
  classical
  unfold scaledPatternDeviation
  rw [fullCubeEmpirical_eq_categorical roots model a,
      fullCubeEmpirical_eq_categorical roots source a]
  ring

/-- Triangle inequality for the exact Walsh empirical TV and the
intervening complete-label categorical TV. No uniform reference
law is fabricated as another finite sample. -/
theorem uniformTV_le_boundaryTV_add_sourceTV
    (roots : Finset ℕ) (source model : ℕ → ι → Bool)
    (hroots : 0 < roots.card) :
    totalVariationFromUniform roots model ≤
      categoricalTotalVariation roots source model +
        totalVariationFromUniform roots source := by
  classical
  let q : ℚ := Fintype.card (ι → Bool)
  let n : ℚ := roots.card
  have hq : 0 < q := boolCube_card_pos (ι := ι)
  have hn : 0 < n := by
    dsimp [n]
    exact_mod_cast hroots
  have h2q : 0 < 2 * q := by positivity
  have hone (a : ι → Bool) :
      |scaledPatternDeviation roots model a| ≤
        q * (|categoricalPatternCount roots model a -
                categoricalPatternCount roots source a| / n) +
        |scaledPatternDeviation roots source a| := by
    calc
      |scaledPatternDeviation roots model a| =
        |q * ((categoricalPatternCount roots model a -
                categoricalPatternCount roots source a) / n) +
              scaledPatternDeviation roots source a| := by
          exact congrArg abs (scaledDeviation_change roots source model a)
      _ ≤ |q * ((categoricalPatternCount roots model a -
                  categoricalPatternCount roots source a) / n)| +
            |scaledPatternDeviation roots source a| := abs_add_le _ _
      _ = q * (|categoricalPatternCount roots model a -
                  categoricalPatternCount roots source a| / n) +
            |scaledPatternDeviation roots source a| := by
          rw [abs_mul, abs_div, abs_of_pos hq, abs_of_pos hn]
  have hsum :
      (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) ≤
        q * ((∑ a : ι → Bool,
          |categoricalPatternCount roots model a -
            categoricalPatternCount roots source a|) / n) +
        (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := by
    calc
      _ ≤ ∑ a : ι → Bool,
          (q * (|categoricalPatternCount roots model a -
              categoricalPatternCount roots source a| / n) +
           |scaledPatternDeviation roots source a|) := by
        apply Finset.sum_le_sum
        intro a _
        exact hone a
      _ = _ := by
        rw [Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.sum_div]
  have hflip :
      (∑ a : ι → Bool,
        |categoricalPatternCount roots model a -
          categoricalPatternCount roots source a|) =
      (∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) := by
    apply Finset.sum_congr rfl
    intro a _
    exact abs_sub_comm _ _
  have hcat :
      q * ((∑ a : ι → Bool,
        |categoricalPatternCount roots model a -
          categoricalPatternCount roots source a|) / n) =
        (2 * q) * categoricalTotalVariation roots source model := by
    rw [hflip]
    change q * ((∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) / n) =
      (2 * q) * ((∑ a : ι → Bool,
        |categoricalPatternCount roots source a -
          categoricalPatternCount roots model a|) / (2 * n))
    field_simp [ne_of_gt hn]
  have hnum :
      (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) ≤
        (2 * q) * categoricalTotalVariation roots source model +
          (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := by
    calc
      _ ≤ q * ((∑ a : ι → Bool,
          |categoricalPatternCount roots model a -
            categoricalPatternCount roots source a|) / n) +
        (∑ a : ι → Bool, |scaledPatternDeviation roots source a|) := hsum
      _ = _ := by rw [hcat]
  calc
    totalVariationFromUniform roots model =
        (∑ a : ι → Bool, |scaledPatternDeviation roots model a|) /
          (2 * q) := rfl
    _ ≤ ((2 * q) * categoricalTotalVariation roots source model +
         (∑ a : ι → Bool, |scaledPatternDeviation roots source a|)) /
           (2 * q) :=
      div_le_div_of_nonneg_right hnum (le_of_lt h2q)
    _ = categoricalTotalVariation roots source model +
          totalVariationFromUniform roots source := by
      unfold totalVariationFromUniform
      field_simp [ne_of_gt h2q]
      ring

/-- Typed finite Walsh-to-boundary error return. All source labels
agree with the model away from the counted exceptional root set.
Only the source's nonempty Walsh energy enters the square-root term. -/
theorem finiteWalshBoundary_return
    (roots exception : Finset ℕ)
    (source model : ℕ → ι → Bool)
    (hroots : 0 < roots.card) (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → source n = model n) :
    (totalVariationFromUniform roots model : ℝ) ≤
      ((exception.card : ℚ) / (roots.card : ℚ) : ℝ) +
        Real.sqrt (nonemptyCorrelationEnergy roots source : ℝ) / 2 := by
  classical
  have ht := uniformTV_le_boundaryTV_add_sourceTV roots source model hroots
  have hb := fullCubeBoundaryTV_le roots exception source model hroots hsub hagree
  have he := totalVariation_le_half_sqrt_energy roots source hroots
  have htR :
      (totalVariationFromUniform roots model : ℝ) ≤
      (categoricalTotalVariation roots source model : ℝ) +
        (totalVariationFromUniform roots source : ℝ) := by
    exact_mod_cast ht
  have hbR :
      (categoricalTotalVariation roots source model : ℝ) ≤
        ((exception.card : ℚ) / (roots.card : ℚ) : ℝ) := by
    exact_mod_cast hb
  linarith

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
