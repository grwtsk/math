-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceOverlapWindow.Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceOverlapWindow.Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485","mathematical_subject":"Analysis.Integration","original_sha256":"47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-divisor-refinement/localization/SourceVaughanLocalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankelFourier
import FormalResearch.RiemannHypothesis.SourceHankelLocalization

/-!
# Literal centered Vaughan overlap localization

The original long axes (U,N], with U=floor(A²) and N=floor(exp(2A)),
localize their joint source interaction to [log(U+1)-A,A-log(U+1)].
The centered equality-of-indices diagonal and the independent ledger main term
remain literal, separate subtractions. The signed surplus and its existing
residual-tail equivalence are preserved.

Localization is not an arithmetic classification or a finite-rank assertion.
The scalar Fourier identity below is transported through the proved equality
of the joint products. It does not identify the Fourier transform of either
indicator-truncated profile with the old source transform times its arithmetic
polynomial. No uniform signed upper-bound witness or RH conclusion is supplied.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceOverlapWindow.Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceVaughanLocalization

open MeasureTheory Set
open scoped InnerProductSpace
open SourcePairing SourceHankelReflection SourceHankelLocalization
open SourceVaughanHankel SourceVaughanHankelFourier SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateBetaCentering EstimateBetaSourceRecombination
open EstimateVaughanTranslationGate EstimatePlainKernel

noncomputable section

/-- The actual interaction interval uses the first permitted long index U+1. -/
def sourceOverlapWindow (A : ℝ) : Set ℝ := overlapWindow A (vaughanCutoff A + 1)

/-- Literal floor and endpoint conventions, without an asymptotic replacement. -/
theorem sourceOverlapWindow_eq (A : ℝ) :
    sourceOverlapWindow A = Icc (Real.log ((⌊A ^ 2⌋₊ + 1 : ℕ) : ℝ) - A)
      (A - Real.log ((⌊A ^ 2⌋₊ + 1 : ℕ) : ℝ)) := rfl

/-- Every actual long index lies above the unchanged open cutoff. -/
theorem longInventory_ge_cutoff_succ (A : ℝ) {m : ℕ} (hm : m ∈ longInventory A) :
    vaughanCutoff A + 1 ≤ m := by
  have h := (Finset.mem_Ioc.mp hm).1
  omega

/-- Literal source interaction vanishes pointwise outside the exact overlap. -/
theorem actual_product_zero_outside (A : ℝ) (hA : 1 ≤ A) {x : ℝ}
    (hx : x ∉ sourceOverlapWindow A) :
    mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x = 0 :=
  profile_product_zero_outside (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn) hx

/-- The Mangoldt profile restricted to the literal overlap, extended by zero. -/
def localizedMangoldtProfile (A : ℝ) : ℝ → ℝ :=
  localizedForwardProfile A (vaughanCutoff A + 1) (longInventory A)
    (fun m ↦ ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ))

/-- The centered beta profile restricted to the identical overlap. -/
def localizedCenteredMobiusProfile (A : ℝ) : ℝ → ℝ :=
  localizedReflectedProfile A (vaughanCutoff A + 1) (longInventory A)
    (fun n ↦ centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- Joint localization retains the full signed product pointwise. -/
theorem actual_localized_product_eq (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    localizedMangoldtProfile A x * localizedCenteredMobiusProfile A x =
      mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x :=
  localized_product_eq (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn) x

/-- The literal global interaction equals its set integral over the exact overlap. -/
theorem sourceHankelPairing_eq_overlap_integral (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ∫ x in sourceOverlapWindow A,
      mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x :=
  pairing_eq_overlap_integral (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn)

/-- The localized Mangoldt profile is a genuine real L² representative. -/
theorem localizedMangoldtProfile_memLp (A : ℝ) (hA : 1 ≤ A) :
    MemLp (localizedMangoldtProfile A) 2 volume :=
  localizedForwardProfile_memLp (by linarith : 0 < A) _ _ _

/-- The centered localized reflected profile is genuinely in real L². -/
theorem localizedCenteredMobiusProfile_memLp (A : ℝ) (hA : 1 ≤ A) :
    MemLp (localizedCenteredMobiusProfile A) 2 volume :=
  localizedReflectedProfile_memLp (by linarith : 0 < A) _ _ _

/-- The actual localized Mangoldt L² state, with no renormalization. -/
def localizedMangoldtL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume : Measure ℝ) :=
  localizedForwardL2 A (by linarith : 0 < A) (vaughanCutoff A + 1) (longInventory A)
    (fun m ↦ ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ))

/-- The actual centered localized reflected L² state. -/
def localizedCenteredMobiusL2 (A : ℝ) (hA : 1 ≤ A) : Lp ℝ 2 (volume : Measure ℝ) :=
  localizedReflectedL2 A (by linarith : 0 < A) (vaughanCutoff A + 1) (longInventory A)
    (fun n ↦ centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ))

