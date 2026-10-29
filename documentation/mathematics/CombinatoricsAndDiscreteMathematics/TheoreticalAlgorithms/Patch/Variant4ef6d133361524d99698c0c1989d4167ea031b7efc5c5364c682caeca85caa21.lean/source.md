# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patch.Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75fda582152e119543dc3c9f6d980066e8571529` · SHA-256 `4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Snapshot
import Mathematics.Reflection.Candidate

/-! # Snapshot-bound patches -/

namespace Mathematics.Reflection

inductive PatchOperation
  | add
  | modify
  | delete
  | rename
  deriving DecidableEq, Repr

structure PatchElement where
  operation : PatchOperation
  oldPath : Option String
  newPath : Option String
  preimageDigest : Option Digest
  outputDigest : Option Digest
  deriving DecidableEq, Repr

/-- Patch preimages are bound to one immutable upstream snapshot. -/
structure Patch where
  patchId : StableId
  candidate : Candidate
  baseSnapshot : Ecosystem.ProjectSnapshot
  elements : List PatchElement
  elements_nonempty : elements ≠ []
  target_snapshot_exact :
    candidate.targetSnapshot = baseSnapshot
  patchDigest : Digest

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe5280c96e0bb715e5efd85bdd72f8b2babd21a98da1e7ce2d60f888f742964 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Patch/Variant4ef6d133361524d99698c0c1989d4167ea031b7efc5c5364c682caeca85caa21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
