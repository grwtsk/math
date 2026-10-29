-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.RestrictedSourcePairing.Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.RestrictedSourcePairing.Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70","mathematical_subject":"Analysis.Integration","original_sha256":"b3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/003-SourceRestrictedMixedPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity

/-!
# Restricted shifted pairings of the literal source

This is an unconditional analytic preparation, pending kernel replay. The
region is a spatial set; it is not the short time interval in the outer Abel
integral. The unchanged normalized source and its ordinary spatial derivative
have restricted cross pairings bounded by their existing global energies.
No truncated pairing is identified with an untruncated correlation.

The mixed form below has the plus signs in the disclosed actual mixed work.
Its negative is the full-space curvature-minus-mass kernel. Absolute estimates
are used only for an independently disclosed boundary remainder, after the
complete signed baseline, boundary, diagonal and independent counterterm
balance. Arithmetic coefficient budgets are still required. This module does
not bound the full signed covariance or supply an RH witness.

AI attribution: prepared with OpenAI Codex; kernel verification is pending.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.RestrictedSourcePairing.Variantb3220dc6b4e6d2fa28f3445bff2ab13b38e6db9a42c3d659a38938731c239d70

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceRestrictedMixedPairing

open MeasureTheory Set
open SourcePairing SourceDerivativeEnergy SourceCorrelationCurvature
open SourceSpatialDerivativeContinuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

noncomputable section

/-- The spatially restricted mass-sector pairing with two independent shifts. -/
def restrictedSourcePairing (S : Set ℝ) (A x y : ℝ) : ℝ :=
  ∫ v in S, normalizedTest explicitSecondDerivative A (v + x) *
    normalizedTest explicitSecondDerivative A (v + y)

/-- The spatially restricted derivative-sector pairing, without a correlation claim. -/
def restrictedDerivativePairing (S : Set ℝ) (A x y : ℝ) : ℝ :=
  ∫ v in S, deriv (normalizedTest explicitSecondDerivative A) (v + x) *
    deriv (normalizedTest explicitSecondDerivative A) (v + y)

/-- The two source sectors retain the actual mixed-work plus convention. -/
def restrictedMixedSourceForm (S : Set ℝ) (A x y : ℝ) : ℝ :=
  restrictedDerivativePairing S A x y + restrictedSourcePairing S A x y / 4

private theorem shifted_source_product_integrable {A : ℝ} (hA : 0 < A) (x y : ℝ) :
    Integrable (fun v : ℝ ↦ normalizedTest explicitSecondDerivative A (v + x) *
      normalizedTest explicitSecondDerivative A (v + y)) := by
  convert (correlation_product_integrable A (x - y) hA).comp_add_right x using 1
  funext v
  rw [show v + x - (x - y) = v + y by ring]

private theorem shifted_derivative_product_integrable {A : ℝ} (hA : 0 < A) (x y : ℝ) :
    Integrable (fun v : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) (v + x) *
      deriv (normalizedTest explicitSecondDerivative A) (v + y)) := by
  convert (sourceCorrelation_second_deriv_integrand_integrable hA (x - y)).comp_add_right x
    using 1
  funext v
  rw [show v + x - (x - y) = v + y by ring]

/-- Restrictions retain genuine product integrability on every spatial set. -/
theorem restricted_products_integrable {A : ℝ} (hA : 0 < A) (S : Set ℝ) (x y : ℝ) :
    IntegrableOn (fun v : ℝ ↦ normalizedTest explicitSecondDerivative A (v + x) *
      normalizedTest explicitSecondDerivative A (v + y)) S ∧
    IntegrableOn (fun v : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) (v + x) *
      deriv (normalizedTest explicitSecondDerivative A) (v + y)) S :=
  ⟨(shifted_source_product_integrable hA x y).integrableOn,
    (shifted_derivative_product_integrable hA x y).integrableOn⟩

