import SourceCutoffOneSharpTail
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm

/-! Apply the sharper zero-endpoint Abel cost to the actual prime-square sector.
Direction and conceptual origin: grwtsk contributors.
Exact source comparison and formalization: OpenAI Codex assistance.
The original square main identity is established, not new mathematical credit. -/
set_option autoImplicit false
noncomputable section
namespace RH16SharpPrimeSquareConsumer
open RH16CutoffOneSharpTail RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourceCutoffOneLedger SourcePrimeSquareMainTerm SourceDiagonalMainTerm

theorem primeSquareMoment_tail_main_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| ≤
      2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q) := by
  have he := cutoffOnePrimeDiagonal_tail_error hQ hQA
  rw [cutoffOnePrimeDiagonal_eq_window A (hQ.trans hQA)] at he
  rw [primeSquareMoment_eq_primeLogWindow]
  have hid : -WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) +
      diagonalMainCoefficient A * A =
        -(WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) -
          diagonalMainCoefficient A * A) := by ring
  rw [hid, abs_neg] at he
  exact he

/-- Explicit all-real square-sector cost, before its separate physical anchor traces. -/
theorem primeSquareMoment_ninety_one_error_lt {A : ℝ} (hA : 91 ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| < 49 / 2 := by
  have he := primeSquareMoment_tail_main_error (Q := 91) (by norm_num) hA
  have hn := cutoffOneSharpDiagonalCost_ninety_one_lt_26
  unfold cutoffOneSharpDiagonalCost at hn
  linarith

end RH16SharpPrimeSquareConsumer
