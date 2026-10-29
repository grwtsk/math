-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OddMomentDensity.Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.OddMomentDensity.Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef","mathematical_subject":"Analysis.Calculus","original_sha256":"12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.JointPhaseScaling
import FormalResearch.RiemannHypothesis.PhaseKernelBoundary
import FormalResearch.RiemannHypothesis.GeneralizedPoleMoments
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Calculus.IteratedDeriv.Defs

/-!
# The actual source correlation as a squared pole differential operator

Differentiation under the Fourier integral uses the already admitted moments
through degree four. The physical-coordinate operator has constant coefficients;
the radius remains in the base correlation and in the exact normalization.
These identities do not provide a discrete arithmetic estimate.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.OddMomentDensity.Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef

namespace FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open JointPhaseScaling Realization

noncomputable section

/-- The signed odd density between consecutive admitted even bump moments. -/
def oddMomentDensity (k : ℕ) (u : ℝ) : ℝ := u * bumpMomentDensity k u

/-- The sine observation needed when differentiating the fixed cosine kernels. -/
def sineMoment (k : ℕ) (s : ℝ) : ℝ :=
  ∫ u, Real.sin (u * s) * oddMomentDensity k u

/-- The physical-coordinate base correlation before the source differential factor. -/
def baseCorrelation (A t : ℝ) : ℝ := fixedKernel 0 (t / A)