private theorem restricted_shifted_product_abs_le_energy {f : ℝ → ℝ}
    (hf : Integrable (fun v : ℝ ↦ (f v) ^ 2)) (S : Set ℝ) (x y : ℝ)
    (hm : Integrable (fun v : ℝ ↦ f (v + x) * f (v + y))) :
    |∫ v in S, f (v + x) * f (v + y)| ≤ ∫ v : ℝ, (f v) ^ 2 := by
  have hx := hf.comp_add_right x
  have hy := hf.comp_add_right y
  have hmaj : Integrable (fun v : ℝ ↦ ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2) :=
    (hx.add hy).div_const 2
  calc
    |∫ v in S, f (v + x) * f (v + y)| ≤
        ∫ v in S, |f (v + x) * f (v + y)| := abs_integral_le_integral_abs
    _ ≤ ∫ v in S, ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2 := by
      apply integral_mono hm.integrableOn.abs hmaj.integrableOn
      intro v
      change |f (v + x) * f (v + y)| ≤ ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f (v + x)| - |f (v + y)|),
        sq_abs (f (v + x)), sq_abs (f (v + y))]
    _ ≤ ∫ v : ℝ, ((f (v + x)) ^ 2 + (f (v + y)) ^ 2) / 2 := by
      exact integral_mono_measure Measure.restrict_le_self
        (Filter.Eventually.of_forall (fun v ↦ by positivity)) hmaj
    _ = ∫ v : ℝ, (f v) ^ 2 := by
      rw [integral_div, integral_add hx hy,
        integral_add_right_eq_self (fun v : ℝ ↦ (f v) ^ 2) x,
        integral_add_right_eq_self (fun v : ℝ ↦ (f v) ^ 2) y]
      ring

/-- The existing literal source normalization bounds every restricted mass pairing. -/
theorem restrictedSourcePairing_abs_le_one {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) : |restrictedSourcePairing S A x y| ≤ 1 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  exact (restricted_shifted_product_abs_le_energy (normalized_square_integrable A hA)
    S x y (shifted_source_product_integrable hp x y)).trans_eq
      (normalized_square_integral A hA)

/-- The derivative restriction is bounded by the existing, unmodified source energy. -/
theorem restrictedDerivativePairing_abs_le_energy {A : ℝ} (hA : 0 < A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedDerivativePairing S A x y| ≤
      ∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2 :=
  restricted_shifted_product_abs_le_energy (actual_derivative_square_integrable hA)
    S x y (shifted_derivative_product_integrable hA x y)

/-- The existing energy coefficient controls arbitrary spatial restrictions. -/
theorem restrictedDerivativePairing_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedDerivativePairing S A x y| ≤ 162826 / (7623 * A ^ 2) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply (restrictedDerivativePairing_abs_le_energy hp S x y).trans
  apply (le_div_iff₀ (by positivity : 0 < 7623 * A ^ 2)).2
  have henergy := actual_derivative_energy_upper hA
  nlinarith

/-- A disclosed spatial boundary kernel has an independent finite analytic budget. -/
theorem restrictedMixedSourceForm_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedMixedSourceForm S A x y| ≤ 162826 / (7623 * A ^ 2) + 1 / 4 := by
  unfold restrictedMixedSourceForm
  calc
    _ ≤ |restrictedDerivativePairing S A x y| + |restrictedSourcePairing S A x y / 4| :=
      abs_add_le _ _
    _ = |restrictedDerivativePairing S A x y| + |restrictedSourcePairing S A x y| / 4 :=
      by rw [abs_div]; norm_num
    _ ≤ 162826 / (7623 * A ^ 2) + 1 / 4 :=
      add_le_add (restrictedDerivativePairing_abs_le_coefficient hA S x y)
        (div_le_div_of_nonneg_right (restrictedSourcePairing_abs_le_one hA S x y)
          (by norm_num))

/-- Any arithmetic scalar remains in the budget; a small kernel error does not remove it. -/
theorem restrictedMixedSourceForm_abs_mul_le_coefficient {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y c : ℝ) :
    |c * restrictedMixedSourceForm S A x y| ≤
      |c| * (162826 / (7623 * A ^ 2) + 1 / 4) := by
  rw [abs_mul]
  exact mul_le_mul_of_nonneg_left (restrictedMixedSourceForm_abs_le_coefficient hA S x y)
    (abs_nonneg c)

/-- Empty spatial restriction removes both sectors, with no support assumption. -/
theorem restrictedMixedSourceForm_empty (A x y : ℝ) :
    restrictedMixedSourceForm ∅ A x y = 0 := by
  simp [restrictedMixedSourceForm, restrictedDerivativePairing, restrictedSourcePairing]

private theorem whole_shifted_source_pairing (A x y : ℝ) :
    (∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + x) *
      normalizedTest explicitSecondDerivative A (v + y)) =
      sourceCorrelation explicitSecondDerivative A (x - y) := by
  unfold sourceCorrelation
  calc
    _ = ∫ v : ℝ, normalizedTest explicitSecondDerivative A (v + x) *
        normalizedTest explicitSecondDerivative A (v + x - (x - y)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + x - (x - y) = v + y by ring]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ ↦ normalizedTest explicitSecondDerivative A v *
        normalizedTest explicitSecondDerivative A (v - (x - y))) x

