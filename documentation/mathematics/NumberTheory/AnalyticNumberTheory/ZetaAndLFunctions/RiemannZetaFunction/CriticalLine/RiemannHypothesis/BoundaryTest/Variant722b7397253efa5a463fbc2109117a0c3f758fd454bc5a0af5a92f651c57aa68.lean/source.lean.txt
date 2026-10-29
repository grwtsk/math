-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SmallDivisorBudget.Varianta98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SmallDivisorBudget.Varianta98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/boundary-test.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SmallDivisorBudget


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SmallDivisorBudget.Varianta98dc59b147f492118c93f4e37c1c05bcd63e87df692123fa1b7920a8f240577

open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

example (x : ℝ) (hx : 0 ≤ x) :
    |∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (ArithmeticFunction.moebius n : ℝ)| ≤ x := by
  calc
    _ ≤ ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, |(ArithmeticFunction.moebius n : ℝ)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _n ∈ Finset.Icc 1 ⌊x⌋₊, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n _
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
    _ = (⌊x⌋₊ : ℝ) := by simp
    _ ≤ x := Nat.floor_le hx

example (A : ℝ) (hA : 1 ≤ A) (m : ℝ) (hm : |m| ≤ A ^ 2) :
    |m * SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      8 * A + 4 * Real.sqrt (65 / 3) := by
  have hA0 : 0 < A := by linarith
  have hp : |SourceSampling.sourceSamplingKernel A (A ^ 2)| ≤
      (8 + 4 * Real.sqrt (65 / 3) / A) / A := by
    simpa only [Real.sqrt_sq hA0.le] using
      SourceSampling.sourceSamplingKernel_abs_le A (A ^ 2) hA (sq_pos_of_pos hA0)
  rw [abs_mul]
  calc
    _ ≤ A ^ 2 * ((8 + 4 * Real.sqrt (65 / 3) / A) / A) :=
      mul_le_mul hm hp (abs_nonneg _) (sq_nonneg A)
    _ = _ := by field_simp
