-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedPrimeAverages.Variantc1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePairedPrimeAverages.Variantc1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle10/regent-paired-averages/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePairedPrimeAverages.Variantc1d63030f93a7ff205efe67c98b1518305731be2201281548df191f9b81892ee

open FormalResearch.RiemannHypothesis
open SourcePairedPrimeAverages SourcePairedPrimeWork SourceFirstPrimeAbel
open WeightedPrimeAbel SourceDiagonalMainTerm SourceMangoldtStorage

example {A : ℝ} (hA : 1 ≤ A) : 0 < negativeMass A := negativeMass_pos hA

example {A : ℝ} (hA : 1 ≤ A) : positiveMass A - negativeMass A = -1 :=
  mass_difference hA

example {A : ℝ} (hA : 1 ≤ A) :
    criticalSignedWork A = pairedErrorContrast A - negativeErrorMean A :=
  criticalSignedWork_eq_contrast_sub_mean hA

example (θ A : ℝ) : centeredPairedErrorContrast θ A = pairedErrorContrast A :=
  centeredPairedErrorContrast_eq θ A

example {A : ℝ} (hA : 1 ≤ A) (θ : ℝ) :
    centeredPairedErrorContrast θ A - centeredNegativeErrorMean θ A =
      criticalSignedWork A - θ := by
  have h := criticalSignedWork_eq_centered_contrast hA θ
  linarith

example (s t : ℝ) :
    primeLogError s - primeLogError t = primeLogWindow t s (fun _ => 1) - (s-t) :=
  primeError_difference_window s t

example {s t : ℝ} (hs : s < Real.log 2) (ht : t < Real.log 2) (horder : s < t) :
    0 < primeLogError s - primeLogError t := by
  rw [primeError_difference_before_first hs ht]
  linarith

example : primeLogError (Real.log 2 / 2) - primeLogError 0 < 0 :=
  primeError_negative_difference_fixture

example {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeStorageSurplus A = pairedErrorContrast A - negativeErrorMean A -
      criticalContinuousMoment A - diagonalMainCoefficient A * A :=
  firstPrimeStorageSurplus_eq_contrast hA

example : PairedContrastTailLowerBound ↔ CriticalAbelTailLowerBound :=
  pairedContrast_tail_iff_criticalAbel_tail
