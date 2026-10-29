-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.RealSource.Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.RealSource.Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/future-readout/private29-forward-norm-source-preparation-v1/SourceMangoldtForwardNorm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Finite norm budget of the actual forward Mangoldt profile

Research candidate; preparation is UNCOMPILED and has zero kernel credit.
The actual normalized source, negative log shifts, and open-lower/closed-upper
inventory remain literal. All Vaughan prerequisite acceptance gates remain separate.
These norm envelopes do not assert scale continuity or the signed joint bound.

AI attribution: prepared with OpenAI Codex; native verification is a later gate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.RealSource.Variant308c2f21a4ea67e7c2b2ed10941c05725d8b74e4dd2bd9b10852df86aff9529d

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceMangoldtForwardNorm

open MeasureTheory Filter Set ArithmeticFunction
open scoped BigOperators InnerProductSpace
open SourcePairing SourceHankelReflection SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization EstimateVaughanSource
open EstimateSourceMobiusKernel EstimateMertensAbel

private def realSource (A : ℝ) (hp : 0 < A) : Lp ℝ 2 (volume : Measure ℝ) :=
  reflectedL2 A hp {1} (fun _ => 1)

private theorem realSource_coe (A : ℝ) (hp : 0 < A) :
    realSource A hp =ᵐ[volume] normalizedTest explicitSecondDerivative A := by
  filter_upwards [(reflectedProfile_memLp hp {1} (fun _ => 1)).coeFn_toLp] with x hx
  change ((reflectedProfile_memLp hp {1} (fun _ => 1)).toLp _) x = _
  rw [hx]
  simp [reflectedProfile]

private theorem realSource_norm {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) :
    ‖realSource A hp‖ = 1 := by
  have hs : ‖realSource A hp‖ ^ 2 = 1 := by
    change ‖reflectedL2 A hp {1} (fun _ => 1)‖ ^ 2 = 1
    rw [reflectedL2_norm_sq_eq_integral]
    simpa only [reflectedProfile, Finset.sum_singleton, Nat.cast_one,
      Real.log_one, add_zero, one_mul] using normalized_square_integral A hA
  nlinarith [norm_nonneg (realSource A hp)]

private def shift (A : ℝ) (hp : 0 < A) (u : ℝ) : Lp ℝ 2 (volume : Measure ℝ) :=
  Lp.compMeasurePreserving (fun x : ℝ => x + u)
    (measurePreserving_add_right volume u) (realSource A hp)

private theorem shift_coe (A : ℝ) (hp : 0 < A) (u : ℝ) :
    shift A hp u =ᵐ[volume] fun x => normalizedTest explicitSecondDerivative A (x + u) := by
  filter_upwards [Lp.coeFn_compMeasurePreserving (realSource A hp)
    (measurePreserving_add_right volume u),
    (measurePreserving_add_right volume u).quasiMeasurePreserving.ae
      (realSource_coe A hp)] with x hx hq
  exact hx.trans hq

private theorem shift_norm {A : ℝ} (hA : 1 ≤ A) (hp : 0 < A) (u : ℝ) :
    ‖shift A hp u‖ = 1 := by
  simpa only [shift, Lp.norm_compMeasurePreserving] using realSource_norm hA hp

private theorem mangoldtL2_eq_sum (A : ℝ) (hA : 1 ≤ A) (hp : 0 < A) :
    mangoldtL2 A hA = ∑ m ∈ longInventory A,
      (vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ)) := by
  classical
  let c := fun m : ℕ => vonMangoldt m / Real.sqrt (m : ℝ)
  have hc (m : ℕ) : c m • shift A hp (-Real.log (m : ℝ)) =ᵐ[volume]
      fun x => c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ)) := by
    filter_upwards [Lp.coeFn_smul (c m) (shift A hp (-Real.log (m : ℝ))),
      shift_coe A hp (-Real.log (m : ℝ))] with x hs hq
    rw [hs]
    change c m * ((shift A hp (-Real.log (m : ℝ))) x) = _
    rw [hq]
    simp only [sub_eq_add_neg]
  apply Lp.ext
  filter_upwards [(forwardProfile_memLp hp (longInventory A) c).coeFn_toLp,
    Lp.coeFn_fun_finsetSum (longInventory A)
      (fun m => c m • shift A hp (-Real.log (m : ℝ))),
    ((longInventory A).eventually_all).2 (fun m _ => hc m)] with x hf hs hall
  change ((forwardProfile_memLp hp (longInventory A) c).toLp _) x = _
  rw [hf, hs]
  exact Finset.sum_congr rfl (fun m hm => (hall m hm).symm)

private theorem inverse_sqrt_step (n : ℕ) :
    1 / Real.sqrt ((n + 1 : ℕ) : ℝ) ≤
      2 * (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ)) := by
  have hp : 0 < Real.sqrt ((n + 1 : ℕ) : ℝ) := Real.sqrt_pos.2 (by positivity)
  have h0 := Real.sq_sqrt (show 0 ≤ (n : ℝ) by positivity)
  have h1 := Real.sq_sqrt (show 0 ≤ ((n + 1 : ℕ) : ℝ) by positivity)
  simp only [Nat.cast_add, Nat.cast_one] at h1
  apply (div_le_iff₀ hp).2
  nlinarith [sq_nonneg (Real.sqrt ((n + 1 : ℕ) : ℝ) - Real.sqrt (n : ℝ))]

