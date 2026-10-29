# Core Fold Datum — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da508963d9347321f3b8d36967da96c90c6ba5f2` · SHA-256 `d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Manifest

/-!
# Identity-bound fold data
-/

namespace DAF.Fold

/-- A fold is bound to immutable source and target cells and digests.  The
`reversible` flag is metadata only; inverse evidence is carried separately by
operator-level structures. -/
structure FoldDatum where
  id : Universe.FoldId
  sourceCell : Universe.TerrainCellId
  targetCell : Universe.TerrainCellId
  sourceDigest : Universe.Digest
  targetDigest : Universe.Digest
  reversible : Bool
  deriving DecidableEq, Repr

end DAF.Fold
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5af4d00dba3b643eb418718155a3a30a506b61f5df387ce8380eeb9a895b6ec5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
