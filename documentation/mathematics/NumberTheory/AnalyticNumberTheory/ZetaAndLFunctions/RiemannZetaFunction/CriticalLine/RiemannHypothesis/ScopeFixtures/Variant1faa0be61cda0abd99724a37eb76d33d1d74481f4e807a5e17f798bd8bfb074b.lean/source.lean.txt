-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMinusOneRequired.Variant5c37ee1d2a52b68f4c6532a0fbcc8b86a8a1ff6aa545c7a3794a2db32e1c23b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c37ee1d2a52b68f4c6532a0fbcc8b86a8a1ff6aa545c7a3794a2db32e1c23b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointMinusOneRequired.Variant5c37ee1d2a52b68f4c6532a0fbcc8b86a8a1ff6aa545c7a3794a2db32e1c23b4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5c37ee1d2a52b68f4c6532a0fbcc8b86a8a1ff6aa545c7a3794a2db32e1c23b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle17/regent-critical-adapters/critical-decay-eight/native-replay-v1/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalDecayWork

/-! Private semantic guards, excluded from the eight-declaration work unit. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointMinusOneRequired.Variant5c37ee1d2a52b68f4c6532a0fbcc8b86a8a1ff6aa545c7a3794a2db32e1c23b4

set_option autoImplicit false
set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
open SourceCriticalDecayWork SourcePrimeSquareTailWork SourceDiagonalMainTerm

/-- The actual endpoint contribution cannot be erased from the signed decay work. -/
theorem endpoint_minus_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A ≠ diagonalMainCoefficient A*A := by
  rw [criticalDecayWork_eq_main hA]
  linarith

/-- The actual square tail is flat below its first atom while the independent decay decreases. -/
theorem actual_square_tail_not_decay : squareTail ≠ criticalDecay := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hq : squareTail (Real.log 2) = squarePrefixBaseline :=
    squareTail_below_first_square (by linarith)
  have hh : criticalDecay (Real.log 2) < criticalDecay 0 := by
    simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
    rw [Real.exp_lt_one_iff]
    linarith
  intro he
  have h0 := congrFun he 0
  have hlog := congrFun he (Real.log 2)
  rw [squareTail_at_zero] at h0
  rw [hq] at hlog
  linarith

#check endpoint_minus_one_required
#print axioms endpoint_minus_one_required
#check actual_square_tail_not_decay
#print axioms actual_square_tail_not_decay
end FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
