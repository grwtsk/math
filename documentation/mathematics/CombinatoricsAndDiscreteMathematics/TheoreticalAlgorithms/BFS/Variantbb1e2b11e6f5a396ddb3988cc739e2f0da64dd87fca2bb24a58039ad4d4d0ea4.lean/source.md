# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BFS.Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c133362f01742340990371c210bedc99c726304` · SHA-256 `bb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Conditional BFS shortest-shell certificate

The theorem projects shortestness from explicit complete-shell and candidate
path evidence.  Concrete neighbor completeness remains external evidence.
-/

namespace Mathematics.GraphAccess

structure BfsPathCertificate (Node : Type u) where
  source : Node
  target : Node
  distance : Nat
  path : List Node
  shellComplete : Prop
  edgeValidity : Prop
  shellCompleteEvidence : shellComplete
  edgeValidityEvidence : edgeValidity
  candidateDistances : List Nat
  firstTargetShellShortest :
    ∀ candidateDistance,
      candidateDistance ∈ candidateDistances →
      distance ≤ candidateDistance

theorem bfs_first_target_shell_shortest
    {Node : Type u}
    (certificate : BfsPathCertificate Node)
    (candidateDistance : Nat)
    (candidateRegistered :
      candidateDistance ∈ certificate.candidateDistances) :
    certificate.distance ≤ candidateDistance :=
  certificate.firstTargetShellShortest
    candidateDistance
    candidateRegistered

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f248226341c8834a263d6fcf3a2e0f8396b22b170b6860f4afd9af9f2b9c9556 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BFS/Variantbb1e2b11e6f5a396ddb3988cc739e2f0da64dd87fca2bb24a58039ad4d4d0ea4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
