# Analysis Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57a49f5860ec8823df82f04c2a34dcc2f1094f71` · SHA-256 `9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao `analysis` pedagogical profile -/

namespace Mathematics.Projects.Tao

structure AnalysisProfile where
  base : Projects.ProjectProfile
  textbookChapterArtifacts : List StableId
  localDefinitionIds : List StableId
  mathlibDefinitionIds : List StableId
  bridgeCertificateIds : List StableId
  exerciseObligationIds : List StableId
  pedagogicalCommentArtifactIds : List StableId
  literateDocumentArtifactIds : List StableId
  transitionPointIds : List StableId
  preservePedagogicalDivergence : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4c482df78f1c50b17f7208c4497f6da1cd7b7f5e3e6e42fe7006e6b3241b1d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalysisProfile/Variant9d4fd4bc4139f7a369a5e81bdfbd734f49212502b1bb2777cbc10e791e3dee1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
