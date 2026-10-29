import SourceRestrictedLowTimeWork

/-!
# Hostile fixtures for the actual restricted boundary preparation

UNCOMPILED. These guard literal high-time endpoints, strict spatial deletion,
the below-zero logarithm trap, PLUS q/q′ sectors, independent counterterms,
and the failure of whole signed cancellation to bound a selected subintegral.
They do not provide an eventual witness or identify the physical overlap with
a time truncation. AI attribution: OpenAI Codex proof-text preparation.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.RestrictedLowTimeWorkFixtures

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceRestrictedLowTimeWork SourceActualMixedWorkFubini
open SourceRestrictedMixedPairing SourceLowTimeScalarBudget SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

noncomputable section

/-- The high-time equality endpoint is included, in both literal sectors. -/
theorem high_time_endpoint_both_sectors {A v : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A) :
    normalizedTest explicitSecondDerivative A
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 ∧
      deriv (normalizedTest explicitSecondDerivative A)
        (v - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) = 0 :=
  actual_left_strip_high_time_source_atoms_zero hA hv le_rfl

/-- Every later high time also vanishes before the new spatial left edge. -/
theorem high_time_after_endpoint_both_sectors {A v t : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A)
    (ht : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ t) :
    normalizedTest explicitSecondDerivative A (v - t) = 0 ∧
      deriv (normalizedTest explicitSecondDerivative A) (v - t) = 0 :=
  actual_left_strip_high_time_source_atoms_zero hA hv ht

/-- The new spatial edge is excluded from the left strip; no overlap membership is claimed. -/
theorem left_strip_excludes_new_edge (A : ℝ) :
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A ∉ actualWorkLeftStrip A := by
  intro hv
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  exact lt_irrefl _ hv.1.2

/-- The spatial strip retains its original lower logarithm and strict new edge. -/
theorem strip_exact_spatial_carrier (A : ℝ) :
    actualWorkLeftStrip A =
      Ico (Real.log (vaughanCutoff A : ℝ) - A)
        (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A) ∩
      Iic (A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) :=
  actualWorkLeftStrip_eq_Ico_inter A

/-- A nonzero literal atom on the strip forces time strictly below log(U+1). -/
theorem nonzero_strip_atom_forces_low_time {A v t : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A)
    (hn : normalizedTest explicitSecondDerivative A (v - t) ≠ 0 ∨
      deriv (normalizedTest explicitSecondDerivative A) (v - t) ≠ 0) :
    t < Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  rw [actualWorkLeftStrip_eq_Ico_inter] at hv
  exact nonzero_left_spatial_atom_implies_time_lt (by linarith : 0 < A) hv.1.2 hn

/-- The actual density pointwise adapter is scoped to the strip. -/
theorem literal_density_low_time_on_strip {A v : ℝ} (hA : 1 ≤ A)
    (hv : v ∈ actualWorkLeftStrip A) :
    actualMixedWorkDensity A v = actualLowMixedWorkDensity A v :=
  actual_density_eq_low_density_on_left_strip hA hv

/-- Empty spatial restriction vanishes even when the time row is nonzero elsewhere. -/
theorem empty_spatial_restriction (A : ℝ) :
    (∫ v in (∅ : Set ℝ), actualLowMixedWorkDensity A v) = 0 := by simp

/-- Lean's assigned log-zero value must not be exponentiated as the actual endpoint. -/
theorem assigned_log_zero_does_not_recover_endpoint :
    Real.exp (Real.log (0 : ℝ)) ≠ 0 := by simp

/-- The actual centered prefix retains U, rather than a fictitious scale-free coefficient. -/
theorem literal_centered_prefix_budget (U k : ℕ) (hU : 1 ≤ U) (hUk : U ≤ k) :
    |∑ n ∈ Finset.Ioc U k, centeredBeta U n| ≤ (U : ℝ) :=
  centered_beta_prefix_abs_le_cutoff U k hU hUk

/-- At the smallest permitted cutoff the exact time mass still has both endpoints. -/
theorem low_time_mass_at_one :
    (∫ t in Real.log (1 : ℝ)..Real.log (2 : ℝ), Real.exp (t / 2)) =
      2 * (Real.sqrt 2 - 1) := by
  simpa only [Nat.cast_one, Nat.reduceAdd, Nat.cast_ofNat, Real.sqrt_one] using
    exponential_low_time_mass 1 (by norm_num)

/-- The separate time mass compensates the actual prefix and positive-cell mass budget. -/
theorem actual_low_time_cutoff_compensation (U : ℕ) (hU : 1 ≤ U) :
    (∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)) *
      (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) ≤ 2 :=
  exponential_low_time_mass_prefix_budget U hU

/-- The literal q sector is bounded on each individual spatial restriction. -/
theorem ordinary_sector_individual_region {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (normalizedTest explicitSecondDerivative A) A v *
      actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v| ≤
        2 * (Real.log 4 + 4 + Real.log 2) :=
  actual_source_low_sector_abs_le hA S

/-- The literal derivative sector carries its inherited A^-2 coefficient. -/
theorem derivative_sector_individual_region {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v| ≤
        2 * (Real.log 4 + 4 + Real.log 2) * (162826 / (7623 * A ^ 2)) :=
  actual_derivative_low_sector_abs_le hA S

/-- The actual PLUS-sector budget is individual even for a proper spatial subset. -/
theorem mixed_sector_individual_region {A : ℝ} (hA : 1 ≤ A) (S : Set ℝ) :
    |∫ v in S, actualLowMixedWorkDensity A v| ≤ 45 * (Real.log 4 + 4 + Real.log 2) :=
  actual_low_mixed_restricted_abs_le_margin hA S

/-- The retained strip, rather than the whole signed low-time sum, is the observable. -/
theorem actual_spatial_strip_budget {A : ℝ} (hA : 1 ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      45 * (Real.log 4 + 4 + Real.log 2) :=
  actual_retained_spatial_strip_abs_le_margin hA

/-- Full cancellation can hide a much larger selected contribution. -/
theorem whole_cancellation_not_selected_bound :
    (9 : ℝ) + (-9) = 0 ∧ ¬ |(9 : ℝ)| ≤ 1 := by norm_num

/-- No independent baseline, diagonal, main term or endpoint is erased in reconstruction. -/
theorem literal_surplus_reconstruction {A : ℝ} (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A =
        remainingOverlapBalance A -
          (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) :=
  actual_surplus_eq_remainingOverlap_sub_strip hA

/-- The surviving obligation remains an actual eventual witness, not the boundary budget. -/
theorem actual_eventual_obligation_equivalence :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A ≤ D) ↔
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      remainingOverlapBalance A ≤ D) :=
  actual_eventual_surplus_bound_iff_remainingOverlap_bound

end
end FormalResearch.RiemannHypothesis.RestrictedLowTimeWorkFixtures
