-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variantc684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePrimitivePrimeInteraction.Variantc684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/regent-primitive-prime-interaction/FixturesV2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourcePrimitivePrimeInteraction


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitivePrimeInteraction.Variantc684691c8da664a908e74189091b8dc3520f6f40c5614fb3f89d49c02667b201

noncomputable section
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
open FormalResearch.RiemannHypothesis.SourceCausalEnergy

example (A : ℝ) : primitiveCorrelationOne A 0 =
    ∫ x : ℝ, (deriv (normalizedPrimitiveBump A) x) ^ 2 := by
  simp only [primitiveCorrelationOne, sub_zero, pow_two]

example (A : ℝ) : 0 ≤ primitiveCorrelationOne A 0 := by
  unfold primitiveCorrelationOne
  apply integral_nonneg
  intro x
  change (0 : ℝ) ≤ deriv (normalizedPrimitiveBump A) x *
    deriv (normalizedPrimitiveBump A) (x - 0)
  simpa only [sub_zero] using mul_self_nonneg (deriv (normalizedPrimitiveBump A) x)
