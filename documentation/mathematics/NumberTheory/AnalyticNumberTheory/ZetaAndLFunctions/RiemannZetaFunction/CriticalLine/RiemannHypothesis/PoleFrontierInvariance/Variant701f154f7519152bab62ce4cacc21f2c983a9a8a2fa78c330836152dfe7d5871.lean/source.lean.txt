-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDiscrepancyValue.Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceDiscrepancyValue.Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.UniformTailEquivalence
import FormalResearch.RiemannHypothesis.PoleGreenGauge
import FormalResearch.RiemannHypothesis.PoleAbelTransform

/-!
# Certified transformations preserve the exact prime-square frontier

The class is quantitative: transformations supply a positive scale and one
uniformly bounded error on a common real tail. It is closed under composition.
The actual source discrepancy and normalized pole-factorization values are
instantiated immediately. Exact Green and Abel consumers use proved actual
source regularity, compact support and endpoint jets.

The result preserves the truth of uniform estimates, not their computational
or proof difficulty. It supplies no unconditional estimate and no converse from
the complete EstimateObligation to prime-square compensation.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDiscrepancyValue.Variantd31b9cc4552a3a932f8181015b1e1026b744ce759bf7afa403975b29028293c9

namespace FormalResearch.RiemannHypothesis.PoleFrontierInvariance

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.MathematicalTooling.UniformTailEquivalence
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateHigherPrimePowers PrimeSquareEstimate PrimePowerPhaseDefect Realization
open PoleDifferentialCorrelation PoleArithmeticFunctional PhaseKernelBoundary

noncomputable section

/-- The unchanged scalar value of the actual finite source minus its continuous reference. -/
def sourceDiscrepancyValue (A : ℝ) : ℝ :=
  lowerPowerContribution A - ∫ t in (0 : ℝ)..2 * A,
    Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t

/-- The actual arithmetic discrepancy evaluated on the unnormalized pole operation. -/
def unnormalizedPoleValue (A : ℝ) : ℝ :=
  ((∑ n ∈ lowerPowerInventory A, primeWeight n *
    poleSquaredDifferentialOperator (baseCorrelation A) (Real.log n)) -
    ∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
      poleSquaredDifferentialOperator (baseCorrelation A) t)

/-- The same actual arithmetic source after normalized pole factorization. -/
def normalizedPoleValue (A : ℝ) : ℝ :=
  unnormalizedPoleValue A / sourceNormalization A

/-- The correctly differentiated pairing of the independently defined actual Green potential. -/
def greenResidualValue (A : ℝ) : ℝ :=
  ∫ t, primeSquareGreenResidual A t *
    poleSquaredDifferentialOperator (sourceCorrelation explicitSecondDerivative A) t

/-- The exact twice-applied pole pairing, with the original normalization restored. -/
def doublePoleValue (A : ℝ) : ℝ :=
  (∫ t, primeSquareGreenResidual A t * poleSquaredDifferentialOperator
    (poleSquaredDifferentialOperator (baseCorrelation A)) t) / sourceNormalization A

/-- An arbitrary radius-dependent homogeneous freedom in the correctly filtered potential. -/
def gaugedGreenValue (g : ℝ → ℝ → ℝ) (A : ℝ) : ℝ :=
  ∫ t, (primeSquareGreenResidual A t + g A t) *
    poleSquaredDifferentialOperator (sourceCorrelation explicitSecondDerivative A) t

