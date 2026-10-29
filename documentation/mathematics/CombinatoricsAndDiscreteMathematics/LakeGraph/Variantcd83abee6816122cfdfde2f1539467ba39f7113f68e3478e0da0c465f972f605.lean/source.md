# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.LakeGraph.Variantcd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `861658f479f6a64f97fc686be5fe07ee63c476bb` · SHA-256 `cd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathematics.Toolchain.LeanVersion

/-! # Frozen Lake dependency graphs -/

namespace Mathematics.Toolchain

structure LakePackageNode where
  packageId : StableId
  name : String
  revision : String
  sourceDigest : Digest
  deriving DecidableEq, Repr

structure LakeDependencyEdge where
  consumer : StableId
  dependency : StableId
  deriving DecidableEq, Repr

structure LakeGraph where
  packages : Finset LakePackageNode
  edges : Finset LakeDependencyEdge
  closed :
    ∀ edge ∈ edges,
      (∃ package ∈ packages, package.packageId = edge.consumer) ∧
      (∃ package ∈ packages, package.packageId = edge.dependency)
  graphDigest : Digest

end Mathematics.Toolchain
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7824e59c8f6e55e23af86499f6c46e050c722d23c563f3ba04aff8598cdb8b2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/LakeGraph/Variantcd83abee6816122cfdfde2f1539467ba39f7113f68e3478e0da0c465f972f605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
