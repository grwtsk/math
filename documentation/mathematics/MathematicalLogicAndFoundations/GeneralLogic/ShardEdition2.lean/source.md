# Shard Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70bba7b0070964a1586768ebb7c9e8190f5086c5` · SHA-256 `ff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Extractor.Completeness

/-!
# Content-addressed per-module extraction shards
-/

namespace Mathematics.Extractor

open Mathematics

structure ModuleShard where
  module : ModuleRecord
  declarations : Array DeclarationRecord
  expressions : Array ExpressionRecord
  dependencies : Array DependencyEdge
  generationRelations : Array GenerationRelation
  attributes : Array AttributeRecord
  sources : Array DeclarationSource
  trustClosures : Array TrustClosure
  diagnostics : Array ExtractionDiagnostic
  oleanDigest : Digest
  sourceDigest : Option Digest
  adapterVersion : Version
  configurationDigest : Digest
  shardDigest : Digest
  deriving DecidableEq, Repr, Inhabited

/-- Shards are reusable only under exact content-address equality. -/
def ModuleShard.ReusableWith (left right : ModuleShard) : Prop :=
  left.shardDigest = right.shardDigest

end Mathematics.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7b7dee892de0b7763d44f3725efd644d1f02520e650aeb9e32c3dfcdd12aa6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shard/Variantff201f968755c05467feb67a46186d347b00e0bf47df8785293f73701f4f5f9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