/-- The localized inner product retains the exact full source interaction. -/
theorem localized_l2_pairing_eq (A : ℝ) (hA : 1 ≤ A) :
    ⟪localizedMangoldtL2 A hA, localizedCenteredMobiusL2 A hA⟫_ℝ = sourceHankelPairing A :=
  localized_l2_inner_eq_pairing (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn)

/-- The localized scalar interaction, kept separate from both deleted terms. -/
def localizedHankelPairing (A : ℝ) : ℝ :=
  ∫ x, localizedMangoldtProfile A x * localizedCenteredMobiusProfile A x

/-- The localized product integral is genuine before the diagonal subtraction. -/
theorem localizedHankelPairing_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ localizedMangoldtProfile A x * localizedCenteredMobiusProfile A x) := by
  have he : (fun x ↦ localizedMangoldtProfile A x * localizedCenteredMobiusProfile A x) =
      fun x ↦ mangoldtForwardProfile A x * centeredMobiusReflectedProfile A x :=
    funext (actual_localized_product_eq A hA)
  rw [he]
  exact sourceHankelPairing_integrable A hA

/-- Localization changes neither the signed pairing nor the source covariance inventory. -/
theorem localizedHankelPairing_eq_source (A : ℝ) (hA : 1 ≤ A) :
    localizedHankelPairing A = sourceHankelPairing A := by
  unfold localizedHankelPairing sourceHankelPairing
  exact integral_congr_ae (Filter.Eventually.of_forall (actual_localized_product_eq A hA))

/-- The unchanged centered diagonal remains deleted from the localized interaction. -/
theorem covarianceOperator_half_eq_localized_pairing_sub_diagonal (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 =
      localizedHankelPairing A - centeredDeletedDiagonal A := by
  rw [localizedHankelPairing_eq_source A hA]
  exact covarianceOperator_half_eq_pairing_sub_diagonal A hA

/-- Deleting equality of indices remains the literal filtered two-variable sum. -/
theorem localized_pairing_sub_diagonal_eq_unequal_sum (A : ℝ) (hA : 1 ≤ A) :
    localizedHankelPairing A - centeredDeletedDiagonal A =
      ∑ m ∈ longInventory A,
        ∑ n ∈ (longInventory A).filter (fun n ↦ n ≠ m),
        ArithmeticFunction.vonMangoldt m * centeredBeta (vaughanCutoff A) n *
          sourcePlainWeight A ((m * n : ℕ) : ℝ) := by
  rw [← covarianceOperator_half_eq_localized_pairing_sub_diagonal A hA,
    VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered]
  have h := centeredOffDiagonal_eq_unmasked_rectangle A hA
  linarith

/-- The positive localized square sector. -/
def localizedPlusEnergy (A : ℝ) : ℝ :=
  ∫ x, (localizedMangoldtProfile A x + localizedCenteredMobiusProfile A x) ^ 2

/-- The negative localized square sector remains signed against the positive one. -/
def localizedMinusEnergy (A : ℝ) : ℝ :=
  ∫ x, (localizedMangoldtProfile A x - localizedCenteredMobiusProfile A x) ^ 2

/-- Both localized sectors are genuinely integrable. -/
theorem actual_localized_square_sectors_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (localizedMangoldtProfile A x + localizedCenteredMobiusProfile A x) ^ 2) ∧
      Integrable (fun x ↦ (localizedMangoldtProfile A x - localizedCenteredMobiusProfile A x) ^ 2) :=
  localized_square_sectors_integrable (by linarith : 0 < A) _ _ _ _ _

