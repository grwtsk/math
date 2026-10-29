# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.HostileGuards.Variant845c00ff4400c68e69be25ce931a6cc733d941a0ea96e5d191c5047d59762756

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cd917c1e91ed6d866fc6a06b3a5b764f16175c2` · SHA-256 `63cd4dc6b17f56ce599283a4a7f0e4020eaaf70e307012a04ac414aa9d5a5ad6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourcePairedTailQuadrature.Variant99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourcePairedTailQuadrature.Variant99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/regent-paired-tail-quadrature/HostileGuards.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourcePairedTailQuadrature.Variant99790bd197d8b972c585ba9c7a30d2842e73a34aabdbffe9cc028e07e5ec289b

set_option autoImplicit false
noncomputable section
namespace IndependentPairedTailQuadratureGuards

open FormalResearch.RiemannHypothesis
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourcePairedContrastResidual SourceDiagonalMainTerm
open WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

example : primeLogError 0 = 0 := by
  simp only [primeLogError, primeLogPrefix_zero, sub_self]

example {A : ℝ} (hA : 1 ≤ A) : negativeSurvival A 0 ≠ 0 := by
  rw [negativeSurvival_at_zero hA]
  norm_num

example {A : ℝ} (hA : 1 ≤ A) : pairedTailTest A (-(2 * A)) ≠ 0 := by
  have h := pairedTailTest_ge_one_left hA (le_refl (-(2 * A)))
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (pairedTailTest A) ≠ pairedErrorContrast A := by
  have h := pairedErrorContrast_eq_prime_quadrature hA
  have hd := pairedTailTest_drift_pos hA
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (pairedTailTest A) + criticalContinuousMoment A -
      negativeTimeMean A = pairedErrorContrast A := by
  have h := pairedErrorContrast_eq_prime_quadrature hA
  linarith

example {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A + primeLogSum (2 * A) (pairedTailTest A) -
      (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A) =
      pairedResidualRemainder A := by
  rw [mertensResidual_eq_paired_quadrature_remainder hA]
  ring

example : MertensResidualTailUpperBound ↔ PairedPrimeQuadratureTailLowerBound :=
  mertens_residual_tail_iff_pairedQuadrature_tail

end IndependentPairedTailQuadratureGuards
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd05e219c36e19eceb3b111a22b19bd36931c870df48a5d80fabbd755d59e6bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/HostileGuards/Variant845c00ff4400c68e69be25ce931a6cc733d941a0ea96e5d191c5047d59762756.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
