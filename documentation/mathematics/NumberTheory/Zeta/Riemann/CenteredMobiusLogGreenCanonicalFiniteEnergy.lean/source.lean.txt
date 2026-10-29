/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalPSeries
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem greenHighA2Majorant_le_canonical
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenHighA2Majorant X Q ≤
      (81 / (16 * Real.pi^4)) *
        greenPSeriesC4 * greenPSeriesC4 / (X : ℝ)^4 := by
  obtain ⟨C4, hC4, h⟩ := greenHighA2Majorant_le (Q := Q) hX
  -- Direct canonical proof follows the same finite factorization, replacing
  -- the existential partial-sum bounds by the fixed C4.
  unfold greenHighA2Majorant greenResidualA
  calc
    _ ≤ (81 / (16 * Real.pi^4)) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^4) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^4) /
        (X : ℝ)^4 := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hrpos : 1 ≤ r := (Finset.mem_Icc.mp hr).1
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      positivity
    _ ≤ (81 / (16 * Real.pi^4)) *
        greenPSeriesC4 * greenPSeriesC4 / (X : ℝ)^4 := by
      gcongr
      · exact green_reciprocalFourth_partial_le (X / 2)
      · exact green_reciprocalFourth_partial_le Q

theorem greenHighC2Majorant_le_canonical
    {X Q : ℕ} (hX : 1 ≤ X) :
    greenHighC2Majorant X Q ≤
      (5 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 / (X : ℝ)^4 := by
  unfold greenHighC2Majorant greenResidualC
  calc
    _ ≤ (5 / (16 * Real.pi^2)) *
        (∑ r ∈ greenPositivePrincipalResidues X, 1 / (r : ℝ)^2) *
        (∑ q ∈ Finset.Icc 1 Q, 1 / (q : ℝ)^2) /
        (X : ℝ)^4 := by
      apply Finset.sum_le_sum
      intro r hr
      apply Finset.sum_le_sum
      intro q hq
      have hqpos : 1 ≤ q := (Finset.mem_Icc.mp hq).1
      have hden := principal_residue_denominator_lower hX hr hqpos
      positivity
    _ ≤ (5 / (16 * Real.pi^2)) *
        greenPSeriesC2 * greenPSeriesC2 / (X : ℝ)^4 := by
      gcongr
      · exact green_reciprocalSquare_partial_le (X / 2)
      · exact green_reciprocalSquare_partial_le Q

/-- Canonical finite nonalias high-tail bound. -/
theorem greenHighNonaliasResidualEnergy_le_canonical
    {X Q : ℕ} (hX : 2 ≤ X) :
    greenHighNonaliasResidualEnergy X Q ≤
      (15 / (16 * Real.pi^2)) *
          greenPSeriesC2 * greenPSeriesC2 / (X : ℝ)^2 +
      (243 / (16 * Real.pi^4)) *
          greenPSeriesC4 * greenPSeriesC4 / (X : ℝ)^4 +
      (15 / (16 * Real.pi^2)) *
          greenPSeriesC2 * greenPSeriesC2 / (X : ℝ)^4 := by
  have hcomp := greenHighNonaliasResidualEnergy_le_components hX
  have hA := greenHighA2Majorant_le_canonical (Q := Q) (by omega : 1 ≤ X)
  have hB := greenHighQuotientResidueMajorant_le_canonical
    (Q := Q) (by omega : 1 ≤ X)
  have hC := greenHighC2Majorant_le_canonical (Q := Q) (by omega : 1 ≤ X)
  nlinarith [Real.pi_pos, greenPSeriesC2_nonneg, greenPSeriesC4_nonneg]

/-- Canonical finite hybrid energy bound, with no existential constants. -/
theorem greenFiniteHybridResidualEnergy_le_canonical
    {X Q : ℕ} (hX : 2 ≤ X) :
    greenFiniteHybridResidualEnergy X Q ≤
      (1 + 1 / Real.pi)^2 / (X : ℝ) +
      ((15 / (16 * Real.pi^2)) *
          greenPSeriesC2 * greenPSeriesC2 +
        ((Real.log 2)^2 / Real.pi^2) * greenPSeriesC2) /
          (X : ℝ)^2 +
      ((243 / (16 * Real.pi^4)) *
          greenPSeriesC4 * greenPSeriesC4 +
        (15 / (16 * Real.pi^2)) *
          greenPSeriesC2 * greenPSeriesC2 +
        (9 / (4 * Real.pi^4)) * greenPSeriesC4) /
          (X : ℝ)^4 := by
  unfold greenFiniteHybridResidualEnergy
  have hlow := greenLowPrincipalResidualEnergy_le (by omega : 1 ≤ X)
  have hhigh := greenHighNonaliasResidualEnergy_le_canonical (Q := Q) hX
  have halias := greenAliasResidualEnergy_le_canonical
    (Q := Q) (by omega : 1 ≤ X)
  nlinarith

end GRWTSK.RiemannHypothesis
