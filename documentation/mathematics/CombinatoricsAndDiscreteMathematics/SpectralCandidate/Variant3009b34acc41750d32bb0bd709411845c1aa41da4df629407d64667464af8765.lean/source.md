# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralCandidate.Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd06574b7e96e98b798ba40b83635216df32f9e` · SHA-256 `fa880237f4166f98efc8eee38b0ee86d6eccca49526d153a6704bb33b4e586f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EigenvalueCluster.Variant1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EigenvalueCluster.Variant1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/SpectralCandidate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Completeness

/-!
# Proposal-only spectral candidates

Model self-adjointness can place model parameters on the model critical line.
It cannot construct an analytic zero certificate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EigenvalueCluster.Variant1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a

namespace Mathematics.RHIsolation

structure EigenvalueCluster where
  center : ℝ
  radius : ℝ
  radius_nonneg : 0 ≤ radius

structure SpectralCandidate where
  id : SpectralCandidateId
  spectralCut : SpectralCutId
  eigenCluster : EigenvalueCluster
  multiplicity : Nat
  multiplicity_pos : 0 < multiplicity
  ordinateInterval : RealInterval
  perturbationRadius : ℝ
  perturbationRadius_nonneg :
    0 ≤ perturbationRadius
  invariantLawCertificate :
    CertificateDigest
  selfAdjointnessCertificate :
    CertificateDigest

def SpectralCandidate.modelRegion
    (candidate : SpectralCandidate) :
    Set ℂ :=
  {z |
    z.re = (1 : ℝ) / 2 ∧
      candidate.ordinateInterval.Contains z.im}

/--
Analytic-zero authority is deliberately uninhabited for a bare proposal.
-/
def CarriesAnalyticZeroAuthority
    (_candidate : SpectralCandidate) : Prop :=
  False

theorem spectralCandidate_has_no_analyticAuthority
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  id

theorem spectral_candidate_has_no_analytic_zero_field
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

structure SelfAdjointSpectralCut where
  id : SpectralCutId
  Candidate : Type
  candidateFintype : Fintype Candidate
  candidateDecEq : DecidableEq Candidate
  candidate : Candidate → SpectralCandidate
  modelParameter : Candidate → ℂ
  modelParameter_mem :
    ∀ index,
      modelParameter index ∈
        (candidate index).modelRegion
  selfAdjoint : Prop
  selfAdjointProof : selfAdjoint

attribute [instance]
  SelfAdjointSpectralCut.candidateFintype
  SelfAdjointSpectralCut.candidateDecEq

theorem selfAdjoint_modelCandidates_on_modelLine
    (model : SelfAdjointSpectralCut)
    (index : model.Candidate) :
    (model.modelParameter index).re =
      (1 : ℝ) / 2 :=
  (model.modelParameter_mem index).1

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb32b57a978fe62a7471f9cecdc45fe693a437a5613347f6117037d686c6871b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
