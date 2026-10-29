# Neighborhood Proof Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1c9b08a085d3948ce6d8bc24c48b2484b1b652b` · SHA-256 `c381fd6de87c233b147b94364ebd648127e374f1a8951a86628d132a0c5b0097`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousThetaPhiSignedJetDetTest.Variant09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousThetaPhiSignedJetDetTest.Variant09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481","mathematical_subject":"Topology.GeneralTopology","original_sha256":"09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/09/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481--NeighborhoodProof.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiInfiniteDerivativeTape
import Mathlib.Topology.Instances.Matrix


namespace GRWTSK.Topology.GeneralTopology.ContinuousThetaPhiSignedJetDetTest.Variant09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open scoped Topology

/-- The signed determinant of ordinary source derivatives is continuous at
all ranks, independently of any sign claim. -/
theorem continuous_thetaPhi_signedJetDet_test (k : ℕ) :
    Continuous (fun t : ℝ => signedJetDet k (fun n => thetaPhiDerivativeTapeValue n t)) := by
  unfold signedJetDet
  refine continuous_const.mul (Continuous.matrix_det ?_)
  apply continuous_matrix
  intro i j
  exact continuous_iff_continuousAt.mpr fun t =>
    (hasDerivAt_thetaPhiDerivativeTapeValue (i.val + j.val) t).continuousAt

example (hneg : signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n 0) < 0) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ t : ℝ, |t| < ε →
      signedJetDet 5 (fun n => thetaPhiDerivativeTapeValue n t) < 0 := by
  have hnhds := (continuous_thetaPhi_signedJetDet_test 5).continuousAt.eventually_lt
    continuousAt_const hneg
  obtain ⟨ε, hε, he⟩ := Metric.eventually_nhds_iff.mp hnhds
  refine ⟨ε, hε, fun t ht => he ?_⟩
  simpa [Real.dist_eq] using ht

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69c9f6f432085457a8744922005b44ee221de8ffbb0b4152076fa82887d4e8d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/09bdd1cd0a91db48a99f7a22ee078ae0e8a7aff2b5f55bb0dcc989624b58e481NeighborhoodProo/Variant442c9f5cdbb9d41998f50cd2cc799c56f4ecb9be8e9c35e0f6daaa1a652d1376.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