/-- The exact second Abel integral over the actual strict prime-and-square inventory. -/
def sourceAbelValue (A : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..2 * A, PoleAbelTransform.lowerAbelPrimitive A t *
    deriv (deriv (PoleAbelTransform.sourceAbelTest A)) t

/-- Applying the pole operator again retains the same exact source normalization. -/
theorem pole_operator_twice_base_eq_scaled_source (A : ℝ) (hA : 1 ≤ A) (t : ℝ) :
    poleSquaredDifferentialOperator (poleSquaredDifferentialOperator (baseCorrelation A)) t =
      sourceNormalization A *
        poleSquaredDifferentialOperator (sourceCorrelation explicitSecondDerivative A) t := by
  have he : poleSquaredDifferentialOperator (baseCorrelation A) =
      fun t ↦ sourceNormalization A * sourceCorrelation explicitSecondDerivative A t := by
    funext t
    have h := source_correlation_eq_pole_operator_sq A t hA
    exact (div_eq_iff (ne_of_gt (source_normalization_pos A hA))).mp h.symm |>.trans (mul_comm _ _)
  rw [he]
  unfold poleSquaredDifferentialOperator
  rw [iteratedDeriv_const_mul_field, iteratedDeriv_const_mul_field]
  ring

/-- The two legal derivative-weighted Green expressions are exactly the same scalar value. -/
theorem double_pole_value_eq_green_residual (A : ℝ) (hA : 1 ≤ A) :
    doublePoleValue A = greenResidualValue A := by
  unfold doublePoleValue greenResidualValue
  simp_rw [pole_operator_twice_base_eq_scaled_source A hA,
    mul_left_comm (primeSquareGreenResidual A _) (sourceNormalization A)]
  rw [integral_const_mul]
  field_simp [ne_of_gt (source_normalization_pos A hA)]

/-- Native linear-functional evaluation equals the raw actual scalar discrepancy. -/
theorem source_discrepancy_value_eq_bundled (A : ℝ) (hA : 1 ≤ A) :
    sourceDiscrepancyValue A =
      lowerPowerDiscrepancy A (sourceCorrelationMap A hA) := rfl

/-- The actual derivative-weighted Green pairing is genuinely integrable. -/
theorem source_green_operator_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ primeSquareGreenResidual A t *
      poleSquaredDifferentialOperator (sourceCorrelation explicitSecondDerivative A) t) :=
  PoleGreenArithmetic.prime_square_green_operator_integrable A hA _
    (PoleCorrelationRegularity.source_correlation_cont_diff_four A hA)
    (CorrelationRegularity.sourceCorrelation_hasCompactSupport A (by linarith))

/-- Restoring the extra pole operation preserves genuine integrability of the source pairing. -/
theorem source_double_pole_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t ↦ primeSquareGreenResidual A t *
      poleSquaredDifferentialOperator (poleSquaredDifferentialOperator (baseCorrelation A)) t) := by
  simp_rw [pole_operator_twice_base_eq_scaled_source A hA,
    mul_left_comm (primeSquareGreenResidual A _) (sourceNormalization A)]
  exact (source_green_operator_integrable A hA).const_mul _

/-- Completed source regularity removes the last analytic premise from the Green pairing. -/
theorem green_residual_value_eq_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    greenResidualValue A = sourceDiscrepancyValue A := by
  rw [source_discrepancy_value_eq_bundled A hA]
  exact PoleGreenArithmetic.prime_square_green_weak_discrepancy A hA _
    (PoleCorrelationRegularity.source_correlation_cont_diff_four A hA)
    (CorrelationRegularity.sourceCorrelation_hasCompactSupport A (by linarith))

/-- The actual frontier is the twice-differentiated pairing, not the positive Green pairing. -/
theorem source_discrepancy_eq_double_pole_pairing (A : ℝ) (hA : 1 ≤ A) :
    sourceDiscrepancyValue A = doublePoleValue A := by
  rw [double_pole_value_eq_green_residual A hA, green_residual_value_eq_discrepancy A hA]

/-- Every C⁴ homogeneous freedom cancels in the actual correctly differentiated Green pairing. -/
theorem gauged_green_value_eq_discrepancy (g : ℝ → ℝ → ℝ) (A : ℝ) (hA : 1 ≤ A)
    (hg : ContDiff ℝ 4 (g A)) (hz : ∀ t, poleSquaredDifferentialOperator (g A) t = 0) :
    gaugedGreenValue g A = sourceDiscrepancyValue A := by
  rw [source_discrepancy_value_eq_bundled A hA]
  exact PoleGreenGauge.green_discrepancy_pairing_add_homogeneous A hA _ _ hg
    (PoleCorrelationRegularity.source_correlation_cont_diff_four A hA)
    (CorrelationRegularity.sourceCorrelation_hasCompactSupport A (by linarith)) hz

