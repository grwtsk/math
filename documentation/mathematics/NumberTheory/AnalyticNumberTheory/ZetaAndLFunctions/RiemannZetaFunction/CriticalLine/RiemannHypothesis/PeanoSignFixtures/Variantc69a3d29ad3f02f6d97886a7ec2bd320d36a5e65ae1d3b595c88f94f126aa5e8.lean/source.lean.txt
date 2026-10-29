-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeanoFiveNonnegativeWithNegativeCurvature.Variant66b9679c1458212c39f2a644bfd5e9d8211decf7947dc9b4f85a02c62fdef8ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66b9679c1458212c39f2a644bfd5e9d8211decf7947dc9b4f85a02c62fdef8ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PeanoFiveNonnegativeWithNegativeCurvature.Variant66b9679c1458212c39f2a644bfd5e9d8211decf7947dc9b4f85a02c62fdef8ed","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"66b9679c1458212c39f2a644bfd5e9d8211decf7947dc9b4f85a02c62fdef8ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/root/sign-peano-fixtures-prepared-v1/PeanoSignFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PeanoFiveNonnegativeWithNegativeCurvature.Variant66b9679c1458212c39f2a644bfd5e9d8211decf7947dc9b4f85a02c62fdef8ed

set_option autoImplicit false
noncomputable section
open Set
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
open FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-- At one exact certified scale, positivity of the primitive coexists with negative curvature. -/
theorem peano_five_nonnegative_with_negative_curvature :
    (∀ t : ℝ, t ∈ Icc 0 10 → 0 ≤ sourcePeanoPrimitive 5 t) ∧
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧
      deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  constructor
  · intro t ht
    exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht.1 (by linarith)
  · obtain ⟨t, ht0, ht10, htneg⟩ :=
      sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
    refine ⟨t, ht0, by linarith, ?_⟩
    rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
    exact mul_neg_of_pos_of_neg (Real.exp_pos _) htneg

/-- The same actual primitive has positive center curvature, so neither curvature sign is global. -/
theorem peano_five_curvature_at_zero :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
  simp [sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]

#print axioms peano_five_nonnegative_with_negative_curvature
#print axioms peano_five_curvature_at_zero
