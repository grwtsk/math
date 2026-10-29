# Capsule — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6a4b4a21ab0a365a936d75b5392b8dea68a8124` · SHA-256 `8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.ProjectIdentity
import Mathematics.Toolchain.LakeGraph

/-! # Project-federated toolchain capsules -/

namespace Mathematics.Toolchain

/--
An exact, project-local reconstruction environment.  Multiple capsules may
carry incompatible Lean or Mathlib revisions without flattening.
-/
structure Capsule where
  capsuleId : StableId
  project : ProjectId
  revisionId : StableId
  lean : LeanVersion
  lakeGraph : LakeGraph
  buildTargetIds : List StableId
  buildTargetIdsUnique : buildTargetIds.Nodup
  platform : String
  toolchainDigest : Digest
  buildOptionsDigest : Digest
  environmentDigest : Digest

/-- Capsule identity is qualified by project and revision. -/
structure CapsuleKey where
  project : ProjectId
  revisionId : StableId
  capsuleId : StableId
  deriving DecidableEq, Repr

def Capsule.key (capsule : Capsule) : CapsuleKey :=
  ⟨capsule.project, capsule.revisionId, capsule.capsuleId⟩

end Mathematics.Toolchain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=090e2ff24b7f056df970ccf073641e5972ef3c5816e7a1112c48c6322da461b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Capsule/Variant8da03620cfc0aa032bfb8cab84d6da219099c8f94714f8251e345fa8e84f0eb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
