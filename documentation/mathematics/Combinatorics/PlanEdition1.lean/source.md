# Plan Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6eeeccad976925a6eb836b7846027b9808f22aa` · SHA-256 `887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Refactor.Partition

/-! # Filesystem rewrite plans -/

namespace Mathematics.Refactor

open Mathematics

inductive FileOperationKind
  | create
  | replace
  | remove
  | preserve
  deriving DecidableEq, Repr, Inhabited

structure FileOperation where
  kind : FileOperationKind
  sourcePath : Option String
  targetPath : String
  baselineDigest : Option Digest
  candidateDigest : Option Digest
  deriving DecidableEq, Repr

structure Plan where
  id : RefactorPlanId
  sessionId : RefactorSessionId
  profile : Profile
  baselineSourceDigest : Digest
  analyzerDigest : Digest
  featureProfileDigest : Digest
  learnedProfileDigest : Option Digest
  partition : Partition
  operations : Array FileOperation
  expectedModuleGraphDigest : Digest
  planDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Refactor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4ae1d39c0d6ac971248a8b9386d306be8f2d81bd39f121df40ddafe553e0333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Plan/Variant887d22c002c3b726ac087b3f78eafe96b43604cbe2c235d1ba5e84236d3f9071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