/-- The localized square difference reproduces the full signed pairing exactly. -/
theorem sourceHankelPairing_eq_localized_squared_difference (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = (localizedPlusEnergy A - localizedMinusEnergy A) / 4 :=
  localized_signed_integral_surplus (by linarith : 0 < A) (Nat.succ_pos _) _ _ _ _
    (fun _ hm ↦ longInventory_ge_cutoff_succ A hm)
    (fun _ hn ↦ longInventory_ge_cutoff_succ A hn)

/-- The corrected localized surplus retains both Delta and the independent main term. -/
def localizedEnergySurplus (A : ℝ) : ℝ :=
  localizedPlusEnergy A - localizedMinusEnergy A -
    4 * (centeredDeletedDiagonal A + independentMainTerm A)

/-- Localization preserves the old exact signed surplus, without separate sector estimates. -/
theorem localizedEnergySurplus_eq_source (A : ℝ) (hA : 1 ≤ A) :
    localizedEnergySurplus A = sourceEnergySurplus A := by
  have h := sourceHankelPairing_eq_localized_squared_difference A hA
  have ho := sourceHankelPairing_eq_signed_energy_difference A hA
  unfold localizedEnergySurplus sourceEnergySurplus
  linarith

/-- The unchanged joint remainder is precisely the corrected localized energy surplus. -/
theorem localizedEnergySurplus_eq_four_joint_remainder (A : ℝ) (hA : 1 ≤ A) :
    localizedEnergySurplus A =
      4 * (VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A) := by
  rw [localizedEnergySurplus_eq_source A hA]
  exact sourceEnergySurplus_eq_four_joint_remainder A hA

/-- Exact localized L² polarization, keeping the same centered diagonal and main term. -/
theorem localizedEnergySurplus_eq_l2_difference (A : ℝ) (hA : 1 ≤ A) :
    localizedEnergySurplus A =
      ‖localizedMangoldtL2 A hA + localizedCenteredMobiusL2 A hA‖ ^ 2 -
      ‖localizedMangoldtL2 A hA - localizedCenteredMobiusL2 A hA‖ ^ 2 -
      4 * (centeredDeletedDiagonal A + independentMainTerm A) := by
  have hl := FormalResearch.MathematicalTooling.Reflection.real_inner_eq_signed_norm_square
    (localizedMangoldtL2 A hA) (localizedCenteredMobiusL2 A hA)
  rw [localized_l2_pairing_eq A hA] at hl
  have hi := sourceHankelPairing_eq_localized_squared_difference A hA
  unfold localizedEnergySurplus
  linarith

/-- The old uncentered diagonal still requires its exact centering compensation. -/
theorem localizedEnergySurplus_eq_using_old_diagonal (A : ℝ) :
    localizedEnergySurplus A = localizedPlusEnergy A - localizedMinusEnergy A -
      4 * (typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A +
        independentMainTerm A) := by
  rw [localizedEnergySurplus, centeredDeletedDiagonal_eq_old_diagonal_add_centering]

/-- The original residual includes the corrected localized surplus and bounded ledger error. -/
theorem mertensResidual_eq_localized_surplus_add_ledger_error (A : ℝ) (hA : 1 ≤ A) :
    EstimateMertensResidual.mertensResidual A = localizedEnergySurplus A / 4 +
      (betaMainLedger A + independentMainTerm A) := by
  rw [localizedEnergySurplus_eq_source A hA]
  exact mertensResidual_eq_energy_surplus_add_ledger_error A hA

/-- The bounded error remains independent of the unproved signed surplus estimate. -/
theorem localized_surplus_ledger_error_uniform :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      |EstimateMertensResidual.mertensResidual A - localizedEnergySurplus A / 4| ≤ C_F := by
  obtain ⟨C, hC, h⟩ := energy_surplus_ledger_error_uniform
  refine ⟨C, hC, ?_⟩
  intro A hA
  rw [localizedEnergySurplus_eq_source A hA]
  exact h A hA

/-- The exact remaining localized estimate is an eventual signed upper bound. -/
def LocalizedEnergySurplusTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → localizedEnergySurplus A ≤ 4 * D

/-- Localization does not change the existing energy-tail contract. -/
theorem localized_surplus_tail_iff_source :
    LocalizedEnergySurplusTailUpperBound ↔ SourceEnergySurplusTailUpperBound := by
  constructor <;> rintro ⟨D, hD, R, hR, h⟩ <;> refine ⟨D, hD, R, hR, ?_⟩ <;>
    intro A hRA
  · rw [← localizedEnergySurplus_eq_source A (hR.trans hRA)]
    exact h A hRA
  · rw [localizedEnergySurplus_eq_source A (hR.trans hRA)]
    exact h A hRA

/-- Checked equivalence to the unchanged residual-tail target, with no bound witness. -/
theorem localized_surplus_tail_iff_mertensResidualTail :
    LocalizedEnergySurplusTailUpperBound ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  localized_surplus_tail_iff_source.trans energy_surplus_tail_iff_mertensResidualTail

/-- Correct Fourier bookkeeping: the scalar joint integral is carried through product equality.
This theorem does not assert an old per-profile Fourier multiplier after truncation. -/
theorem localizedHankelPairing_fourier (A : ℝ) (hA : 1 ≤ A) :
    localizedHankelPairing A = (1 / (2 * Real.pi)) * ∫ ξ, actualJointFourierIntegrand A ξ := by
  rw [localizedHankelPairing_eq_source A hA]
  exact sourceHankelPairing_fourier A hA

/-- The localized corrected surplus retains the full signed same-phase Fourier interaction. -/
theorem localizedEnergySurplus_fourier (A : ℝ) (hA : 1 ≤ A) :
    localizedEnergySurplus A = 4 * ((1 / (2 * Real.pi)) * ∫ ξ, actualJointFourierIntegrand A ξ) -
      4 * (centeredDeletedDiagonal A + independentMainTerm A) := by
  rw [localizedEnergySurplus_eq_source A hA, sourceEnergySurplus_fourier A hA]
  ring

end
end FormalResearch.RiemannHypothesis.SourceVaughanLocalization
