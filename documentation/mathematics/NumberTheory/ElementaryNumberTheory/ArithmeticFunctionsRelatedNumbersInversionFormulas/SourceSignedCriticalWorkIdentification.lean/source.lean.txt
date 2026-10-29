import SourceSignedDivisorCriticalBridge
import SourceCriticalRelativeCompensation

/-!
# Exact original signed divisor sector, critical pairing and Mangoldt work

AI attribution: OpenAI Codex. Independent actual Chebyshev Abel summation and
actual harmonic Mangoldt Abel summation retain the same continuous source half.
Their exact subtraction identifies the critical pairing with the original work
and its unit atom. Every retained divisor row still uses its original baseline,
main, short multiples and diagonal. Only the proved source correction and
original bounded ledger are estimated; no arithmetic uniform witness is supplied.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSignedCriticalWorkIdentification

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceDivisorCounterterms SourceSamplingLedger
open SourceSignedDivisorSamplingBudget SourceSamplingPointwise SourceSignedDivisorCriticalBridge
open SourceCriticalRelativeCompensation SourceContinuousHalfEnergy SourceFirstPrimeAbel
open SourceMangoldtAbel OmegaResearch.CriticalRelativePairing
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateMertensAbel
open EstimateBetaSourceRecombination EstimateMertensResidual

noncomputable section

/-- Exact cancellation of the independently specified continuous source half, retaining the unit. -/
theorem criticalRelativePairing_eq_original_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    criticalRelativePairing A = -1 - criticalMangoldtWork A := by
  have hq := mertensResidual_eq_criticalRelative_add_baseline hA
  have hw := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  linarith only [hq, hw]

/-- The actual lattice and integer plain inventory combine into the genuine source half. -/
theorem lattice_add_plainInventory_eq_source_baseline (A : ℝ) (hA : 1 ≤ A) :
    latticePairing A + plainInventory A = 1 + criticalContinuousMoment A := by
  have hp := residual_sub_integerJ_eq_plain hA
  have hj := integerJ_eq_critical_add_lattice hA
  have hr := mertensResidual_eq_criticalRelative_add_baseline hA
  linarith only [hp, hj, hr]

/-- Original signed compensation with the actual source half and independently bounded ledger. -/
theorem jointSignedRemainder_eq_critical_source_compensation (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = criticalRelativePairing A + 1 + criticalContinuousMoment A -
      (betaMainLedger A + independentMainTerm A) := by
  rw [jointSignedRemainder_eq_critical_original_corrections A hA]
  linarith only [lattice_add_plainInventory_eq_source_baseline A hA]

/-- The complete retained arithmetic sampling rows have the same exact source compensation. -/
theorem original_signed_sampling_rows_eq_critical_source (A : ℝ) (hA : 1 ≤ A) :
    -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (-(∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
        (∑ m ∈ longInventory A, vonMangoldt m *
          (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
            sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
        (∑ m ∈ longInventory A,
          if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
        sourceLogSamplingMainTerm A d -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) -
      actualSignedQuotientSamplingError A = criticalRelativePairing A + 1 +
        criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [← jointSignedRemainder_eq_original_sampling_rows A hA]
  exact jointSignedRemainder_eq_critical_source_compensation A hA

/-- Literal rational source correction; its value is not discarded or fitted to arithmetic. -/
theorem jointSignedRemainder_eq_critical_rational_compensation (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = criticalRelativePairing A + 1 -
      (14 * A ^ 4 + 272 * A ^ 2) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) -
      (betaMainLedger A + independentMainTerm A) := by
  rw [jointSignedRemainder_eq_critical_source_compensation A hA,
    criticalContinuousMoment_eq_rational hA, neg_div]
  ring

/-- The original ledger and genuine source half supply an unconditional bounded correction. -/
theorem jointSignedRemainder_sub_critical_uniform_correction :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |jointSignedRemainder A - criticalRelativePairing A| < 1 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have hr := actual_residual_decomposition A hA
  rw [← jointSignedRemainder_eq_covariance A hA] at hr
  have he : jointSignedRemainder A - criticalRelativePairing A =
      (mertensResidual A - criticalRelativePairing A) -
        (betaMainLedger A + independentMainTerm A) := by linarith only [hr]
  rw [he]
  calc
    _ ≤ |mertensResidual A - criticalRelativePairing A| +
        |betaMainLedger A + independentMainTerm A| := abs_sub _ _
    _ < 1 + C_F := add_lt_add_of_lt_of_le
      (residual_sub_criticalRelative_abs_lt_one hA) (hF A hA)

/-- At real scales at least six the source correction improves the original signed upper bound. -/
theorem jointSignedRemainder_lt_critical_add_ledger (C_F A : ℝ) (hA : 6 ≤ A)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    jointSignedRemainder A < criticalRelativePairing A + C_F := by
  have hA1 : 1 ≤ A := by linarith
  have hr := actual_residual_decomposition A hA1
  rw [← jointSignedRemainder_eq_covariance A hA1] at hr
  have hq := mertensResidual_lt_criticalRelative_of_six_le hA
  have hf := (abs_le.mp hF).1
  linarith only [hr, hq, hf]

end
end FormalResearch.RiemannHypothesis.SourceSignedCriticalWorkIdentification
