# AStar Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30cb9a0b82cf6761b40d779393aec8b445fd8341` · SHA-256 `45fcae48d6b15ea7433fcb637361a015ab1abb191bdf4d30714045ea18955df2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","mathematical_subject":"Computation.DataStructures","original_sha256":"293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exact/AStar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Exact.Heuristic

/-!
# Conditional A-star optimality

The certificate deliberately carries the algorithm-specific implication from
admissibility and consistency to optimality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AStarPathCertificate.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408

namespace Mathematics.GraphAccess

structure AStarPathCertificate (Node : Type u) where
  source : Node
  target : Node
  pathCost : Nat
  candidateCosts : List Nat
  optimalOfAdmissibleConsistent :
    (heuristic : CertifiedHeuristic Node) →
    (∀ candidateCost,
      candidateCost ∈ candidateCosts →
      pathCost ≤ candidateCost)

theorem astar_optimal_of_admissible_consistent
    {Node : Type u}
    (certificate : AStarPathCertificate Node)
    (heuristic : CertifiedHeuristic Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.pathCost ≤ candidateCost :=
  certificate.optimalOfAdmissibleConsistent
    heuristic
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d31643aca8833353e466d1724c5de37e0671f6ce4f93bdb66dd414dbf7d9631a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AStar/Variantd052d656a8a020ea23029affd49c072b5b5de3d6945961676c693b0c0466a418.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
