-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedPrimeAbel.Variant725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.WeightedPrimeAbel.Variant725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta-next/signed-weighted-abel-endpoints.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedPrimeAbel.Variant725101b05ebcb3ff96b7faf4297141ca200e0f3458569d6a337d61679a92b704

open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open scoped BigOperators Interval

set_option autoImplicit false

-- A prime exactly at the upper endpoint contributes its original atom.
example (F : ℝ → ℝ) :
    primeLogWindow 0 (Real.log 2) F = Real.log 2 / 2 * F (Real.log 2) := by
  rw [primeLogWindow_eq_interval_sum 0 (Real.log 2) (Real.log_nonneg (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2), Finset.filter_singleton]
  simp [Nat.prime_two]

-- A prime exactly at the lower endpoint is excluded, while the next upper prime is included.
example (F : ℝ → ℝ) :
    primeLogWindow (Real.log 2) (Real.log 3) F = Real.log 3 / 3 * F (Real.log 3) := by
  rw [primeLogWindow_eq_interval_sum (Real.log 2) (Real.log 3)
    (Real.log_le_log (by norm_num) (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2),
    Real.exp_log (by norm_num : (0 : ℝ) < 3), Finset.filter_singleton]
  simp [Nat.prime_three]

-- Equal endpoint inventories cancel, even when that endpoint itself is a prime threshold.
example (F : ℝ → ℝ) : primeLogWindow (Real.log 2) (Real.log 2) F = 0 := by
  simp [primeLogWindow]

-- The unit atom has no prime contribution.
example (F : ℝ → ℝ) : primeLogSum 0 F = 0 := by
  norm_num [primeLogSum, primeLogInventory, Finset.filter_singleton]
  simp [Nat.not_prime_one]

-- Constant tests recover the signed difference of the actual closed prefixes.
example (a b : ℝ) :
    primeLogWindow a b (fun _ => (1 : ℝ)) = primeLogPrefix b - primeLogPrefix a := by
  simp [primeLogWindow, primeLogSum, primeLogPrefix_eq_sum]
