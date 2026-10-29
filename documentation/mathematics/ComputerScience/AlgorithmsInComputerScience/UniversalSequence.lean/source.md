# Universal Sequence — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8987e2837111961e2926688e3bdd19280bbcd6a5` · SHA-256 `de633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Declared-class universal exploration

Coverage is conditional on the supplied graph-class membership and port-label
certificate.  No cross-class universality is asserted.
-/

namespace Mathematics.GraphAccess

structure UniversalSequenceCertificate (Node : Type u) where
  graphClassRef : String
  sequenceRevisionRef : String
  declaredNodes : List Node
  visitedNodes : List Node
  graphClassMembership : Prop
  portLabelsComplete : Prop
  graphClassMembershipEvidence : graphClassMembership
  portLabelsCompleteEvidence : portLabelsComplete
  covers :
    ∀ node, node ∈ declaredNodes → node ∈ visitedNodes

theorem universal_sequence_covers_declared_class
    {Node : Type u}
    (certificate : UniversalSequenceCertificate Node)
    (node : Node)
    (declared : node ∈ certificate.declaredNodes) :
    node ∈ certificate.visitedNodes :=
  certificate.covers node declared

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=037a9fa1e74de0633fd142ad4610401221e88529cd08cd9608ae40c6cae67a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UniversalSequence/Variantde633d032e7683689c73847527285dfc1fe98453d79ba7dbd46c997e4df41dad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
