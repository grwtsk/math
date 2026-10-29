-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ContinuumRieszPrimitive.Variant874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.ContinuumRieszPrimitive.Variant874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next-rate-ingestion/concurrent-native-recovery/bytes/874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73--SourceMangoldtRieszReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative

/-!
# Exact Riesz reconstruction of the complete Mangoldt source

The arithmetic primitive is defined from the original closed prime-power
inventory. Its compact reconstruction retains every atom and both source
endpoints. The independent continuum evaluation determines the moving linear
center; an arbitrary constant center costs zero. No uniform mean witness or
signed source bound is constructed here.

Research direction and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex / ChatGPT. Focused checks are distinct from
whole-source verification and accepted integration.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ContinuumRieszPrimitive.Variant874fbff66428e51262d7d58440735e1ddfe4e0a09c628587c1db4bcc1e469c73

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction

open MeasureTheory Set ArithmeticFunction
open scoped BigOperators Interval
open SourcePairing SourceMangoldtAbel SourceFirstPrimeAbel SourceContinuousHalfEnergy
open SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimatePrimeSmoothDefect EstimateMobiusSplit
open PrimePowerDescent

/-- The independently specified continuum second primitive has zero initial jet. -/
def continuumRieszPrimitive (t : ℝ) : ℝ :=
  4 * (Real.exp (t / 2) - 1 - t / 2)

/-- Actual closed Mangoldt atoms, with every prime power and its original weight. -/
def mangoldtRieszPrimitive (t : ℝ) : ℝ :=
  (∑ n ∈ primePowerInventory t,
    vonMangoldt n / Real.sqrt n * (t - Real.log n)) - continuumRieszPrimitive t

/-- The complete arithmetic and continuum primitive has zero retained initial value. -/
theorem mangoldtRieszPrimitive_zero : mangoldtRieszPrimitive 0 = 0 := by
  norm_num [mangoldtRieszPrimitive, primePowerInventory, continuumRieszPrimitive]

/-- The center uses only an independently supplied anchor and evaluated continuum. -/
def rieszCenterSlope (A anchor : ℝ) : ℝ :=
  anchor / 2 + (14 * A ^ 4 + 272 * A ^ 2) / (7 * A ^ 4 + 272 * A ^ 2 + 7344)

/-- A constant center may depend on the real scale; its curvature readout is zero. -/
def centeredRieszProfile (A anchor b t : ℝ) : ℝ :=
  mangoldtRieszPrimitive t - rieszCenterSlope A anchor * t - b

/-- A fixed compact inventory represents every retained atom by a continuous ramp. -/
def fixedRieszAtoms (B t : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory B,
    vonMangoldt n / Real.sqrt n * max (t - Real.log n) 0

private theorem fixedRieszAtoms_continuous (B : ℝ) : Continuous (fixedRieszAtoms B) := by
  unfold fixedRieszAtoms
  exact continuous_finsetSum _ (fun n _ =>
    continuous_const.mul ((continuous_id.sub continuous_const).max continuous_const))

/-- Fixed finite ramps recover the moving closed floor, including its zero ramp at birth. -/
theorem mangoldtRieszPrimitive_eq_fixed_window (B t : ℝ) (ht : t ≤ B) :
    mangoldtRieszPrimitive t = fixedRieszAtoms B t - continuumRieszPrimitive t := by
  classical
  unfold mangoldtRieszPrimitive fixedRieszAtoms
  rw [← primePowerInventory_filter_log B t ht, Finset.sum_filter]
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : Real.log (n : ℝ) ≤ t
  · simp [hn]
  · simp [hn, max_eq_right (sub_nonpos.mpr (le_of_not_ge hn))]

/-- The actual arithmetic primitive is continuous on every nonnegative compact window. -/
theorem mangoldtRieszPrimitive_continuousOn (B : ℝ) :
    ContinuousOn mangoldtRieszPrimitive (Icc 0 B) := by
  have hc : Continuous (fun t => fixedRieszAtoms B t - continuumRieszPrimitive t) :=
    (fixedRieszAtoms_continuous B).sub (by unfold continuumRieszPrimitive; fun_prop)
  exact hc.continuousOn.congr (fun t ht => mangoldtRieszPrimitive_eq_fixed_window B t ht.2)

private theorem correlation_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) t) t :=
  ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt

private theorem correlation_deriv_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) t :=
  ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt

private theorem correlation_deriv_at_upper (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 :=
  EstimateSourceMobiusDerivative.sourceCorrelation_deriv_zero_of_two_mul_le
    A (2 * A) hA le_rfl

private theorem correlation_deriv_at_zero (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hc := correlation_hasDerivAt A 0 hA
  have hn : HasDerivAt
      (fun t : ℝ => sourceCorrelation explicitSecondDerivative A (-t))
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      (correlation_hasDerivAt A (-0) hA).comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun t : ℝ => sourceCorrelation explicitSecondDerivative A (-t)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  rw [he] at hn
  have hd := hc.unique hn
  linarith

private theorem correlation_second_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
  (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one

private theorem ramp_integral (A a : ℝ) (hA : 1 ≤ A) (ha : 0 ≤ a) (haB : a ≤ 2 * A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) =
      sourceCorrelation explicitSecondDerivative A a := by
  have hp : 0 < A := by linarith
  have hcont := correlation_second_continuous A hp
  have hfunction : Continuous (fun t : ℝ =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) :=
    hcont.mul ((continuous_id.sub continuous_const).max continuous_const)
  have hlow : (∫ t in 0..a,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) = 0 := by
    calc
      _ = ∫ t in 0..a, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le ha] at ht
        dsimp only
        simp [max_eq_right (sub_nonpos.mpr ht.2)]
      _ = 0 := by simp
  have hupper : (∫ t in a..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * max (t - a) 0) =
      ∫ t in a..2 * A,
        (t - a) * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le haB] at ht
    dsimp only
    rw [max_eq_left (sub_nonneg.mpr ht.1)]
    ring
  have hd (t : ℝ) : HasDerivAt
      (fun u => (u - a) * deriv (sourceCorrelation explicitSecondDerivative A) u -
        sourceCorrelation explicitSecondDerivative A u)
      ((t - a) * deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) t := by
    exact ((((hasDerivAt_id t).sub_const a).mul
      (correlation_deriv_hasDerivAt A t hp)).sub (correlation_hasDerivAt A t hp)).congr_deriv
      (by dsimp only [id_eq]; ring)
  have hv := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((continuous_id.sub continuous_const).mul hcont).intervalIntegrable a (2 * A))
  rw [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp] at hv
  simp only [mul_zero, zero_sub, sub_self, zero_mul, neg_neg] at hv
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    (hfunction.intervalIntegrable 0 a) (hfunction.intervalIntegrable a (2 * A))
  rw [hlow, hupper, zero_add] at hs
  exact hs.symm.trans hv

private def continuumRieszDerivative (t : ℝ) : ℝ := 2 * (Real.exp (t / 2) - 1)

private theorem continuumRiesz_hasDerivAt (t : ℝ) :
    HasDerivAt continuumRieszPrimitive (continuumRieszDerivative t) t := by
  exact (((((hasDerivAt_id t).div_const 2).exp.sub_const 1).sub
    ((hasDerivAt_id t).div_const 2)).const_mul 4).congr_deriv
    (by unfold continuumRieszDerivative; dsimp only [id_eq]; ring)

private theorem continuumRieszDerivative_hasDerivAt (t : ℝ) :
    HasDerivAt continuumRieszDerivative (Real.exp (t / 2)) t := by
  exact ((((hasDerivAt_id t).div_const 2).exp.sub_const 1).const_mul 2).congr_deriv
    (by dsimp only [id_eq]; ring)