private theorem whole_shifted_derivative_pairing {A : ℝ} (hA : 0 < A) (x y : ℝ) :
    (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + x) *
      deriv (normalizedTest explicitSecondDerivative A) (v + y)) =
      -deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x - y) := by
  rw [sourceCorrelation_second_deriv_eq_integral hA, neg_neg]
  calc
    _ = ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + x) *
        deriv (normalizedTest explicitSecondDerivative A) (v + x - (x - y)) := by
      apply integral_congr_ae
      filter_upwards [] with v
      rw [show v + x - (x - y) = v + y by ring]
    _ = _ := integral_add_right_eq_self
      (fun v : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) v *
        deriv (normalizedTest explicitSecondDerivative A) (v - (x - y))) x

/-- The full-space restriction alone recovers the negative of the source curvature kernel. -/
theorem restrictedMixedSourceForm_univ {A : ℝ} (hA : 0 < A) (x y : ℝ) :
    restrictedMixedSourceForm univ A x y =
      -(deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x - y) -
        sourceCorrelation explicitSecondDerivative A (x - y) / 4) := by
  simp only [restrictedMixedSourceForm, restrictedDerivativePairing,
    restrictedSourcePairing, Measure.restrict_univ,
    whole_shifted_derivative_pairing hA, whole_shifted_source_pairing]
  ring

/-- On the same unchanged source row the whole form has its exact positive energy. -/
theorem restrictedMixedSourceForm_univ_same_shift {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    restrictedMixedSourceForm univ A x x =
      (∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2) + 1 / 4 := by
  unfold restrictedMixedSourceForm restrictedDerivativePairing restrictedSourcePairing
  simp only [Measure.restrict_univ, ← pow_two]
  rw [integral_add_right_eq_self
    (fun v : ℝ ↦ (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2) x,
    integral_add_right_eq_self
      (fun v : ℝ ↦ (normalizedTest explicitSecondDerivative A v) ^ 2) x,
    normalized_square_integral A hA]

/-- A spatial point before the new lower edge cannot see times at or after that edge. -/
theorem source_sectors_zero_after_spatial_edge {A : ℝ} (hA : 0 < A)
    {a t v : ℝ} (hv : v < a - A) (ht : a ≤ t) :
    normalizedTest explicitSecondDerivative A (v - t) = 0 ∧
    deriv (normalizedTest explicitSecondDerivative A) (v - t) = 0 := by
  have hs : A ≤ |v - t| := by
    have hn := neg_le_abs (v - t)
    linarith
  constructor
  · exact normalizedTest_zero_of_le_abs A (v - t) hA hs
  · rw [← spatialDerivative_eq_deriv hA]
    exact spatialDerivative_zero_of_le_abs hA hs

/-- A nonzero spatial left-strip atom forces the outer time into the separate short strip. -/
theorem nonzero_left_spatial_atom_implies_time_lt {A : ℝ} (hA : 0 < A)
    {a t v : ℝ} (hv : v < a - A)
    (hn : normalizedTest explicitSecondDerivative A (v - t) ≠ 0 ∨
      deriv (normalizedTest explicitSecondDerivative A) (v - t) ≠ 0) : t < a := by
  by_contra ht
  have hz := source_sectors_zero_after_spatial_edge hA hv (le_of_not_gt ht)
  rcases hn with hq | hd
  · exact hq hz.1
  · exact hd hz.2

end
end FormalResearch.RiemannHypothesis.SourceRestrictedMixedPairing
