import SourceFullXiOuterContraction

/-!
Explicit physical-variable derivative readout of the recovered full shifted Xi
contraction. The identity uses PLUS native pairing and retains the actual gamma
and first-atom traces. No uniform signed estimate is asserted. Mathematical
direction, selection and evaluation: grwtsk contributors. Formal source recovery
and construction: OpenAI Codex assistance. Private focused status only.
-/

set_option autoImplicit false
noncomputable section

namespace RH16ShiftedXiAdapter

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceFullXiOuterContraction
open FormalResearch.RiemannHypothesis.SourcePositiveSampling
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open RH16CesaroPrimitive RH16CesaroSignedPairing RH16ActualPsiNegativeBlock
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- This exact prefactor uses the positive physical coordinate, not a totalized power. -/
theorem plain_derivative_prefactor_eq (y : ℝ) (hy : 0 < y) :
    Real.exp (-Real.log y / 2) / y = 1 / y ^ (3 / 2 : ℝ) := by
  calc
    _ = Real.exp (-Real.log y / 2) / Real.exp (Real.log y) := by
      rw [Real.exp_log hy]
    _ = Real.exp (-Real.log y / 2 - Real.log y) := (Real.exp_sub _ _).symm
    _ = 1 / y ^ (3 / 2 : ℝ) := by
      rw [Real.rpow_def_of_pos hy, one_div, ← Real.exp_neg]
      congr 1
      ring

/-- The actual unit plain profile has the requested minus correlation derivative. -/
theorem plainProfile_deriv_eq_actual_kernel (A y : ℝ) (hA : 0 < A) (hy : 0 < y) :
    deriv (plainProfile A 1) y =
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
          y ^ (3 / 2 : ℝ) := by
  rw [(plainProfile_hasDerivAt hA 1 hy).deriv]
  simp only [Real.log_one, zero_add]
  rw [plain_derivative_prefactor_eq y hy]
  ring

/-- Exact transformed source with the prescribed shifted Xi and original real moving range. -/
theorem signedCesaroPairing_eq_explicit_shiftedXi (A : ℝ) (hA : 1 ≤ A) :
    signedCesaroPairing A =
      ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
          sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
            y ^ (3 / 2 : ℝ) := by
  rw [actual_signed_pairing_eq_contracted A hA]
  have hX : 2 ≤ Real.exp (2 * A) := by
    have hL : Real.log (2 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr hL
  apply intervalIntegral.integral_congr
  intro y hy
  dsimp only
  have hy0 : 0 < y := by
    rw [Set.uIcc_of_le hX] at hy
    linarith [hy.1]
  rw [plainProfile_deriv_eq_actual_kernel A y (by linarith) hy0]
  ring

/-- The first-atom gamma term remains present when returning to original remaining work. -/
theorem remainingAtomWork_eq_explicit_shiftedXi (A : ℝ) (hA : 1 ≤ A) :
    remainingAtomWork A =
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
        ∫ y in 2..Real.exp (2 * A), shiftedActualChebyshev y *
          (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
            sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) /
              y ^ (3 / 2 : ℝ) := by
  rw [remainingAtomWork_eq_cesaro_integral A hA]
  rw [← signedCesaroPairing_eq_explicit_shiftedXi A hA]
  rfl

end RH16ShiftedXiAdapter