private theorem continuum_curvature_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * continuumRieszPrimitive t) =
      criticalContinuousMoment A := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt
      (fun u => continuumRieszPrimitive u * deriv (sourceCorrelation explicitSecondDerivative A) u -
        continuumRieszDerivative u * sourceCorrelation explicitSecondDerivative A u)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * continuumRieszPrimitive t -
        Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) t := by
    exact (((continuumRiesz_hasDerivAt t).mul (correlation_deriv_hasDerivAt A t hp)).sub
      ((continuumRieszDerivative_hasDerivAt t).mul (correlation_hasDerivAt A t hp))).congr_deriv
      (by ring)
  have hq : Continuous continuumRieszPrimitive := by unfold continuumRieszPrimitive; fun_prop
  have hsecond := correlation_second_continuous A hp
  have hexp : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
  have hmoment : Continuous (fun t : ℝ => Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) :=
    hexp.mul (sourceCorrelation_contDiff A hp).continuous
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((hsecond.mul hq).sub hmoment).intervalIntegrable 0 (2 * A))
  rw [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp] at hi
  have hq0 : continuumRieszPrimitive 0 = 0 := by norm_num [continuumRieszPrimitive]
  have hq'0 : continuumRieszDerivative 0 = 0 := by norm_num [continuumRieszDerivative]
  simp only [hq0, hq'0, mul_zero, zero_mul, sub_zero] at hi
  rw [intervalIntegral.integral_sub
    (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      continuumRieszPrimitive t)
    (g := fun t => Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t)
    ((hsecond.mul hq).intervalIntegrable _ _) (hmoment.intervalIntegrable _ _)] at hi
  simpa only [criticalContinuousMoment, criticalPrimeTest] using sub_eq_zero.mp hi

/-- Exact complete source reconstruction; no mean or prime-distribution premise is used. -/
theorem mertensResidual_eq_continuous_add_riesz_work (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A +
      ∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          mangoldtRieszPrimitive t := by
  have hp : 0 < A := by linarith
  have hsecond := correlation_second_continuous A hp
  have hq : Continuous continuumRieszPrimitive := by unfold continuumRieszPrimitive; fun_prop
  have hfixed : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * mangoldtRieszPrimitive t) =
      (∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          fixedRieszAtoms (2 * A) t) -
      criticalContinuousMoment A := by
    calc
      _ = ∫ t in 0..2 * A,
          deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            (fixedRieszAtoms (2 * A) t - continuumRieszPrimitive t) := by
        apply intervalIntegral.integral_congr
        intro t ht
        rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)] at ht
        dsimp only
        rw [mangoldtRieszPrimitive_eq_fixed_window (2 * A) t ht.2]
      _ = _ := by
        simp_rw [mul_sub]
        rw [intervalIntegral.integral_sub
          (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            fixedRieszAtoms (2 * A) t)
          (g := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
            continuumRieszPrimitive t)
          ((hsecond.mul (fixedRieszAtoms_continuous (2 * A))).intervalIntegrable _ _)
          ((hsecond.mul hq).intervalIntegrable _ _), continuum_curvature_integral A hA]
  have hsum : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * fixedRieszAtoms (2 * A) t) =
      ∑ n ∈ primePowerInventory (2 * A), vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n) := by
    unfold fixedRieszAtoms
    simp_rw [Finset.mul_sum]
    rw [intervalIntegral.integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro n hn
      have hb := mangoldtInventory_log_bounds (2 * A) n hn
      have he : (fun t : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          (vonMangoldt n / Real.sqrt n * max (t - Real.log n) 0)) =
          fun t => (vonMangoldt n / Real.sqrt n) *
            (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
              max (t - Real.log n) 0) := by
        funext t
        ring
      rw [he, intervalIntegral.integral_const_mul, ramp_integral A (Real.log n) hA hb.1 hb.2]
    · intro n _
      exact (hsecond.mul (continuous_const.mul
        ((continuous_id.sub continuous_const).max continuous_const))).intervalIntegrable _ _
  have hr : mertensResidual A =
      ∑ n ∈ primePowerInventory (2 * A), vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n) := by
    rw [mertensResidual_eq_closedPrimeMoment A hA]
    unfold closedPrimeMoment
    apply Finset.sum_congr rfl
    intro n hn
    have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
    rw [exponentialTest_log _ _ hn0]
    ring
  rw [hsum, ← hr] at hfixed
  linarith

/-- The actual correlation annihilates every constant center. -/
theorem sourceCorrelation_curvature_integral_eq_zero (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) = 0 := by
  have hp : 0 < A := by linarith
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => correlation_deriv_hasDerivAt A t hp)
    ((correlation_second_continuous A hp).intervalIntegrable 0 (2 * A))
  simpa only [correlation_deriv_at_upper A hp, correlation_deriv_at_zero A hp, sub_zero] using hi

