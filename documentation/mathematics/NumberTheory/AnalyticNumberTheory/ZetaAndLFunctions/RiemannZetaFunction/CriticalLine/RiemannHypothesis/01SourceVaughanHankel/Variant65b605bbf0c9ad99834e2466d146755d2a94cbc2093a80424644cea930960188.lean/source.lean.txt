import SourceSamplingLedger
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# Literal centered Vaughan Hankel reflection adapter

This review-only adapter retains the original long axes, source kernel and
centered beta row. The deleted centered diagonal is tracked separately from
the earlier uncentered Vaughan diagonal. The two literal changing L² states
are not renormalized. Their joint norm difference is kept signed before the
proved bounded ledger error is applied.

The resulting energy-tail proposition is checked equivalent to the unchanged
residual-tail target. No uniform signed upper-bound witness, arithmetic
positivity, free/Catalan identification, or RH conclusion is asserted.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceVaughanHankel

open MeasureTheory ArithmeticFunction
open scoped InnerProductSpace
open SourcePairing SourceSamplingLedger SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateVaughanIdentity EstimateSourceMobiusKernel
open EstimatePlainKernel EstimateBetaCentering EstimateBetaSourceRecombination
open EstimateVaughanTranslationGate EstimateTypeTwoLogBlocks

noncomputable section

/-- The unchanged two long axes are open at U and closed at N. -/
def longInventory (A : ℝ) : Finset ℕ :=
  Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)

