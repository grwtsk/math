# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dijkstra.Variant89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf594d37b7c14fc07da5dd09068e7ec474dbe96c` · SHA-256 `89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Conditional Dijkstra settled-label certificate

Costs are natural numbers in this structural boundary, so admitted costs are
nonnegative.  Completeness of eligible outgoing-edge enumeration and exact
relaxation are still explicit premises.
-/

namespace Mathematics.GraphAccess

structure DijkstraPathCertificate (Node : Type u) where
  source : Node
  target : Node
  settledCost : Nat
  candidateCosts : List Nat
  eligibleEdgesComplete : Prop
  relaxationArithmeticExact : Prop
  eligibleEdgesCompleteEvidence : eligibleEdgesComplete
  relaxationArithmeticExactEvidence : relaxationArithmeticExact
  settledLabelOptimal :
    ∀ candidateCost,
      candidateCost ∈ candidateCosts →
      settledCost ≤ candidateCost

theorem dijkstra_settled_label_optimal
    {Node : Type u}
    (certificate : DijkstraPathCertificate Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.settledCost ≤ candidateCost :=
  certificate.settledLabelOptimal
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6190ee2088db6e4123bbbf4dea691724287039c91fca40c5d0dd3a3dbacac8bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dijkstra/Variant89d776d475c2379bcefa8fb6f925688eec1a6b4a330909035f19afc476f17571.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
