# Path Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3637533d0fa3ea71265337c449161a15c4fe339f` · SHA-256 `4e63d5963fd7104c967aeaa75713974e85435d4bf4950600edb25b4744d3eb8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Exact.BFS
import Mathematics.GraphAccess.Exact.Dijkstra
import Mathematics.GraphAccess.Exact.AStar

/-!
# Independent path-certificate verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentPathVerification where
  constructorRef : String
  verifierRef : String
  independence : Prop
  accepted : Prop
  independenceEvidence : independence
  acceptedEvidence : accepted

theorem independently_verified_path_is_accepted
    (verification : IndependentPathVerification) :
    verification.accepted :=
  verification.acceptedEvidence

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c5147e1727f133ce9773a874ead2bae351e65cc803b391a7a050cdd434dc5cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PathCertificate/Variant4e63d5963fd7104c967aeaa75713974e85435d4bf4950600edb25b4744d3eb8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