/-- The actual correlation reads a linear center with coefficient exactly one. -/
theorem sourceCorrelation_linear_curvature_integral_eq_one (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) = 1 := by
  have hp : 0 < A := by linarith
  have hd (t : ℝ) : HasDerivAt
      (fun u => u * deriv (sourceCorrelation explicitSecondDerivative A) u -
        sourceCorrelation explicitSecondDerivative A u)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) t := by
    exact (((hasDerivAt_id t).mul (correlation_deriv_hasDerivAt A t hp)).sub
      (correlation_hasDerivAt A t hp)).congr_deriv (by dsimp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (((correlation_second_continuous A hp).mul continuous_id).intervalIntegrable 0 (2 * A))
  simpa only [sourceCorrelation_upper_endpoint A hp, correlation_deriv_at_upper A hp,
    actual_correlation_at_zero A hA, mul_zero, zero_mul, zero_sub, sub_neg_eq_add,
    neg_zero, zero_add] using hi

/-- The quotient profile keeps the source primitive and has continuous compact readouts. -/
theorem centeredRieszProfile_continuousOn (A anchor b : ℝ) :
    ContinuousOn (centeredRieszProfile A anchor b) (Icc 0 (2 * A)) := by
  exact ((mangoldtRieszPrimitive_continuousOn (2 * A)).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

/-- The moving slope is determined by the supplied anchor and the evaluated continuum alone. -/
theorem rieszCenterSlope_eq_anchor_sub_continuous (A anchor : ℝ) (hA : 1 ≤ A) :
    rieszCenterSlope A anchor = anchor / 2 - criticalContinuousMoment A := by
  rw [criticalContinuousMoment_eq_rational hA]
  unfold rieszCenterSlope
  ring

/-- Exact centered source reconstruction, uniformly in the arbitrary constant center. -/
theorem mertensResidual_sub_half_anchor_eq_centered_riesz_work
    (A anchor b : ℝ) (hA : 1 ≤ A) :
    mertensResidual A - anchor / 2 =
      ∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          centeredRieszProfile A anchor b t := by
  have hp : 0 < A := by linarith
  have hsecond := correlation_second_continuous A hp
  have h0B : (0 : ℝ) ≤ 2 * A := by linarith
  have hmain : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        mangoldtRieszPrimitive t) volume 0 (2 * A) :=
    (hsecond.continuousOn.mul
      (mangoldtRieszPrimitive_continuousOn (2 * A))).intervalIntegrable_of_Icc h0B
  have hlinear : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        (rieszCenterSlope A anchor * t)) volume 0 (2 * A) :=
    (hsecond.mul (continuous_const.mul continuous_id)).intervalIntegrable _ _
  have hconstant : IntervalIntegrable
      (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * b)
      volume 0 (2 * A) := (hsecond.mul continuous_const).intervalIntegrable _ _
  have he : (∫ t in 0..2 * A,
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        centeredRieszProfile A anchor b t) =
      (∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * mangoldtRieszPrimitive t) -
      rieszCenterSlope A anchor := by
    unfold centeredRieszProfile
    simp_rw [mul_sub]
    rw [intervalIntegral.integral_sub (hmain.sub hlinear) hconstant,
      intervalIntegral.integral_sub hmain hlinear]
    have hlin : (fun t : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        (rieszCenterSlope A anchor * t)) =
        fun t => rieszCenterSlope A anchor *
          (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t * t) := by
      funext t
      ring
    rw [hlin, intervalIntegral.integral_const_mul, intervalIntegral.integral_mul_const,
      sourceCorrelation_linear_curvature_integral_eq_one A hA,
      sourceCorrelation_curvature_integral_eq_zero A hA]
    ring
  rw [he, mertensResidual_eq_continuous_add_riesz_work A hA,
    criticalContinuousMoment_eq_rational hA]
  unfold rieszCenterSlope
  ring

/-- The actual archimedean zero-frequency anchor specializes the exact reconstruction. -/
theorem mertensResidual_sub_half_archimedean_eq_centered_riesz_work
    (A b : ℝ) (hA : 1 ≤ A) :
    mertensResidual A - archimedeanMultiplier 0 / 2 =
      ∫ t in 0..2 * A,
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          centeredRieszProfile A (archimedeanMultiplier 0) b t :=
  mertensResidual_sub_half_anchor_eq_centered_riesz_work A (archimedeanMultiplier 0) b hA

end FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction
