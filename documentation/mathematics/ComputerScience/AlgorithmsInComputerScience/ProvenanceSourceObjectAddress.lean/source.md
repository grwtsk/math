# Provenance Source Object Address — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ecb834b4c4cf7b965fb21bd93780709faafed91` · SHA-256 `aef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.License

/-! # Immutable source provenance -/

namespace Mathematics.Ecosystem

/-- A content object is addressed by project, revision, path, and bytes. -/
structure SourceObjectAddress where
  project : ProjectId
  revisionId : StableId
  path : String
  contentDigest : Digest
  deriving DecidableEq, Repr

/-- One append-only historical relation between source revisions. -/
structure RevisionProvenance where
  revision : ProjectRevision
  parentRevisionIds : List StableId
  commitMetadataDigest : Digest
  historyReceiptDigest : Digest
  deriving DecidableEq, Repr

/-- A derivation edge never identifies its endpoints by itself. -/
structure ProvenanceEdge where
  source : SourceObjectAddress
  target : SourceObjectAddress
  relation : String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26128d78bffcddfa4dcecd21838b8454feb2248cedfde3ffed17d106fccdc671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Provenance/Variantaef34d464cd16b326d74debb5e63cfbccb6fd5d7d1667e00bdd1a09499b369a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
