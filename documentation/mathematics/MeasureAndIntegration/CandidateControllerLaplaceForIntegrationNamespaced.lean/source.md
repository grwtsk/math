# Candidate Controller Laplace For Integration Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b3371e4a53b58e1b99252fa5e23438ca96f3f9c` · SHA-256 `d7ed9a37de503e6affda28cdfa5a33e8e4712fd21c1a5f87331523c8dba1f242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ControllerLaplaceIntegrable.Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ControllerLaplaceIntegrable.Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d","mathematical_subject":"Analysis.Integration","original_sha256":"81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/CandidateControllerLaplaceForIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CandidateLaplace

/-! Actual half-line-vector admission and exact full-line Fourier identification. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ControllerLaplaceIntegrable.Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d

set_option autoImplicit false
namespace CandidateControllerLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential
open CandidateRealizationScratch CandidateInverseAdmissionScratch CandidateLaplaceScratch
noncomputable section

/-- The actual half-line Hilbert controller has a genuinely integrable Laplace integrand. -/
theorem controller_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) (Ioi 0) := by
  apply (candidate_boundaryInverse_laplace_integrable X hX ε h hε hh hh1 z hz).congr
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The actual controller's genuine Laplace transform is exactly its prescribed source candidate. -/
theorem controller_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) = candidate X ε h z := by
  rw [← candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz]
  apply integral_congr_ae
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The admitted full-line inverse vector also has a genuine L1 representative. -/
theorem fullBoundaryVector_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x) :=
  (candidate_boundaryInverse_integrable X hX ε h hε hh hh1).congr
    (fullBoundaryVector_ae X hX ε h hε hh hh1).symm

/-- The actual full-line vector has the exact angular candidate as its pointwise Fourier transform. -/
theorem fullBoundaryVector_fourier (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (ξ : ℝ) :
    (𝓕 (fun x : ℝ => fullBoundaryVector X hX ε h hε hh hh1 x)) ξ =
      candidate X ε h (((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [Real.fourier_congr_ae (fullBoundaryVector_ae X hX ε h hε hh hh1)]
  have he := candidate_boundaryInverse_fourier X hX ε h hε hh hh1 (2 * Real.pi * ξ)
  rw [Real.fourier_real_eq_integral_exp_smul]
  rw [← he]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul]
  congr 2
  push_cast
  ring

end
end CandidateControllerLaplaceScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f80fbf22675c9df53fd64ef59088b812c975a9eadf9c71695d7b678653ddadce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant8256c4955fdc51c2a3e003c82756dbd94815ae731a3007950c1f076975046e6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
