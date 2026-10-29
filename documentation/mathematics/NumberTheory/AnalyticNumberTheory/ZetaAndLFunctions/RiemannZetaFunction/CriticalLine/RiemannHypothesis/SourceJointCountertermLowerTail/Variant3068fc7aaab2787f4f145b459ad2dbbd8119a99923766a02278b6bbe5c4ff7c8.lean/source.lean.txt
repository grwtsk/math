import SourceJointCountertermAlignment
import SourceJointMangoldtBaseline

/-!
# Actual source counterterm cancellation with retained lower tail

This private additive consumer uses the checked baseline theorem in its proof.
It keeps the signed Möbius divisor counterterms, Mangoldt work, complete centered
diagonal, lower error boundary, and exact quotient endpoint. The independently
defined main term is eliminated only by the preceding counterterm alignment law.
No signed estimate, positivity assertion, or RH conclusion is introduced.

Human direction: grwtsk contributors. AI proof construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail

open ArithmeticFunction MeasureTheory
open scoped BigOperators Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel
open SourceMangoldtAbel SourceDivisorCounterterms
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensAbel EstimateVaughanSource EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateBetaCentering

noncomputable section

/-- Reuse the checked whole-line baseline while retaining the exact signed lower tail
and all arithmetic compensations. -/
theorem divisor_remainders_eq_lower_tail_joint_work_after_mean_cancellation
    (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d) =
      -(∫ t in Set.Iic (Real.log (vaughanCutoff A : ℝ)),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorCounterterm A d) +
      (let U := vaughanCutoff A
       let N := sourceKernelCutoff A
       let K := N / (U + 1)
       let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
       let R : ℕ → ℝ := fun k =>
         ∑ m ∈ longInventory A,
           vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
       B K * R K) := by
  have hc :=
    SourceJointCountertermAlignment.divisor_remainders_eq_joint_work_after_mean_cancellation A hA
  rw [SourceJointMangoldtBaseline.jointMangoldtTestProfile_window_eq_neg_lower_tail A hA] at hc
  exact hc

end
end FormalResearch.RiemannHypothesis.SourceJointCountertermLowerTail
