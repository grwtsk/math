-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhaseSignGeometry.Variant65c11d2b1bd3e653c83881fb1a5a2e0e3d0b3cb99c4637f8156a21d8124e3cfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65c11d2b1bd3e653c83881fb1a5a2e0e3d0b3cb99c4637f8156a21d8124e3cfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePhaseSignGeometry.Variant65c11d2b1bd3e653c83881fb1a5a2e0e3d0b3cb99c4637f8156a21d8124e3cfb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"65c11d2b1bd3e653c83881fb1a5a2e0e3d0b3cb99c4637f8156a21d8124e3cfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/acceptance-regent/regent-phase-sign-geometry/HostileGuardsR2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhaseSignGeometry.Variant65c11d2b1bd3e653c83881fb1a5a2e0e3d0b3cb99c4637f8156a21d8124e3cfb

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePhaseSignGeometry SourcePairedTailTest SourcePairedTailQuadrature
open SourcePairedPrimeWork SourcePairedPrimeAverages SourceFirstPrimeAbel

example {A : ℝ} (hA : 1 ≤ A) :
    pairedTailTest A 0 = 0 ∧ pairedTailTest A (2 * A) = 0 ∧
      negativeMass A = positiveMass A + 1 :=
  ⟨pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    negativeMass_eq_positive_add_one hA⟩

example : ∃ u ∈ Ioo 0 2, 0 < pairedTailTest 1 u := by
  simpa using exists_pairedTailTest_pos (A := 1) (by norm_num)

example : pairedTailTest 160 2 < 0 := by
  simpa only [show (160 : ℝ) / 80 = 2 by norm_num] using
    pairedTailTest_early_point_neg (A := 160) (by norm_num)

example : (¬ ∀ u ∈ Icc 0 320, 0 ≤ pairedTailTest 160 u) ∧
    (¬ ∀ u ∈ Icc 0 320, pairedTailTest 160 u ≤ 0) := by
  constructor
  · simpa only [show (2 : ℝ) * 160 = 320 by norm_num] using
      pairedTailTest_not_nonneg_on (A := 160) (by norm_num)
  · simpa only [show (2 : ℝ) * 160 = 320 by norm_num] using
      pairedTailTest_not_nonpos_on (A := 160) (by norm_num)

example {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, pairedTailTest A u) =
      negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_integral_eq hA

example {A : ℝ} (hA : 1 ≤ A) :
    0 < negativeTimeMean A - criticalContinuousMoment A :=
  pairedTailTest_drift_pos hA
