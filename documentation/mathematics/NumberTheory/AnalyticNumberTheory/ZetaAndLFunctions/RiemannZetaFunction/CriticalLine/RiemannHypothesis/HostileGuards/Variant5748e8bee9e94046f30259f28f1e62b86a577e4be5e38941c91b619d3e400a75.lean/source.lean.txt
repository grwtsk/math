-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/regent-paired-tail-prime-block/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedTailPrimeBlock.Variant8a470119ae93bdb01e070a1c0c7ebba01ee322792280e6b06fddeafe2d04362b

set_option autoImplicit false
noncomputable section
namespace IndependentActualPrimeBlockGuards

open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedTailPrimeBlock
open SourcePairedPrimeAverages SourceFirstPrimeAbel SourceDiagonalMainTerm WeightedPrimeAbel

example {A C : ℝ} (hA : 1 ≤ A) :
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C ≤
      primeLogSum (2 * A) (pairedTailTest A)) ↔
    (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C -
      earlyPrimeBlock A ≤ complementaryPrimeBlocks A) := by
  rw [primeSum_eq_early_add_complement hA]
  constructor <;> intro h <;> linarith

example {A C : ℝ} (hA : 160 ≤ A) (hAC : 320 * C ≤ A)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) : earlyPrimeBlock A < 0 := by
  have hb := earlyPrimeBlock_le hA hAC hC
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by
    have hA0 : 0 < A := by linarith
    positivity
  linarith

example : ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → earlyPrimeBlock A < 0 := by
  obtain ⟨R, hR, h⟩ := earlyPrimeBlock_eventual_bound
  refine ⟨R, hR, ?_⟩
  intro A hRA
  have hA0 : 0 < A := by linarith
  have hp : 0 < (7 / 2560 : ℝ) * A * Real.exp (A / 160) := by positivity
  linarith [h A hRA]

example {A : ℝ} (hA : 160 ≤ A) : pairedTailTest A (A / 80) < 0 := by
  have h := earlyTailTest_le hA (le_refl (A / 80)) (by linarith)
  have hp : 0 < (7 / 16 : ℝ) * Real.exp (A / 160) := by positivity
  linarith

end IndependentActualPrimeBlockGuards
