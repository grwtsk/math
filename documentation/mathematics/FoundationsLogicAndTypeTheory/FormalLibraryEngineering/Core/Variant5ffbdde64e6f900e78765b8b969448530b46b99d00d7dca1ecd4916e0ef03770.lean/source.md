# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant5ffbdde64e6f900e78765b8b969448530b46b99d00d7dca1ecd4916e0ef03770

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84404d5ce3486e4c0e4ed52bee3dd5d250395e65` · SHA-256 `86dfd52e163a68d075fc19d3ce9729ea2de6d7a50ee942acdf8e4b8e348933ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","mathematical_subject":"Foundations.Unclassified","original_sha256":"d493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fold/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Universe.Manifest

/-!
# Identity-bound fold data
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoldDatum.Variantd493063600be3b428c780f97419b3690e516c69fad618594203d0b83f4dc84b6

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f70ef2667d460a147d712f04af0f5c0ccaf529b42b2164c2ded0cb813490194f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant5ffbdde64e6f900e78765b8b969448530b46b99d00d7dca1ecd4916e0ef03770.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
