# Declaration Index — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `230957d42656570828d96ca40669fc094633a4b1` · SHA-256 `6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.GlobalId
import Mathematics.Projects.Mathlib.Profile

/-! # Mathlib declaration index -/

namespace Mathematics.Projects.Mathlib

structure DeclarationIndexEntry where
  declaration : Federation.GlobalDeclarationId
  sourceModule : String
  conceptIds : List ConceptId
  dependencyIds : List Federation.GlobalDeclarationId
  reverseDependencyIds : List Federation.GlobalDeclarationId
  instanceUseIds : List StableId
  simpUseIds : List StableId
  documentationArtifactIds : List StableId
  downstreamProjectIds : List ProjectId
  candidateRelationIds : List StableId
  lineageIds : List StableId
  reflectionEligible : Bool
  entryDigest : Digest
  deriving DecidableEq, Repr

structure DeclarationIndex where
  targetRevisionId : StableId
  entries : List DeclarationIndexEntry
  declarationIdsUnique :
    (entries.map DeclarationIndexEntry.declaration).Nodup
  indexDigest : Digest

end Mathematics.Projects.Mathlib
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c3fcd0f2107907cc80b0989a9422ab8b43a0c0ea728d1ff7f34d9732b2318c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationIndex/Variant6fcb0200f49b468d95b30aefda951e1532a2d5724609a2fbfd0a7e53afbf3fa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