/-- Every index in the actual long inventory is positive. -/
theorem longInventory_pos (A : ℝ) {m : ℕ} (hm : m ∈ longInventory A) : 0 < m :=
  (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1

/-- The full centered rectangle before deleting its literal equality-of-indices diagonal. -/
def centeredRectangle (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
    vonMangoldt m * centeredBeta (vaughanCutoff A) n *
      sourcePlainWeight A ((m * n : ℕ) : ℝ)

/-- The equality-of-indices diagonal of the centered rectangle, with sum-log displacement. -/
def centeredDeletedDiagonal (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A,
    vonMangoldt m * centeredBeta (vaughanCutoff A) m *
      sourcePlainWeight A ((m * m : ℕ) : ℝ)

/-- The coefficient-one diagonal that is introduced by the exact finite centering. -/
def deletedDiagonalMean (A : ℝ) : ℝ :=
  ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ)

/-- The original product mask is removed solely by the literal source support. -/
theorem centeredOffDiagonal_eq_unmasked_rectangle (A : ℝ) (hA : 1 ≤ A) :
    centeredTypeTwoOffDiagonal A =
      ∑ m ∈ longInventory A,
        ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
          vonMangoldt m * centeredBeta (vaughanCutoff A) n *
            sourcePlainWeight A ((m * n : ℕ) : ℝ) := by
  classical
  unfold centeredTypeTwoOffDiagonal longOffDiagonalPairs longInventory
  simp only [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : n ≠ m
  · by_cases hp : m * n ≤ sourceKernelCutoff A
    · rw [if_pos hne, if_pos ⟨hne, hp⟩]
    · have hz := sourcePlainWeight_zero_of_cutoff_lt A hA (m * n) (by omega)
      rw [if_pos hne, if_neg (fun h => hp h.2), hz, mul_zero]
  · rw [if_neg hne, if_neg (fun h => hne h.1)]

/-- The centered full rectangle splits into the actual centered covariance and deleted diagonal. -/
theorem centeredRectangle_eq_covariance_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    centeredRectangle A = centeredTypeTwoOffDiagonal A + centeredDeletedDiagonal A := by
  classical
  rw [centeredOffDiagonal_eq_unmasked_rectangle A hA]
  unfold centeredRectangle centeredDeletedDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have h := Finset.sum_filter_add_sum_filter_not (longInventory A) (fun n => n = m)
    (fun n => vonMangoldt m * centeredBeta (vaughanCutoff A) n *
      sourcePlainWeight A ((m * n : ℕ) : ℝ))
  have heq : (longInventory A).filter (fun n => n = m) = {m} := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_singleton]
    exact ⟨fun hn => hn.2, fun hn => by subst n; exact ⟨hm, rfl⟩⟩
  simpa only [heq, Finset.sum_singleton, add_comm] using h.symm

/-- Centering creates an exact additional diagonal term; the old Vaughan diagonal is uncentered. -/
theorem centeredDeletedDiagonal_eq_old_diagonal_add_centering (A : ℝ) :
    centeredDeletedDiagonal A = typeTwoDiagonal A +
      alpha (vaughanCutoff A) * deletedDiagonalMean A := by
  unfold centeredDeletedDiagonal typeTwoDiagonal deletedDiagonalMean longInventory centeredBeta
  rw [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  ring

/-- The centered deleted diagonal has the actual displacement `2 log m` and denominator m. -/
theorem centeredDeletedDiagonal_eq_sum (A : ℝ) :
    centeredDeletedDiagonal A =
      ∑ m ∈ longInventory A,
        vonMangoldt m * centeredBeta (vaughanCutoff A) m / (m : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log (m : ℝ)) := by
  unfold centeredDeletedDiagonal
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  unfold sourcePlainWeight
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- The finite centering mean carries the same sum-log diagonal, rather than a square norm. -/
theorem deletedDiagonalMean_eq_sum (A : ℝ) :
    deletedDiagonalMean A =
      ∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (m : ℝ)) := by
  unfold deletedDiagonalMean
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  unfold sourcePlainWeight
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- Guard: identifying the two diagonals requires the exact centering correction to vanish. -/
theorem centeredDeletedDiagonal_eq_old_iff (A : ℝ) :
    centeredDeletedDiagonal A = typeTwoDiagonal A ↔
      alpha (vaughanCutoff A) * deletedDiagonalMean A = 0 := by
  rw [centeredDeletedDiagonal_eq_old_diagonal_add_centering]
  constructor <;> intro h <;> linarith

/-- The actual long Mangoldt translate profile, with the literal inverse-square-root coefficient. -/
def mangoldtForwardProfile (A : ℝ) (x : ℝ) : ℝ :=
  forwardProfile A (longInventory A) (fun m => vonMangoldt m / Real.sqrt (m : ℝ)) x

/-- The actual reflected centered beta profile; centering remains internal to the signed row. -/
def centeredMobiusReflectedProfile (A : ℝ) (x : ℝ) : ℝ :=
  reflectedProfile A (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x

/-- The centered beta forward profile whose actual spatial reflection is retained. -/
def centeredMobiusForwardProfile (A : ℝ) (x : ℝ) : ℝ :=
  forwardProfile A (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x

/-- The reflected actual beta profile is literally reflection of the same centered forward row. -/
theorem centeredMobiusReflectedProfile_eq_reflection (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    centeredMobiusReflectedProfile A x = centeredMobiusForwardProfile A (-x) :=
  reflectedProfile_eq_forwardProfile_neg (by linarith : 0 < A) (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x

/-- The literal changing Mangoldt state as a real L² vector, with no state renormalization. -/
def mangoldtL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume : Measure ℝ) :=
  forwardL2 A (by linarith : 0 < A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))

/-- The actual centered reflected beta state as a real L² vector. -/
def centeredMobiusReflectedL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume : Measure ℝ) :=
  reflectedL2 A (by linarith : 0 < A) (longInventory A)
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- The full signed source Hankel pairing before deleting the centered equality-of-indices term. -/
def sourceHankelPairing (A : ℝ) : ℝ :=
  ∫ x : ℝ, mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x

/-- The exact finite signed source product is integrable on the whole real line. -/
theorem sourceHankelPairing_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ => mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x) :=
  profile_product_integrable (by linarith : 0 < A) (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- The arithmetic pairing is a literal inner product of the two actual changing L² states. -/
theorem sourceHankelPairing_eq_l2_inner (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ⟪mangoldtL2 A hA, centeredMobiusReflectedL2 A hA⟫_ℝ :=
  (l2_inner_eq_pairing (by linarith : 0 < A) (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))).symm

/-- The exact full source pairing is its centered finite rectangle. -/
theorem sourceHankelPairing_eq_centeredRectangle (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = centeredRectangle A := by
  unfold sourceHankelPairing mangoldtForwardProfile centeredMobiusReflectedProfile
  rw [finite_hankel_pairing (by linarith : 0 < A) (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))
    (fun m hm => longInventory_pos A hm) (fun n hn => longInventory_pos A hn)]
  unfold centeredRectangle
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  unfold sourcePlainWeight
  rw [Nat.cast_mul, Real.sqrt_mul hmpos.le]
  ring

/-- Exact factorization of the actual signed covariance, with the centered diagonal deleted. -/
theorem covarianceOperator_half_eq_pairing_sub_diagonal (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 =
      sourceHankelPairing A - centeredDeletedDiagonal A := by
  rw [VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered,
    sourceHankelPairing_eq_centeredRectangle A hA,
    centeredRectangle_eq_covariance_add_diagonal A hA]
  ring

/-- The literal positive square sector of the two actual source profiles. -/
def sourcePlusEnergy (A : ℝ) : ℝ :=
  ∫ x : ℝ, (mangoldtForwardProfile A x + centeredMobiusReflectedProfile A x) ^ 2

/-- The literal negative square sector remains coupled to the positive sector. -/
def sourceMinusEnergy (A : ℝ) : ℝ :=
  ∫ x : ℝ, (mangoldtForwardProfile A x - centeredMobiusReflectedProfile A x) ^ 2

/-- Both square sectors are genuinely integrable for the source scale domain. -/
theorem source_square_sectors_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ =>
      (mangoldtForwardProfile A x + centeredMobiusReflectedProfile A x) ^ 2) ∧
    Integrable (fun x : ℝ =>
      (mangoldtForwardProfile A x - centeredMobiusReflectedProfile A x) ^ 2) :=
  profile_square_sectors_integrable (by linarith : 0 < A) (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- Polarization keeps the actual two square sectors signed and coupled. -/
theorem sourceHankelPairing_eq_signed_energy_difference (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = (sourcePlusEnergy A - sourceMinusEnergy A) / 4 :=
  signed_energy_surplus (by linarith : 0 < A) (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- The actual signed energy surplus subtracts both the centered diagonal and independent main term. -/
def sourceEnergySurplus (A : ℝ) : ℝ :=
  sourcePlusEnergy A - sourceMinusEnergy A -
    4 * (centeredDeletedDiagonal A + independentMainTerm A)

/-- The old diagonal enters only together with the exact additional centering diagonal. -/
theorem sourceEnergySurplus_eq_using_old_diagonal (A : ℝ) :
    sourceEnergySurplus A = sourcePlusEnergy A - sourceMinusEnergy A -
      4 * (typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A +
        independentMainTerm A) := by
  rw [sourceEnergySurplus, centeredDeletedDiagonal_eq_old_diagonal_add_centering]

/-- The signed energy surplus is exactly four times the remaining joint covariance remainder. -/
theorem sourceEnergySurplus_eq_four_joint_remainder (A : ℝ) (hA : 1 ≤ A) :
    sourceEnergySurplus A =
      4 * (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) := by
  have hc := covarianceOperator_half_eq_pairing_sub_diagonal A hA
  rw [sourceHankelPairing_eq_signed_energy_difference A hA] at hc
  unfold sourceEnergySurplus
  linarith

/-- The exact signed L² energy surplus retains both norms and the corrected deleted diagonal. -/
theorem sourceEnergySurplus_eq_l2_difference (A : ℝ) (hA : 1 ≤ A) :
    sourceEnergySurplus A =
      ‖mangoldtL2 A hA + centeredMobiusReflectedL2 A hA‖ ^ 2 -
      ‖mangoldtL2 A hA - centeredMobiusReflectedL2 A hA‖ ^ 2 -
      4 * (centeredDeletedDiagonal A + independentMainTerm A) := by
  have hp := sourceHankelPairing_eq_signed_energy_difference A hA
  have hl := signed_l2_energy_surplus (by linarith : 0 < A)
    (longInventory A) (longInventory A)
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))
  change sourceHankelPairing A =
    (‖mangoldtL2 A hA + centeredMobiusReflectedL2 A hA‖ ^ 2 -
      ‖mangoldtL2 A hA - centeredMobiusReflectedL2 A hA‖ ^ 2) / 4 at hl
  unfold sourceEnergySurplus
  linarith

/-- The unchanged residual consists of the signed energy surplus and the proved bounded ledger error. -/
theorem mertensResidual_eq_energy_surplus_add_ledger_error (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A = sourceEnergySurplus A / 4 +
      (betaMainLedger A + independentMainTerm A) := by
  rw [sourceEnergySurplus_eq_four_joint_remainder A hA,
    actual_residual_decomposition A hA]
  ring

/-- The concrete bounded ledger error is retained with the new energy coordinates. -/
theorem energy_surplus_ledger_error_uniform :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |EstimateMertensResidual.mertensResidual A - sourceEnergySurplus A / 4| ≤ C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  rw [mertensResidual_eq_energy_surplus_add_ledger_error A hA]
  simpa only [add_sub_cancel_left] using hF A hA

/-- The precise remaining energy estimate is an eventual upper bound on the signed surplus. -/
def SourceEnergySurplusTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → sourceEnergySurplus A ≤ 4 * D

/-- The energy upper-bound target is exactly equivalent to the previous joint signed operator target. -/
theorem energy_surplus_tail_iff_joint_remainder :
    SourceEnergySurplusTailUpperBound ↔
      VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  constructor
  · rintro ⟨D, hD0, R, hR1, h⟩
    refine ⟨D, hD0, R, hR1, ?_⟩
    intro A hRA
    have hbound := h A hRA
    rw [sourceEnergySurplus_eq_four_joint_remainder A (hR1.trans hRA)] at hbound
    linarith
  · rintro ⟨D, hD0, R, hR1, h⟩
    refine ⟨D, hD0, R, hR1, ?_⟩
    intro A hRA
    rw [sourceEnergySurplus_eq_four_joint_remainder A (hR1.trans hRA)]
    linarith [h A hRA]

/-- The exact energy estimate would supply the unchanged residual-tail contract, with no new premise. -/
theorem energy_surplus_tail_iff_mertensResidualTail :
    SourceEnergySurplusTailUpperBound ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  energy_surplus_tail_iff_joint_remainder.trans independentMainTerm_tail_iff_mertensResidualTail

end
end FormalResearch.RiemannHypothesis.SourceVaughanHankel