/-- The exact second Abel identity also has no unproved regularity premise. -/
theorem source_abel_value_eq_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    sourceAbelValue A = sourceDiscrepancyValue A := by
  rw [source_discrepancy_value_eq_bundled A hA]
  exact (PoleAbelTransform.source_discrepancy_second_abel A hA).symm

/-- The normalized differential arithmetic expression is exactly the existing discrepancy. -/
theorem normalized_pole_value_eq_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    normalizedPoleValue A = sourceDiscrepancyValue A := by
  rw [source_discrepancy_value_eq_bundled A hA,
    lower_power_discrepancy_operator_identity A hA]
  unfold normalizedPoleValue unnormalizedPoleValue lowerPowerDiscrepancy
    lowerPowerFunctional continuousReference
  change _ = ((∑ n ∈ lowerPowerInventory A,
    primeWeight n * sourcePoleOperatorMap A hA (Real.log n)) -
      ∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) * sourcePoleOperatorMap A hA t) /
        sourceNormalization A
  simp_rw [source_pole_operator_map_apply]

/-- Prime-square compensation is exactly a tail upper bound on its signed contribution. -/
theorem lower_power_tail_iff_prime_square_compensation :
    UniformTailUpperBound lowerPowerContribution ↔ PrimeSquareCompensationTail := by
  constructor
  · rintro ⟨B, hB, R, hR, htail⟩
    refine ⟨2 * B, by positivity, R, hR, ?_⟩
    intro A hRA
    have h := htail A hRA
    rw [lowerPowerContribution_eq_weight_sub_half_phaseMass A (hR.trans hRA)] at h
    linarith
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C / 2, by positivity, R, hR, ?_⟩
    intro A hRA
    rw [lowerPowerContribution_eq_weight_sub_half_phaseMass A (hR.trans hRA)]
    have h := htail A hRA
    linarith

/-- The actual continuum budget supplies a quantitative adapter with fixed error two. -/
def discrepancyTailAdapter : AffineTailAdapter lowerPowerContribution sourceDiscrepancyValue where
  scale := 1
  scale_pos := zero_lt_one
  error := 2
  error_nonneg := by norm_num
  threshold := 1
  threshold_ge_one := le_rfl
  error_bound := by
    intro A hA
    have heq : sourceDiscrepancyValue A - 1 * lowerPowerContribution A =
        -(∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
          sourceCorrelation explicitSecondDerivative A t) := by
      unfold sourceDiscrepancyValue
      ring
    rw [heq, abs_neg]
    exact source_continuum_abs_le_two A hA

/-- The actual normalized pole identity has unit scale and zero error on admitted radii. -/
def poleTailAdapter : AffineTailAdapter sourceDiscrepancyValue normalizedPoleValue :=
  AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using normalized_pole_value_eq_discrepancy A hA)

/-- The discrepancy bound retains both directions of the exact arithmetic frontier. -/
theorem discrepancy_tail_iff_prime_square_compensation :
    UniformTailUpperBound sourceDiscrepancyValue ↔ PrimeSquareCompensationTail :=
  discrepancyTailAdapter.uniform_tail_upper_bound_iff.symm.trans
    lower_power_tail_iff_prime_square_compensation

/-- Every quantitatively certified transformation preserves the actual source frontier. -/
theorem uniform_frontier_invariance (F : ℝ → ℝ)
    (hF : QuantitativeTailEquivalence sourceDiscrepancyValue F) :
    UniformTailUpperBound F ↔ PrimeSquareCompensationTail :=
  (uniform_tail_upper_bound_iff_of_quantitative_equivalence hF).symm.trans
    discrepancy_tail_iff_prime_square_compensation

/-- Exact pole factorization belongs to the certified invariant class. -/
theorem normalized_pole_tail_iff_prime_square_compensation :
    UniformTailUpperBound normalizedPoleValue ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨poleTailAdapter⟩

/-- Actual Green inversion belongs to the certified class with unit scale and zero error. -/
def greenTailAdapter : AffineTailAdapter sourceDiscrepancyValue greenResidualValue :=
  AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using green_residual_value_eq_discrepancy A hA)

