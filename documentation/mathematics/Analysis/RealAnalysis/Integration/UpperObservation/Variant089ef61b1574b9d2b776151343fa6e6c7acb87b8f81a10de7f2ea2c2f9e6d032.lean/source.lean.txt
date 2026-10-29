-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FiniteObservation.Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FiniteObservation.Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008","mathematical_subject":"Analysis.Integration","original_sha256":"6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/UpperObservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryChannels
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment


namespace GRWTSK.Analysis.RealAnalysis.Integration.FiniteObservation.Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008

set_option autoImplicit false

namespace UpperObservationScratch

open MeasureTheory Finset
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The actual finite Möbius observation, with every original coefficient retained. -/
def finiteObservation (A : ℝ) (T : Finset ℕ) (x : ℝ) : ℝ :=
  ∑ i ∈ T, (ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
    normalizedTest explicitSecondDerivative A (x + Real.log i)

/-- On the positive half-line the actual test admits the original floor cutoff. -/
theorem source_shift_zero_above_cutoff (A x : ℝ) (n : ℕ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) (hn : ⌊Real.exp A⌋₊ < n) :
    normalizedTest explicitSecondDerivative A (x + Real.log n) = 0 := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Real.exp A < (n : ℝ) :=
    (Nat.floor_lt (Real.exp_pos A).le).mp hn
  have hl : A < Real.log (n : ℝ) := (Real.lt_log_iff_exp_lt hn0).mpr he
  apply normalizedTest_zero_of_le_abs A _ (by linarith)
  exact le_trans (by linarith : A ≤ x + Real.log (n : ℝ)) (le_abs_self _)

/-- Finite weighted Möbius inversion acts on the unchanged normalized test. -/
theorem finite_observation_inversion (A x : ℝ) (hA : 1 ≤ A) (hx : 0 ≤ x) :
    (∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Icc 1 ⌊Real.exp A⌋₊) (x + Real.log k)) =
      normalizedTest explicitSecondDerivative A x := by
  let N := ⌊Real.exp A⌋₊
  let F : ℕ → ℝ := fun n ↦
    normalizedTest explicitSecondDerivative A (x + Real.log n) / Real.sqrt n
  have hN : 1 ≤ N := by
    apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
    simpa only [Nat.cast_one] using Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A)
  have hF : ∀ n, N < n → F n = 0 := by
    intro n hn
    simp only [F, source_shift_zero_above_cutoff A x n hA hx hn, zero_div]
  calc
    _ = ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ k ∈ Icc 1 N, F (i * k) := by
      simp only [finiteObservation, mul_sum]
      rw [sum_comm]
      apply sum_congr rfl
      intro i hi
      apply sum_congr rfl
      intro k hk
      have hi0 : (i : ℝ) ≠ 0 := by exact_mod_cast (show i ≠ 0 by
        have := (mem_Icc.mp hi).1; omega)
      have hk0 : (k : ℝ) ≠ 0 := by exact_mod_cast (show k ≠ 0 by
        have := (mem_Icc.mp hk).1; omega)
      simp only [F, Nat.cast_mul, Real.log_mul hi0 hk0,
        Real.sqrt_mul (Nat.cast_nonneg i), mul_inv_rev, div_eq_mul_inv]
      rw [show x + Real.log (k : ℝ) + Real.log (i : ℝ) =
        x + (Real.log (i : ℝ) + Real.log (k : ℝ)) by ring]
      ring
    _ = F 1 := UpperRowInversion.finite_moebius_upper_inversion N N F hN le_rfl hF
    _ = _ := by simp [F]

