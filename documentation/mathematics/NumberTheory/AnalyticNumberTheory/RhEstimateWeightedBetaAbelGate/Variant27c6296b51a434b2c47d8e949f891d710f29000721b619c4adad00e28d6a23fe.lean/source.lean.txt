-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateWeightedBetaBlockBudget.Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateWeightedBetaBlockBudget.Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"f2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh16-translation-gate/tests/rh_estimate_weighted_beta_abel_gate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaBlockBudget


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateWeightedBetaBlockBudget.Variantf2cb5e0ebd35503d80152b8176f2699006942f708a8bb481002e3222282c0710

set_option autoImplicit false

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateWeightedBetaInventory
open EstimateWeightedBetaVariation EstimateWeightedBetaScale EstimateWeightedBetaBlockBudget
open EstimateVaughanSource EstimateMertensResidual EstimateTypeTwoLogBlocks
open EstimateBetaSourceRecombination

example (A x : ℝ) (m : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hx : 0 < x) :
    deriv (rowWeight A m) x = correlationSlope A (Real.log ((m : ℝ)*x)) /
      (x*Real.sqrt ((m : ℝ)*x)) := rowWeight_deriv A x m (by linarith) hm hx

example (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) :
    weightedCenteredInterval A m U L H =
      -rowWeight A m (H : ℝ) * discrepancyPrefix U L (H : ℝ) +
        ∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x :=
  weightedCenteredInterval_eq_abel A m U L H hA hm hU hUL hLH

example (A : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) :
    innerInventory A m j =
      (Finset.Ioc (blockLower A j) (blockUpper A m j)).filter (fun n ↦ n ≠ m) :=
  innerInventory_eq_filter_interval A m j hA hm

example (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤
      betaPrefixBudget U / Real.sqrt (m : ℝ) * sourceVariationCost A m L H :=
  weightedCenteredInterval_abs_le_scaled_variation A m U L H hA hm hU hUL hLH

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, abelizedCenteredBlock A c) + betaMainLedger A :=
  mertensResidual_eq_abelized_blocks_add_betaMain A hA

example (A K : ℝ) (hA : 1 ≤ A) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    mertensResidual A ≤ betaMainLedger A +
      ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  mertensResidual_le_betaMain_add_budget A K hA hK hSlope

example (A : ℝ) (hA : 64 ≤ A) : unbalancedCell A ∈ logCells A :=
  unbalancedCell_mem_logCells A hA

example (A K : ℝ) (hA : 64 ≤ A) (hK : 1 ≤ K) :
    Real.exp (A/4-1/2) ≤ ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  summed_budget_ge A K hA hK

example (K D R : ℝ) (hK : 1 ≤ K) :
    ∃ A : ℝ, R ≤ A ∧ 64 ≤ A ∧
      D < ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  summed_budget_unbounded K D R hK
