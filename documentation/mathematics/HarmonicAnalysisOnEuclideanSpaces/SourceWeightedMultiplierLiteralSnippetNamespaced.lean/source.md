# Source Weighted Multiplier Literal Snippet Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3857383cc5170349938fa1001128ea8a41fe1886` · SHA-256 `9265f8287844a3e55f3f996c0566599458306acaab7c3f0f7c2d503a9c25e02f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceUnit.Variant658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.SourceUnit.Variant658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/signed-covariance-core/source-weighted-multiplier-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceUnit.Variant658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b

noncomputable section
open MeasureTheory FourierTransform Complex
open SourceWeightedMultiplierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

example (ε h t : ℝ) : boundaryMultiplier ε h t =
    (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t := rfl

example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  boundaryMultiplier_norm_le ε h t hε hsmall hh

variable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)

example (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume :=
  frequencyProduct_memLp ε h hε hsmall hh f

example : FullH →L[ℂ] FullH := frequencyMultiplier ε h hε hsmall hh

example (f : FullH) : frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyMultiplier_ae ε h hε hsmall hh f

example : sourceMultiplier ε h hε hsmall hh =
    fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH := rfl

example (f : FullH) : (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) :=
  sourceMultiplier_fourier_ae ε h hε hsmall hh f

example (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ :=
  sourceMultiplier_norm_le ε h hε hsmall hh f

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=633d76e608b5a47d7b6aa5d9a74434dad8007bb9f5adc11d4b5de53c9a2c1dad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralSnippet/Variant4ce019784c210fa8fe46fbc849a5ae9efcba6407832ef3e287dbfc54d418bba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
