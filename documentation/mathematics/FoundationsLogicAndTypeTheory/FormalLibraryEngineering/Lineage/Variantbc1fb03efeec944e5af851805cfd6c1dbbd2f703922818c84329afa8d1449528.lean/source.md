# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lineage.Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5c829e7a076f234efb5f42e3271815911860e19` · SHA-256 `bc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.GlobalId

/-! # Declaration lineage -/

namespace Mathematics.Federation

inductive LineageRelation
  | unchanged
  | renamed
  | moved
  | generalized
  | specialized
  | split
  | merged
  | deleted
  deriving DecidableEq, Repr

/-- Lineage records evolution without identifying different declarations. -/
structure DeclarationLineageEdge where
  source : GlobalDeclarationId
  target : GlobalDeclarationId
  relation : LineageRelation
  evidenceDigest : Digest
  authority : String
  deriving DecidableEq, Repr

end Mathematics.Federation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e28f2589752bf9ba630d5d3afd91a789d1306c647227360b59c3dbf4c44ae68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lineage/Variantbc1fb03efeec944e5af851805cfd6c1dbbd2f703922818c84329afa8d1449528.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