/-- The complete upper observation ends strictly before log 2. -/
theorem upper_observation_zero_of_log_two_le (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x = 0 := by
  apply sum_eq_zero
  intro i hi
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hi0 : (0 : ℝ) < i := by exact_mod_cast hi1
  have hf : Real.exp A < (⌊Real.exp A⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one _
  have h2i : (⌊Real.exp A⌋₊ : ℝ) + 1 ≤ 2 * (i : ℝ) := by
    exact_mod_cast (show ⌊Real.exp A⌋₊ + 1 ≤ 2 * i by
      have := (mem_Ioc.mp hi).1; omega)
  have hl : A < Real.log (2 * (i : ℝ)) :=
    (Real.lt_log_iff_exp_lt (mul_pos (by norm_num) hi0)).mpr (hf.trans_le h2i)
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (ne_of_gt hi0)] at hl
  have hz := normalizedTest_zero_of_le_abs A (x + Real.log i) (by linarith)
    (le_trans (by linarith : A ≤ x + Real.log (i : ℝ)) (le_abs_self _))
  exact mul_eq_zero_of_right _ hz

/-- Higher zeta shifts of the actual upper observation vanish on the positive half-line. -/
theorem upper_observation_shift_zero (A x : ℝ) (k : ℕ) (hA : 1 ≤ A)
    (hx : 0 ≤ x) (hk : 2 ≤ k) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (x + Real.log k) = 0 := by
  apply upper_observation_zero_of_log_two_le A _ hA
  have hl : Real.log 2 ≤ Real.log (k : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hk)
  linarith

/-- The upper observation is exactly coupled to finite shifts of the retained lower core. -/
theorem upper_observation_eq_source_sub_lower_shifts (A x : ℝ)
    (hA : 1 ≤ A) (hx : 0 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x =
      normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k) := by
  let N := ⌊Real.exp A⌋₊
  have hsplit (y : ℝ) : finiteObservation A (Icc 1 N) y =
      finiteObservation A (Icc 1 (N / 2)) y +
        finiteObservation A (Ioc (N / 2) N) y :=
    UpperRowInversion.positive_sum_split N (N / 2) _ (Nat.div_le_self _ _)
  have hupper : (∑ k ∈ Icc 1 N, (1 / Real.sqrt (k : ℝ)) *
      finiteObservation A (Ioc (N / 2) N) (x + Real.log k)) =
      finiteObservation A (Ioc (N / 2) N) x := by
    rw [sum_eq_single 1]
    · simp
    · intro k hk hk1
      rw [upper_observation_shift_zero A x k hA hx (by
        have := (mem_Icc.mp hk).1; omega), mul_zero]
    · intro h1
      exfalso
      apply h1
      apply mem_Icc.mpr
      refine ⟨le_rfl, ?_⟩
      apply (Nat.le_floor_iff (Real.exp_pos A).le).mpr
      simpa using Real.one_le_exp_iff.mpr (by linarith : 0 ≤ A)
  have hinv := finite_observation_inversion A x hA hx
  change (∑ k ∈ Icc 1 N, (1 / Real.sqrt (k : ℝ)) *
    finiteObservation A (Icc 1 N) (x + Real.log k)) = _ at hinv
  simp_rw [hsplit, mul_add] at hinv
  rw [sum_add_distrib, hupper] at hinv
  linarith

/-- Finite actual shifts preserve continuity. -/
theorem finiteObservation_continuous (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Continuous (finiteObservation A T) := by
  apply continuous_finsetSum
  intro i _
  exact continuous_const.mul ((normalizedTest_contDiff A (by linarith)).continuous.comp
    (continuous_id.add continuous_const))

/-- Finite actual shifts preserve compact support, independently of their signs. -/
theorem finiteObservation_hasCompactSupport (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (finiteObservation A T) := by
  have hi (i : ℕ) : HasCompactSupport (fun x : ℝ ↦
      (ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) :=
    ((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
      (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left
  have he : finiteObservation A T = ∑ i ∈ T, (fun x : ℝ ↦
      (ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) := by
    funext x
    simp [finiteObservation]
  rw [he]
  exact HasCompactSupport.finset_sum (fun i (_ : i ∈ T) ↦ hi i)

/-- The observation has a genuinely integrable squared norm. -/
theorem finiteObservation_square_integrable (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (finiteObservation A T x) ^ 2) := by
  simp_rw [pow_two]
  change Integrable (finiteObservation A T * finiteObservation A T)
  exact ((finiteObservation_continuous A T hA).mul
      (finiteObservation_continuous A T hA)).integrable_of_hasCompactSupport
        (finiteObservation_hasCompactSupport A T hA).mul_right

/-- Every finite reflection product is genuinely integrable. -/
theorem finiteObservation_reflection_integrable (A c : ℝ) (T U : Finset ℕ)
    (hA : 1 ≤ A) :
    Integrable (fun x ↦ finiteObservation A T x * finiteObservation A U (c - x)) :=
  ((finiteObservation_continuous A T hA).mul
    ((finiteObservation_continuous A U hA).comp
      (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
        (finiteObservation_hasCompactSupport A T hA).mul_right

/-- The shifted source reflection is precisely the original autocorrelation. -/
theorem shifted_source_reflection (A a b c : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
      normalizedTest explicitSecondDerivative A (c - x + b)) =
      sourceCorrelation explicitSecondDerivative A (c + a + b) := by
  have he (x : ℝ) : normalizedTest explicitSecondDerivative A (c - x + b) =
      normalizedTest explicitSecondDerivative A ((x + a) - (c + a + b)) := by
    rw [show c - x + b = -((x + a) - (c + a + b)) by ring]
    exact CorrelationSecondMoment.normalizedTest_even A hA _
  simp_rw [he]
  exact integral_add_right_eq_self
    (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (c + a + b))) a

/-- Finite reflection observations preserve ordinary signed coefficients and the actual correlation. -/
theorem finiteObservation_reflection_eq (A c : ℝ) (T U : Finset ℕ) (hA : 1 ≤ A) :
    (∫ x : ℝ, finiteObservation A T x * finiteObservation A U (c - x)) =
      ∑ i ∈ T, ∑ j ∈ U,
        ((ArithmeticFunction.moebius i : ℝ) / Real.sqrt i) *
        ((ArithmeticFunction.moebius j : ℝ) / Real.sqrt j) *
        sourceCorrelation explicitSecondDerivative A (c + Real.log i + Real.log j) := by
  have hi (i j : ℕ) : Integrable (fun x : ℝ ↦
      ((ArithmeticFunction.moebius i : ℝ) / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) *
      ((ArithmeticFunction.moebius j : ℝ) / Real.sqrt j *
        normalizedTest explicitSecondDerivative A (c - x + Real.log j))) := by
    have hc := (normalizedTest_contDiff A (by linarith)).continuous
    exact ((continuous_const.mul (hc.comp (continuous_id.add continuous_const))).mul
      (continuous_const.mul (hc.comp
        ((continuous_const.sub continuous_id).add continuous_const)))).integrable_of_hasCompactSupport
        (((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
          (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left).mul_right
  simp_rw [finiteObservation, sum_mul, mul_sum]
  rw [integral_finsetSum T (fun i _ ↦ integrable_finsetSum U (fun j _ ↦ hi i j))]
  apply sum_congr rfl
  intro i _
  rw [integral_finsetSum U (fun j _ ↦ hi i j)]
  apply sum_congr rfl
  intro j _
  rw [← shifted_source_reflection A (Real.log i) (Real.log j) c hA,
    ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with x
  ring

/-- Reflection confined by an actual upper support has a local, genuine squared-norm budget. -/
theorem reflection_abs_le_local_square (f : ℝ → ℝ) (b c : ℝ)
    (hf : Continuous f) (hcf : HasCompactSupport f)
    (hzero : ∀ x, b ≤ x → f x = 0) (hbc : b ≤ c) :
    |∫ x : ℝ, f x * f (c - x)| ≤ ∫ x : ℝ in Set.Icc 0 b, (f x) ^ 2 := by
  let B : ℝ → ℝ := (Set.Icc 0 b).indicator (fun x ↦ (f x) ^ 2)
  have hsq : Integrable (fun x ↦ (f x) ^ 2) := by
    simp_rw [pow_two]
    exact (hf.mul hf).integrable_of_hasCompactSupport hcf.mul_right
  have hB : Integrable B := hsq.indicator measurableSet_Icc
  have hp : Integrable (fun x ↦ f x * f (c - x)) :=
    (hf.mul (hf.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
      hcf.mul_right
  have hBpos (x : ℝ) : 0 ≤ B x := by
    dsimp [B]
    by_cases hx : x ∈ Set.Icc (0 : ℝ) b
    · rw [Set.indicator_of_mem hx]
      exact sq_nonneg _
    · rw [Set.indicator_of_notMem hx]
  have hbound (x : ℝ) : |f x * f (c - x)| ≤ (B x + B (c - x)) / 2 := by
    by_cases hx0 : f x = 0
    · simp only [hx0, zero_mul, abs_zero]
      exact div_nonneg (add_nonneg (hBpos _) (hBpos _)) (by norm_num)
    by_cases hy0 : f (c - x) = 0
    · simp only [hy0, mul_zero, abs_zero]
      exact div_nonneg (add_nonneg (hBpos _) (hBpos _)) (by norm_num)
    have hxlt : x < b := by
      by_contra hx
      exact hx0 (hzero x (le_of_not_gt hx))
    have hylt : c - x < b := by
      by_contra hy
      exact hy0 (hzero (c - x) (le_of_not_gt hy))
    have hxmem : x ∈ Set.Icc (0 : ℝ) b := ⟨by linarith, hxlt.le⟩
    have hymem : c - x ∈ Set.Icc (0 : ℝ) b := ⟨by linarith, hylt.le⟩
    simp only [B, Set.indicator_of_mem hxmem, Set.indicator_of_mem hymem, abs_mul]
    nlinarith [sq_nonneg (|f x| - |f (c - x)|), sq_abs (f x), sq_abs (f (c - x))]
  calc
    _ ≤ ∫ x : ℝ, |f x * f (c - x)| := abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (B x + B (c - x)) / 2 :=
      integral_mono hp.abs ((hB.add (hB.comp_sub_left c)).div_const 2) hbound
    _ = ∫ x : ℝ, B x := by
      rw [integral_div, integral_add hB (hB.comp_sub_left c),
        integral_sub_left_eq_self B volume c]
      ring
    _ = _ := integral_indicator measurableSet_Icc

/-- Every upper reflection channel is bounded by the same short local norm, not by positivity. -/
theorem upper_reflection_abs_le_local_square (A c : ℝ) (hA : 1 ≤ A)
    (hc : Real.log 2 ≤ c) :
    |∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
      finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (c - x)| ≤
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 :=
  reflection_abs_le_local_square _ _ _
    (finiteObservation_continuous A _ hA) (finiteObservation_hasCompactSupport A _ hA)
    (fun x hx ↦ upper_observation_zero_of_log_two_le A x hA hx) hc

/-- The local squared norm is exactly the actual source minus the retained finite shifted core. -/
theorem upper_local_square_eq_core_error (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) =
    ∫ x : ℝ in Set.Icc 0 (Real.log 2),
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2 := by
  apply setIntegral_congr_fun measurableSet_Icc
  intro x hx
  dsimp only
  rw [upper_observation_eq_source_sub_lower_shifts A x hA hx.1]

/-- The core-error square used in the local comparison is genuinely integrable. -/
theorem core_error_square_integrableOn (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (fun x : ℝ ↦
      (normalizedTest explicitSecondDerivative A x -
        ∑ k ∈ Icc 1 ⌊Real.exp A⌋₊, (1 / Real.sqrt (k : ℝ)) *
          finiteObservation A (Icc 1 (⌊Real.exp A⌋₊ / 2)) (x + Real.log k)) ^ 2)
      (Set.Icc 0 (Real.log 2)) := by
  apply ((finiteObservation_square_integrable A
    (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) hA).integrableOn).congr_fun
  · intro x hx
    dsimp only
    rw [upper_observation_eq_source_sub_lower_shifts A x hA hx.1]
  · exact measurableSet_Icc

/-- Each literal source channel is the faithful reflection pairing of its finite upper observation. -/
theorem upperChannel_eq_reflection (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 1 ≤ k) :
    UpperBoundaryChannels.upperChannel A k = Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ, finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x *
        finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) (Real.log k - x) := by
  rw [finiteObservation_reflection_eq A (Real.log k) _ _ hA]
  simp only [UpperBoundaryChannels.upperChannel, JointBoundaryTransport.rectangle, mul_sum]
  apply sum_congr rfl
  intro i hi
  apply sum_congr rfl
  intro j hj
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have hk0 : (k : ℝ) ≠ 0 := by exact_mod_cast (show k ≠ 0 by omega)
  have hi0 : (i : ℝ) ≠ 0 := by exact_mod_cast (show i ≠ 0 by omega)
  have hj0 : (j : ℝ) ≠ 0 := by exact_mod_cast (show j ≠ 0 by omega)
  rw [UpperBoundaryChannels.channelKernel_eq_correlation_weight A k (i * j) hA hk
    (Nat.mul_pos hi1 hj1)]
  simp only [Nat.cast_mul, Real.log_mul hk0 (mul_ne_zero hi0 hj0), Real.log_mul hi0 hj0,
    Real.sqrt_mul (Nat.cast_nonneg k), Real.sqrt_mul (Nat.cast_nonneg i),
    div_eq_mul_inv, mul_inv_rev]
  rw [show Real.log (k : ℝ) + (Real.log (i : ℝ) + Real.log (j : ℝ)) =
    Real.log (k : ℝ) + Real.log (i : ℝ) + Real.log (j : ℝ) by ring]
  ring

/-- This upper comparison controls the original channel by a genuine local norm of the same test. -/
theorem upperChannel_abs_le_local_square (A : ℝ) (k : ℕ) (hA : 1 ≤ A) (hk : 2 ≤ k) :
    |UpperBoundaryChannels.upperChannel A k| ≤ Real.log (k : ℝ) / Real.sqrt k *
      ∫ x : ℝ in Set.Icc 0 (Real.log 2),
        (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2 := by
  have hk1 : (1 : ℝ) ≤ k := by exact_mod_cast (show 1 ≤ k by omega)
  have hcoef : 0 ≤ Real.log (k : ℝ) / Real.sqrt k :=
    div_nonneg (Real.log_nonneg hk1) (Real.sqrt_nonneg _)
  rw [upperChannel_eq_reflection A k hA (by omega), abs_mul, abs_of_nonneg hcoef]
  exact mul_le_mul_of_nonneg_left
    (upper_reflection_abs_le_local_square A (Real.log k) hA
      (Real.log_le_log (by norm_num) (by exact_mod_cast hk))) hcoef

/-- The actual Q retains its whole core, with both original upper channels bounded faithfully. -/
theorem sourceQuadraticValue_ge_core_sub_local_square (A : ℝ) (hA : 1 ≤ A) :
    UpperBoundaryChannels.coreValue A -
      2 * (Real.log 2 / Real.sqrt 2 + Real.log 3 / Real.sqrt 3) *
        (∫ x : ℝ in Set.Icc 0 (Real.log 2),
          (finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x) ^ 2) ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  have h2 := (le_abs_self (UpperBoundaryChannels.upperChannel A 2)).trans
    (upperChannel_abs_le_local_square A 2 hA le_rfl)
  have h3 := (le_abs_self (UpperBoundaryChannels.upperChannel A 3)).trans
    (upperChannel_abs_le_local_square A 3 hA (by norm_num))
  rw [UpperBoundaryChannels.sourceQuadraticValue_eq_core_sub_channels A hA]
  norm_num only [Nat.cast_ofNat] at h2 h3
  nlinarith

end
end UpperObservationScratch
