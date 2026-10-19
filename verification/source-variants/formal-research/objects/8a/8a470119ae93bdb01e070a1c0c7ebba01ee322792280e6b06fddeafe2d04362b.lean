import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock

set_option autoImplicit false
noncomputable section
namespace IndependentActualPrimeBlockGuards

open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedTailPrimeBlock
open SourcePairedPrimeAverages SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

example {A C : ℝ} (hA : 1 ≤ A) :
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C ≤
      primeLogSum (2 * A) (pairedTailTest A)) ↔
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C -
      earlyPrimeBlock A ≤ complementaryPrimeBlocks A) := by
  rw [primeSum_eq_early_add_complement hA]
  constructor <;> intro h <;> linarith

example {A C : ℝ} (hA : 160 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) : earlyPrimeBlock A < 0 := by
  have hb := earlyPrimeBlock_le hA hAC hC
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by
    have hA0 : 0 < A := by linarith
    positivity
  linarith

example : ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → earlyPrimeBlock A < 0 := by
  obtain ⟨R, hR, h⟩ := earlyPrimeBlock_eventual_bound
  refine ⟨R, hR, ?_⟩
  intro A hRA
  have hA0 : 0 < A := by linarith
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by positivity
  linarith [h A hRA]

example {A : ℝ} (hA : 160 ≤ A) : pairedTailTest A (A / 80) < 0 := by
  have h := earlyTailTest_le hA (le_refl (A / 80)) (by linarith)
  have hp : 0 < (7 / 16 : ℝ) * Real.exp (A / 160) := by positivity
  linarith

end IndependentActualPrimeBlockGuards