/-- The correctly differentiated actual Green bound preserves both arithmetic directions. -/
theorem green_tail_iff_prime_square_compensation :
    UniformTailUpperBound greenResidualValue ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨greenTailAdapter⟩

/-- Restoring the extra pole operation preserves the same arithmetic frontier exactly. -/
theorem double_pole_tail_iff_prime_square_compensation :
    UniformTailUpperBound doublePoleValue ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using (source_discrepancy_eq_double_pole_pairing A hA).symm)⟩

/-- Arbitrary scale-dependent homogeneous coefficients need no bound in the exact Green gauge. -/
theorem gauged_green_tail_iff_prime_square_compensation (g : ℝ → ℝ → ℝ)
    (hg : ∀ A : ℝ, 1 ≤ A → ContDiff ℝ 4 (g A))
    (hz : ∀ A : ℝ, 1 ≤ A → ∀ t, poleSquaredDifferentialOperator (g A) t = 0) :
    UniformTailUpperBound (gaugedGreenValue g) ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using gauged_green_value_eq_discrepancy g A hA (hg A hA) (hz A hA))⟩

/-- Exact second Abel summation has unit scale, zero error and the same source threshold. -/
def abelTailAdapter : AffineTailAdapter sourceDiscrepancyValue sourceAbelValue :=
  AffineTailAdapter.ofTailScaledEq 1 zero_lt_one 1 le_rfl
    (by intro A hA; simpa using source_abel_value_eq_discrepancy A hA)

/-- A uniform second Abel bound is equivalent to exact prime-square compensation. -/
theorem second_abel_tail_iff_prime_square_compensation :
    UniformTailUpperBound sourceAbelValue ↔ PrimeSquareCompensationTail :=
  uniform_frontier_invariance _ ⟨abelTailAdapter⟩

/-- The certified class also reaches the unchanged signed Mertens formulation in both directions. -/
theorem certified_frontier_iff_mertens_residual (F : ℝ → ℝ)
    (hF : QuantitativeTailEquivalence sourceDiscrepancyValue F) :
    UniformTailUpperBound F ↔ EstimateMertensResidual.MertensResidualTailUpperBound :=
  (uniform_frontier_invariance F hF).trans
    (prime_square_compensation_iff_prime_phase_compensation.trans
      HeliconeEstimate.prime_phase_compensation_tail_iff_mertens_residual_tail)

/-- The existing source transports preserve the signed pairing formulation as well. -/
theorem certified_frontier_iff_signed_pairing (F : ℝ → ℝ)
    (hF : QuantitativeTailEquivalence sourceDiscrepancyValue F) :
    UniformTailUpperBound F ↔ EstimateTailReduction.SignedPairingTailLowerBound :=
  (certified_frontier_iff_mertens_residual F hF).trans
    EstimateMertensResidual.signed_pairing_tail_iff_mertens_residual_tail.symm

/-- Variable normalizations preserve the frontier with uniform positive bounds. -/
theorem uniform_frontier_invariance_variable_normalization (F c : ℝ → ℝ)
    (m M K R : ℝ) (hm : 0 < m) (hmM : m ≤ M) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (h : ∀ A : ℝ, R ≤ A → m ≤ c A ∧ c A ≤ M ∧
      |F A - c A * sourceDiscrepancyValue A| ≤ K) :
    UniformTailUpperBound F ↔ PrimeSquareCompensationTail :=
  (uniform_tail_upper_bound_iff_of_variable_normalization c m M K R hm hmM hK hR h).symm.trans
    discrepancy_tail_iff_prime_square_compensation

/-- The actual source normalization is bounded above and uniformly away from zero. -/
theorem source_normalization_uniform_bounds (A : ℝ) (hA : 1 ≤ A) :
    (4096 / 109395 : ℝ) ≤ sourceNormalization A ∧ sourceNormalization A ≤ 64 := by
  have h2 : 1 ≤ A ^ 2 := by nlinarith
  have h4 : 1 ≤ A ^ 4 := by nlinarith [sq_nonneg (A ^ 2 - 1)]
  have ht2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
  have ht4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) / 1 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h4
  have hp2 : 0 ≤ (131072 / 45045 : ℝ) / (2 * A ^ 2) := by positivity
  have hp4 : 0 ≤ (196608 / 5005 : ℝ) / A ^ 4 := by positivity
  unfold sourceNormalization
  constructor <;> norm_num at * <;> linarith

/-- Unnormalized pole evaluation retains the source's exact radius-dependent factor. -/
theorem unnormalized_pole_value_eq_scaled_discrepancy (A : ℝ) (hA : 1 ≤ A) :
    unnormalizedPoleValue A = sourceNormalization A * sourceDiscrepancyValue A := by
  have h := normalized_pole_value_eq_discrepancy A hA
  unfold normalizedPoleValue at h
  have he := (div_eq_iff (ne_of_gt (source_normalization_pos A hA))).mp h
  simpa [mul_comm] using he

/-- The actual uniformly controlled normalization also preserves the arithmetic frontier. -/
theorem unnormalized_pole_tail_iff_prime_square_compensation :
    UniformTailUpperBound unnormalizedPoleValue ↔ PrimeSquareCompensationTail := by
  apply uniform_frontier_invariance_variable_normalization _ sourceNormalization
    (4096 / 109395) 64 0 1 (by norm_num) (by norm_num) le_rfl le_rfl
  intro A hA
  obtain ⟨hl, hu⟩ := source_normalization_uniform_bounds A hA
  refine ⟨hl, hu, ?_⟩
  rw [unnormalized_pole_value_eq_scaled_discrepancy A hA, sub_self, abs_zero]

/-- A certified transformed bound reaches the unchanged estimate through the existing source
descent. -/
theorem estimate_of_certified_frontier (F : ℝ → ℝ)
    (hF : QuantitativeTailEquivalence sourceDiscrepancyValue F)
    (h : UniformTailUpperBound F) : CorrelationAssembly.EstimateObligation :=
  estimate_of_prime_square_compensation ((uniform_frontier_invariance F hF).mp h)

/-- The exact RH target remains conditional on the same arithmetic estimate. -/
theorem riemann_hypothesis_of_certified_frontier (F : ℝ → ℝ)
    (hF : QuantitativeTailEquivalence sourceDiscrepancyValue F)
    (h : UniformTailUpperBound F) : _root_.RiemannHypothesis :=
  riemann_hypothesis_of_prime_square_compensation ((uniform_frontier_invariance F hF).mp h)

/-- The identity real function has no uniform eventual upper bound. -/
theorem identity_function_not_uniformly_bounded :
    ¬UniformTailUpperBound (fun A : ℝ ↦ A) := by
  rintro ⟨B, _, R, _, h⟩
  have hA : R ≤ max B R + 1 := by linarith [le_max_right B R]
  have hb := h (max B R + 1) hA
  linarith [le_max_left B R]

/-- Dropping a normalization's uniform positive lower bound can erase an unbounded tail. -/
theorem vanishing_normalization_changes_tail :
    UniformTailUpperBound (fun A : ℝ ↦ A / A) ∧
      ¬UniformTailUpperBound (fun A : ℝ ↦ A) := by
  refine ⟨⟨1, zero_le_one, 1, le_rfl, ?_⟩, identity_function_not_uniformly_bounded⟩
  intro A hA
  change A / A ≤ 1
  simp [ne_of_gt (by linarith : 0 < A)]

/-- Pointwise finite error budgets cannot replace one uniform error constant. -/
theorem pointwise_error_changes_tail :
    (∀ A : ℝ, 1 ≤ A → ∃ K : ℝ, 0 ≤ K ∧ |(0 : ℝ) - A| ≤ K) ∧
      UniformTailUpperBound (fun _ : ℝ ↦ (0 : ℝ)) ∧
        ¬UniformTailUpperBound (fun A : ℝ ↦ A) := by
  refine ⟨?_, ⟨0, le_rfl, 1, le_rfl, by intro A _; rfl⟩,
    identity_function_not_uniformly_bounded⟩
  intro A _
  exact ⟨|0 - A|, abs_nonneg _, le_rfl⟩

end
end FormalResearch.RiemannHypothesis.PoleFrontierInvariance