/-- The unsquared pole differential operator `D² - 1/4`. -/
def poleDifferentialOperator (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  iteratedDeriv 2 f t - f t / 4

/-- The expanded squared pole operator `D⁴ - D²/2 + 1/16`. -/
def poleSquaredDifferentialOperator (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  iteratedDeriv 4 f t - iteratedDeriv 2 f t / 2 + f t / 16

/-- Multiplication by the frequency moves an odd density to the next even moment. -/
theorem frequency_mul_odd_moment_density (k : ℕ) (u : ℝ) :
    u * oddMomentDensity k u = bumpMomentDensity (k + 1) u := by
  simp only [oddMomentDensity, bumpMomentDensity, Nat.mul_add, Nat.mul_one, pow_add]
  ring

/-- Odd moments needed for differentiation are genuinely integrable. -/
theorem odd_moment_density_integrable (k : ℕ) (hk : k ≤ 1) :
    Integrable (oddMomentDensity k) := by
  have hD : Continuous (bumpMomentDensity k) := by
    unfold bumpMomentDensity bumpDensity
    exact (continuous_id.pow _).mul
      ((Complex.continuous_normSq.comp
        (BridgeFourier.sourceFourier_continuous source_bump_integrable)).div_const _)
  apply ((bump_moment_density_integrable k (by omega)).add
    (bump_moment_density_integrable (k + 1) (by omega))).mono'
      (continuous_id.mul hD).aestronglyMeasurable
  filter_upwards [] with u
  change ‖u * bumpMomentDensity k u‖ ≤ bumpMomentDensity k u + bumpMomentDensity (k + 1) u
  rw [Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (bump_moment_density_nonneg k u)]
  have hu : |u| ≤ 1 + u ^ 2 := by
    nlinarith [sq_abs u, sq_nonneg (|u| - 1)]
  calc
    _ ≤ (1 + u ^ 2) * bumpMomentDensity k u :=
      mul_le_mul_of_nonneg_right hu (bump_moment_density_nonneg k u)
    _ = bumpMomentDensity k u + bumpMomentDensity (k + 1) u := by
      rw [← frequency_mul_odd_moment_density]
      unfold oddMomentDensity
      ring

/-- All required sine integrands are integrable, without an infinite Taylor expansion. -/
theorem sine_moment_integrable (k : ℕ) (hk : k ≤ 1) (s : ℝ) :
    Integrable (fun u ↦ Real.sin (u * s) * oddMomentDensity k u) := by
  apply (odd_moment_density_integrable k hk).bdd_mul (c := 1)
  · exact (by fun_prop : Continuous (fun u : ℝ ↦ Real.sin (u * s))).aestronglyMeasurable
  · filter_upwards [] with u
    exact Real.abs_sin_le_one _

/-- The fixed cosine kernel differentiates to the negative odd sine moment. -/
theorem has_deriv_at_fixed_kernel (k : ℕ) (hk : k ≤ 1) (s : ℝ) :
    HasDerivAt (fixedKernel k) (-sineMoment k s) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u : ℝ ↦ Real.cos (u * s) * bumpMomentDensity k u)
    (F' := fun s u : ℝ ↦ -Real.sin (u * s) * oddMomentDensity k u)
    (bound := fun u ↦ ‖oddMomentDensity k u‖) (s := univ) (by simp)
    (Eventually.of_forall (fun r ↦ (fixed_kernel_integrable k (by omega) r).aestronglyMeasurable))
    (fixed_kernel_integrable k (by omega) s)
    (by
      convert (sine_moment_integrable k hk s).neg.aestronglyMeasurable using 1
      funext u
      simp only [Pi.neg_apply, neg_mul])
    (by
      filter_upwards [] with u
      intro r _
      rw [Real.norm_eq_abs, abs_mul, abs_neg]
      simpa only [Real.norm_eq_abs] using
        mul_le_of_le_one_left (abs_nonneg (oddMomentDensity k u)) (Real.abs_sin_le_one _))
    (odd_moment_density_integrable k hk).norm
    (by
      filter_upwards [] with u
      intro r _
      convert (((hasDerivAt_id r).const_mul u).cos).mul_const
        (bumpMomentDensity k u) using 1 <;> try rfl
      simp only [oddMomentDensity, mul_one, id_eq]
      ring)
  convert h.2 using 1 <;> try rfl
  unfold sineMoment
  rw [← integral_neg]
  congr 1
  funext u
  ring

/-- The odd sine moment differentiates to the next admitted cosine kernel. -/
theorem has_deriv_at_sine_moment (k : ℕ) (hk : k ≤ 1) (s : ℝ) :
    HasDerivAt (sineMoment k) (fixedKernel (k + 1) s) s := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := fun s u : ℝ ↦ Real.sin (u * s) * oddMomentDensity k u)
    (F' := fun s u : ℝ ↦ Real.cos (u * s) * bumpMomentDensity (k + 1) u)
    (bound := bumpMomentDensity (k + 1)) (s := univ) (by simp)
    (Eventually.of_forall (fun r ↦ (sine_moment_integrable k hk r).aestronglyMeasurable))
    (sine_moment_integrable k hk s)
    ((fixed_kernel_integrable (k + 1) (by omega) s).aestronglyMeasurable)
    (by
      filter_upwards [] with u
      intro r _
      rw [Real.norm_eq_abs, abs_mul,
        abs_of_nonneg (bump_moment_density_nonneg (k + 1) u)]
      exact mul_le_of_le_one_left (bump_moment_density_nonneg (k + 1) u)
        (Real.abs_cos_le_one _))
    (bump_moment_density_integrable (k + 1) (by omega))
    (by
      filter_upwards [] with u
      intro r _
      convert (((hasDerivAt_id r).const_mul u).sin).mul_const
        (oddMomentDensity k u) using 1 <;> try rfl
      rw [← frequency_mul_odd_moment_density]
      simp only [mul_one, id_eq]
      ring)
  exact h.2

/-- The first fixed-kernel derivative as an equality of actual functions. -/
theorem deriv_fixed_kernel (k : ℕ) (hk : k ≤ 1) :
    deriv (fixedKernel k) = fun s ↦ -sineMoment k s :=
  funext (fun s ↦ (has_deriv_at_fixed_kernel k hk s).deriv)

/-- The sine-moment derivative as an equality of actual functions. -/
theorem deriv_sine_moment (k : ℕ) (hk : k ≤ 1) :
    deriv (sineMoment k) = fixedKernel (k + 1) :=
  funext (fun s ↦ (has_deriv_at_sine_moment k hk s).deriv)

/-- Two justified Fourier differentiations give the negative next even moment. -/
theorem fixed_kernel_second_deriv (k : ℕ) (hk : k ≤ 1) :
    iteratedDeriv 2 (fixedKernel k) = fun s ↦ -fixedKernel (k + 1) s := by
  rw [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one,
    deriv_fixed_kernel k hk]
  funext s
  exact (has_deriv_at_sine_moment k hk s).fun_neg.deriv

/-- Four justified Fourier differentiations recover the degree-four even moment. -/
theorem fixed_kernel_fourth_deriv :
    iteratedDeriv 4 (fixedKernel 0) = fixedKernel 2 := by
  rw [show (4 : ℕ) = 3 + 1 by rfl, iteratedDeriv_succ,
    show (3 : ℕ) = 2 + 1 by rfl, iteratedDeriv_succ,
    fixed_kernel_second_deriv 0 (by norm_num)]
  have h3 : deriv (fun s ↦ -fixedKernel (0 + 1) s) = sineMoment 1 := by
    funext s
    simpa only [neg_neg] using (has_deriv_at_fixed_kernel 1 (by norm_num) s).fun_neg.deriv
  rw [h3, deriv_sine_moment 1 (by norm_num)]

/-- Chain-rule differentiation retains the inverse-radius factor in physical coordinates. -/
theorem has_deriv_at_fixed_kernel_comp_div (A : ℝ) (k : ℕ) (hk : k ≤ 1) (t : ℝ) :
    HasDerivAt (fun t ↦ fixedKernel k (t / A)) (-sineMoment k (t / A) / A) t := by
  convert (has_deriv_at_fixed_kernel k hk (t / A)).comp t
    ((hasDerivAt_id t).div_const A) using 1 <;> try rfl
  ring

/-- The odd physical-coordinate observation differentiates to the next fixed kernel. -/
theorem has_deriv_at_sine_moment_comp_div (A : ℝ) (k : ℕ) (hk : k ≤ 1) (t : ℝ) :
    HasDerivAt (fun t ↦ sineMoment k (t / A)) (fixedKernel (k + 1) (t / A) / A) t := by
  convert (has_deriv_at_sine_moment k hk (t / A)).comp t
    ((hasDerivAt_id t).div_const A) using 1 <;> try rfl
  ring

/-- First derivative of the unchanged physical base correlation. -/
theorem base_correlation_deriv (A : ℝ) :
    deriv (baseCorrelation A) = fun t ↦ -sineMoment 0 (t / A) / A := by
  funext t
  exact (has_deriv_at_fixed_kernel_comp_div A 0 (by norm_num) t).deriv

/-- The base correlation has the precise inverse-square second derivative. -/
theorem base_correlation_second_deriv (A : ℝ) :
    iteratedDeriv 2 (baseCorrelation A) = fun t ↦ -fixedKernel 1 (t / A) / A ^ 2 := by
  rw [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one,
    base_correlation_deriv]
  funext t
  convert ((has_deriv_at_sine_moment_comp_div A 0 (by norm_num) t).fun_neg.div_const
    A).deriv using 1
  ring

/-- Third derivative of the physical base correlation, with its source radius retained. -/
theorem base_correlation_third_deriv (A : ℝ) :
    iteratedDeriv 3 (baseCorrelation A) = fun t ↦ sineMoment 1 (t / A) / A ^ 3 := by
  rw [show (3 : ℕ) = 2 + 1 by rfl, iteratedDeriv_succ, base_correlation_second_deriv]
  funext t
  convert ((has_deriv_at_fixed_kernel_comp_div A 1 (by norm_num) t).fun_neg.div_const
    (A ^ 2)).deriv using 1
  ring

/-- The base correlation has the precise inverse-fourth fourth derivative. -/
theorem base_correlation_fourth_deriv (A : ℝ) :
    iteratedDeriv 4 (baseCorrelation A) = fun t ↦ fixedKernel 2 (t / A) / A ^ 4 := by
  rw [show (4 : ℕ) = 3 + 1 by rfl, iteratedDeriv_succ, base_correlation_third_deriv]
  funext t
  convert ((has_deriv_at_sine_moment_comp_div A 1 (by norm_num) t).div_const (A ^ 3)).deriv using 1
  ring

/-- The actual base correlation is globally `C⁴`, using only the admitted moments. -/
theorem base_correlation_cont_diff_four (A : ℝ) : ContDiff ℝ 4 (baseCorrelation A) := by
  have hF (k : ℕ) (hk : k ≤ 1) :
      Differentiable ℝ (fun t ↦ fixedKernel k (t / A)) :=
    fun t ↦ (has_deriv_at_fixed_kernel_comp_div A k hk t).differentiableAt
  have hS (k : ℕ) (hk : k ≤ 1) :
      Differentiable ℝ (fun t ↦ sineMoment k (t / A)) :=
    fun t ↦ (has_deriv_at_sine_moment_comp_div A k hk t).differentiableAt
  convert (contDiff_nat_iff_iteratedDeriv (f := baseCorrelation A) (n := 4)).mpr ?_ using 1 <;>
    try rfl
  constructor
  · intro m hm
    interval_cases m
    · rw [iteratedDeriv_zero]
      convert (hF 0 (by norm_num)).continuous using 1
      rfl
    · rw [iteratedDeriv_one, base_correlation_deriv]
      exact (hS 0 (by norm_num)).continuous.neg.div_const A
    · rw [base_correlation_second_deriv]
      exact (hF 1 (by norm_num)).continuous.neg.div_const (A ^ 2)
    · rw [base_correlation_third_deriv]
      exact (hS 1 (by norm_num)).continuous.div_const (A ^ 3)
    · rw [base_correlation_fourth_deriv]
      exact ((PhaseKernelBoundary.fixed_kernel_continuous 2 (by norm_num)).comp
        (continuous_id.div_const A)).div_const (A ^ 4)
  · intro m hm
    interval_cases m
    · rw [iteratedDeriv_zero]
      convert hF 0 (by norm_num) using 1 <;> rfl
    · rw [iteratedDeriv_one, base_correlation_deriv]
      exact (hS 0 (by norm_num)).fun_neg.div_const A
    · rw [base_correlation_second_deriv]
      exact (hF 1 (by norm_num)).fun_neg.div_const (A ^ 2)
    · rw [base_correlation_third_deriv]
      exact (hS 1 (by norm_num)).div_const (A ^ 3)

/-- The scaled kernel is exactly the expanded differential operator on its fixed base. -/
theorem scaled_kernel_eq_fixed_kernel_differential (A s : ℝ) (hA : 1 ≤ A) :
    scaledKernel A s =
      (fixedKernel 0 s / 16 - iteratedDeriv 2 (fixedKernel 0) s / (2 * A ^ 2) +
        iteratedDeriv 4 (fixedKernel 0) s / A ^ 4) / sourceNormalization A := by
  rw [fixed_kernel_second_deriv 0 (by norm_num), fixed_kernel_fourth_deriv,
    scaled_kernel_eq_three_fixed_kernels A s hA]
  ring

/-- The actual normalized source correlation is `Z_A⁻¹ (D² - 1/4)² H_A`. -/
theorem source_correlation_eq_pole_operator_sq (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      poleSquaredDifferentialOperator (baseCorrelation A) t / sourceNormalization A := by
  have hne : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
  have hc := scaled_kernel_eq_source_correlation A (t / A) hA
  rw [show A * (t / A) = t by field_simp] at hc
  rw [← hc, scaled_kernel_eq_three_fixed_kernels A (t / A) hA]
  unfold poleSquaredDifferentialOperator
  rw [base_correlation_second_deriv, base_correlation_fourth_deriv]
  unfold baseCorrelation
  ring

/-- At zero the squared pole operation has the strictly positive source normalization. -/
theorem base_correlation_pole_operator_sq_at_zero (A : ℝ) (hA : 1 ≤ A) :
    poleSquaredDifferentialOperator (baseCorrelation A) 0 = sourceNormalization A := by
  have hc := source_correlation_eq_pole_operator_sq A 0 hA
  have hzero := scaled_kernel_eq_source_correlation A 0 hA
  rw [scaled_kernel_at_zero A hA] at hzero
  simp only [mul_zero] at hzero
  rw [← hzero] at hc
  exact (div_eq_one_iff_eq (ne_of_gt (source_normalization_pos A hA))).mp hc.symm

/-- The actual source base is outside the homogeneous squared-pole solution space. -/
theorem base_correlation_not_homogeneous (A : ℝ) (hA : 1 ≤ A) :
    poleSquaredDifferentialOperator (baseCorrelation A) ≠ 0 := by
  intro h
  have hzero := congrFun h 0
  rw [base_correlation_pole_operator_sq_at_zero A hA] at hzero
  exact (ne_of_gt (source_normalization_pos A hA)) hzero

/-- The unsquared pole operator on the actual base retains its exact two fixed components. -/
theorem pole_differential_operator_base_eq (A : ℝ) :
    poleDifferentialOperator (baseCorrelation A) =
      fun t ↦ -fixedKernel 1 (t / A) / A ^ 2 - fixedKernel 0 (t / A) / 4 := by
  funext t
  unfold poleDifferentialOperator
  rw [base_correlation_second_deriv]
  rfl

/-- Ordinary differentiation of the actual unsquared pole operation. -/
theorem has_deriv_at_pole_differential_operator_base (A t : ℝ) :
    HasDerivAt (poleDifferentialOperator (baseCorrelation A))
      (sineMoment 1 (t / A) / A ^ 3 + sineMoment 0 (t / A) / (4 * A)) t := by
  rw [pole_differential_operator_base_eq]
  convert (((has_deriv_at_fixed_kernel_comp_div A 1 (by norm_num) t).fun_neg.div_const
    (A ^ 2)).fun_sub
    ((has_deriv_at_fixed_kernel_comp_div A 0 (by norm_num) t).div_const 4)) using 1 <;> try rfl
  ring

/-- The ordinary first derivative of the actual unsquared pole operation. -/
theorem deriv_pole_differential_operator_base (A : ℝ) :
    deriv (poleDifferentialOperator (baseCorrelation A)) =
      fun t ↦ sineMoment 1 (t / A) / A ^ 3 + sineMoment 0 (t / A) / (4 * A) :=
  funext (fun t ↦ (has_deriv_at_pole_differential_operator_base A t).deriv)

/-- Second differentiation of the actual unsquared pole operation. -/
theorem second_deriv_pole_differential_operator_base (A : ℝ) :
    iteratedDeriv 2 (poleDifferentialOperator (baseCorrelation A)) =
      fun t ↦ fixedKernel 2 (t / A) / A ^ 4 + fixedKernel 1 (t / A) / (4 * A ^ 2) := by
  rw [iteratedDeriv_succ (n := 1), iteratedDeriv_one,
    deriv_pole_differential_operator_base]
  funext t
  convert (((has_deriv_at_sine_moment_comp_div A 1 (by norm_num) t).div_const (A ^ 3)).fun_add
    ((has_deriv_at_sine_moment_comp_div A 0 (by norm_num) t).div_const (4 * A))).deriv using 1
  ring

/-- On the actual admitted base the expanded operator really is the square of `D² - 1/4`. -/
theorem pole_squared_differential_operator_base_eq_comp (A : ℝ) :
    poleSquaredDifferentialOperator (baseCorrelation A) =
      poleDifferentialOperator (poleDifferentialOperator (baseCorrelation A)) := by
  funext t
  unfold poleSquaredDifferentialOperator
  change iteratedDeriv 4 (baseCorrelation A) t - iteratedDeriv 2 (baseCorrelation A) t / 2 +
    baseCorrelation A t / 16 =
    iteratedDeriv 2 (poleDifferentialOperator (baseCorrelation A)) t -
      poleDifferentialOperator (baseCorrelation A) t / 4
  rw [base_correlation_second_deriv, base_correlation_fourth_deriv,
    second_deriv_pole_differential_operator_base, pole_differential_operator_base_eq]
  unfold baseCorrelation
  ring

/-- The actual source bump has an ordinary first derivative, including both support seams. -/
theorem has_deriv_at_scaled_bump (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (scaledBump A) ((Icc (-A) A).indicator (firstInterior A) t) t := by
  rw [scaledBump_eq_indicator A hA]
  apply CorrelationRegularity.indicator_hasDerivAt (bumpInterior_hasDerivAt A)
  intro x hx
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx]
  · exact ⟨(bumpInterior_endpoints A (ne_of_gt hA)).1,
      (firstInterior_endpoints A (ne_of_gt hA)).1⟩
  · exact ⟨(bumpInterior_endpoints A (ne_of_gt hA)).2,
      (firstInterior_endpoints A (ne_of_gt hA)).2⟩

/-- The concrete weak second derivative is also the ordinary global second derivative. -/
theorem scaled_bump_second_deriv (A : ℝ) (hA : 0 < A) :
    iteratedDeriv 2 (scaledBump A) = explicitSecondDerivative A := by
  have hd : deriv (scaledBump A) = (Icc (-A) A).indicator (firstInterior A) :=
    funext (fun t ↦ (has_deriv_at_scaled_bump A t hA).deriv)
  rw [show (2 : ℕ) = 1 + 1 by rfl, iteratedDeriv_succ, iteratedDeriv_one, hd]
  funext t
  apply HasDerivAt.deriv
  apply CorrelationRegularity.indicator_hasDerivAt (firstInterior_hasDerivAt A)
  intro x hx
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx]
  · exact ⟨(firstInterior_endpoints A (ne_of_gt hA)).1,
      (secondInterior_endpoints A (ne_of_gt hA)).1⟩
  · exact ⟨(firstInterior_endpoints A (ne_of_gt hA)).2,
      (secondInterior_endpoints A (ne_of_gt hA)).2⟩

/-- The source test is exactly the unsquared pole operation on its scaled bump. -/
theorem normalized_test_eq_pole_differential_operator (A : ℝ) (hA : 1 ≤ A) :
    normalizedTest explicitSecondDerivative A =
      fun t ↦ poleDifferentialOperator (scaledBump A) t /
        Real.sqrt (sourceNormalization A) := by
  unfold normalizedTest dilationTest poleDifferentialOperator
  rw [scaled_bump_second_deriv A (by linarith)]

/-- The physical base is exactly the autocorrelation of the actual scaled source bump. -/
theorem base_correlation_eq_scaled_bump_correlation (A t : ℝ) (hA : 0 < A) :
    baseCorrelation A t = ∫ x, scaledBump A x * scaledBump A (x - t) := by
  have hne : A ≠ 0 := ne_of_gt hA
  unfold baseCorrelation
  rw [GeneralizedPoleMoments.fixed_kernel_zero_eq_bump_correlation]
  symm
  have heq : (fun x ↦ scaledBump A x * scaledBump A (x - t)) =
      fun x ↦ (sourceBump (x / A) * sourceBump (x / A - t / A)) / A := by
    funext x
    unfold scaledBump
    rw [show (x - t) / A = x / A - t / A by ring, div_mul_div_comm,
      Real.mul_self_sqrt hA.le]
  rw [heq, integral_div,
    Measure.integral_comp_div (fun x ↦ sourceBump x * sourceBump (x - t / A)) A,
    abs_of_pos hA, smul_eq_mul]
  field_simp

/-- Pointwise positivity follows from the actual nonnegative bump autocorrelation. -/
theorem base_correlation_nonneg (A t : ℝ) : 0 ≤ baseCorrelation A t :=
  GeneralizedPoleMoments.fixed_kernel_zero_nonneg (t / A)

end
end FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation
