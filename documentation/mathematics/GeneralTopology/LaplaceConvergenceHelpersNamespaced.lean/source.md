# Laplace Convergence Helpers Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abf133fe66c5b06cf5f07d13868484f029f91cf7` · SHA-256 `092ae77432a3bab10b1b28b161e0643e22bf0d80e6df2b4ab002604b8bc9f33c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceLaplaceIntegral.Variantc169d16bb854374ee1d5ed5e3cf581988f69513f824adcaaea445f2c038108e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c169d16bb854374ee1d5ed5e3cf581988f69513f824adcaaea445f2c038108e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceLaplaceIntegral.Variantc169d16bb854374ee1d5ed5e3cf581988f69513f824adcaaea445f2c038108e8","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c169d16bb854374ee1d5ed5e3cf581988f69513f824adcaaea445f2c038108e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/laplace-convergence-helpers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIntegral
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn


namespace GRWTSK.Topology.GeneralTopology.SourceLaplaceIntegral.Variantc169d16bb854374ee1d5ed5e3cf581988f69513f824adcaaea445f2c038108e8

open Set Filter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel
noncomputable section

example (K : Set ℂ) (hK : IsCompact K) (hzero : ∀ s ∈ K, s ≠ 0) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ k ≤ 8, ∀ s ∈ K, ‖laplaceKernel k s‖ ≤ B := by
  have hk (k : Fin 9) : ∃ b : ℝ, ∀ s ∈ K, ‖laplaceKernel k s‖ ≤ b := by
    exact hK.exists_bound_of_continuousOn
      (fun s hs ↦ (laplaceKernel_analytic k s (hzero s hs)).continuousAt.continuousWithinAt)
  choose b hb using hk
  refine ⟨∑ k : Fin 9, |b k|, Finset.sum_nonneg (fun k _ ↦ abs_nonneg _), ?_⟩
  intro k hk s hs
  let j : Fin 9 := ⟨k, by omega⟩
  exact (hb j s hs).trans ((le_abs_self _).trans
    (Finset.single_le_sum (fun i _ ↦ abs_nonneg (b i)) (Finset.mem_univ j)))

example (K : Set ℂ) (hK : IsCompact K) : ∃ M : ℝ, 0 ≤ M ∧ ∀ s ∈ K, ‖s‖ ≤ M := by
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn (f := id) continuousOn_id
  exact ⟨max M 0, le_max_right _ _, fun s hs ↦ (hM s hs).trans (le_max_left _ _)⟩

example {ι : Type*} (f : ι → ℂ → ℂ) (K : Set ℂ) (hK : IsCompact K)
    (hf : ∀ i, ContinuousOn (f i) K) (hKne : K.Nonempty) :
    ∀ i, 0 ≤ sSup ((fun s ↦ ‖f i s‖) '' K) := by
  intro i
  obtain ⟨s, hs⟩ := hKne
  exact (norm_nonneg _).trans (le_csSup (hK.bddAbove_image (hf i).norm)
    (mem_image_of_mem _ hs))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed062f30dd557796dc67dea0299ea073441e92a5e4ba37ef2013a7d29cf08963 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LaplaceConvergenceHelpers/Variantbbcd98d5c3ebb622d800b2df52391bf0d8df802d00904cd373dc59c5a7ebdaaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
