# Heuristic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `523dbb4426ae066b8ed172dc91c6298c102d1dc2` · SHA-256 `4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Certified lower-bound heuristic profile
-/

namespace Mathematics.GraphAccess

structure CertifiedHeuristic (Node : Type u) where
  potential : Node → Nat
  trueRemainingCost : Node → Nat
  eligibleEdge : Node → Node → Prop
  edgeCost : Node → Node → Nat
  admissible :
    ∀ node, potential node ≤ trueRemainingCost node
  consistent :
    ∀ source target,
      eligibleEdge source target →
      potential source ≤ edgeCost source target + potential target

theorem admitted_heuristic_is_lower_bound
    {Node : Type u}
    (heuristic : CertifiedHeuristic Node)
    (node : Node) :
    heuristic.potential node ≤ heuristic.trueRemainingCost node :=
  heuristic.admissible node

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0433f709c67584884b6173de0fdfb40decb85bfb937a714104b9ba0522ea0d18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Heuristic/Variant4bc6b39f84bb45cd7bd2c26c850dbf08f8518f4aed00a8aed0e41b5c8c3f0f74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
