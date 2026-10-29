# AStar — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37b808974267e299d7763c12cbdf1f8368c3ba31` · SHA-256 `293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Exact.Heuristic

/-!
# Conditional A-star optimality

The certificate deliberately carries the algorithm-specific implication from
admissibility and consistency to optimality.
-/

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e337c3486847713e1e40550d1170c2b82295e35c42d1082f020a4ac3e08905cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AStar/Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