private theorem inverse_sqrt_sum_le (U N : ℕ) (hUN : U ≤ N) :
    (∑ m ∈ Finset.Ioc U N, 1 / Real.sqrt (m : ℝ)) ≤
      2 * (Real.sqrt (N : ℝ) - Real.sqrt (U : ℝ)) := by
  induction N, hUN using Nat.le_induction with
  | base => simp
  | succ N hUN ih =>
    rw [Finset.sum_Ioc_succ_top hUN]
    have hs := inverse_sqrt_step N
    linarith

private theorem sourceKernelCutoff_le_exp (A : ℝ) :
    (sourceKernelCutoff A : ℝ) ≤ Real.exp (2 * A) := by
  simpa only [sourceKernelCutoff, sourceUpper] using
    Nat.floor_le (Real.exp_pos (2 * A)).le

private theorem actual_mangoldt_le_two_scale (A : ℝ) (m : ℕ)
    (hm : m ∈ longInventory A) : vonMangoldt m ≤ 2 * A := by
  have hmpos : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
  have hmN : m ≤ sourceKernelCutoff A := (Finset.mem_Ioc.mp hm).2
  have hmexp : (m : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast hmN : (m : ℝ) ≤ (sourceKernelCutoff A : ℝ)).trans
      (sourceKernelCutoff_le_exp A)
  exact vonMangoldt_le_log.trans (by
    simpa only [Real.log_exp] using Real.log_le_log hmpos hmexp)

/-- The actual finite long row retains its exact square-root endpoint difference. -/
theorem mangoldtL2_norm_le_finite_sqrt_cutoff_diff (A : ℝ) (hA : 1 ≤ A) :
    ‖FormalResearch.RiemannHypothesis.SourceVaughanHankel.mangoldtL2 A hA‖ ≤
      4 * A * (Real.sqrt (sourceKernelCutoff A : ℝ) -
        Real.sqrt (vaughanCutoff A : ℝ)) := by
  classical
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  have hF : mangoldtL2 A hA = ∑ m ∈ Finset.Ioc U N,
      (vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ)) :=
    mangoldtL2_eq_sum A hA hp
  calc
    ‖mangoldtL2 A hA‖ ≤ ∑ m ∈ Finset.Ioc U N,
        ‖(vonMangoldt m / Real.sqrt (m : ℝ)) • shift A hp (-Real.log (m : ℝ))‖ := by
      rw [hF]
      exact norm_sum_le _ _
    _ = ∑ m ∈ Finset.Ioc U N, vonMangoldt m / Real.sqrt (m : ℝ) := by
      apply Finset.sum_congr rfl
      intro m _
      rw [norm_smul, Real.norm_eq_abs,
        abs_of_nonneg (div_nonneg vonMangoldt_nonneg (Real.sqrt_nonneg _)),
        shift_norm hA hp, mul_one]
    _ ≤ 2 * A * (∑ m ∈ Finset.Ioc U N, 1 / Real.sqrt (m : ℝ)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro m hm
      have hl := actual_mangoldt_le_two_scale A m hm
      have hc := mul_le_mul_of_nonneg_right hl
        (by positivity : 0 ≤ 1 / Real.sqrt (m : ℝ))
      simpa only [div_eq_mul_inv, one_mul] using hc
    _ ≤ 2 * A * (2 * (Real.sqrt (N : ℝ) - Real.sqrt (U : ℝ))) :=
      mul_le_mul_of_nonneg_left (inverse_sqrt_sum_le U N hUN) (by linarith)
    _ = 4 * A * (Real.sqrt (sourceKernelCutoff A : ℝ) -
        Real.sqrt (vaughanCutoff A : ℝ)) := by ring

/-- A source-specific envelope; this is not a bound on the signed joint residual. -/
theorem mangoldtL2_norm_le_four_mul_scale_exp (A : ℝ) (hA : 1 ≤ A) :
    ‖FormalResearch.RiemannHypothesis.SourceVaughanHankel.mangoldtL2 A hA‖ ≤
      4 * A * Real.exp A := by
  have hs : Real.sqrt (sourceKernelCutoff A : ℝ) ≤ Real.exp A := by
    calc
      _ ≤ Real.sqrt (Real.exp (2 * A)) :=
        Real.sqrt_le_sqrt (sourceKernelCutoff_le_exp A)
      _ = Real.exp A := by
        rw [← Real.exp_half]
        congr 1
        ring
  exact (mangoldtL2_norm_le_finite_sqrt_cutoff_diff A hA).trans
    (mul_le_mul_of_nonneg_left
      (by linarith [Real.sqrt_nonneg (vaughanCutoff A : ℝ)]) (by linarith))

end FormalResearch.RiemannHypothesis.SourceMangoldtForwardNorm
