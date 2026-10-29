# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Receipt.Variant369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9a2d14c37693003cf0efb68d69c6400c0695a6f` · SHA-256 `369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-! # Frozen external embedding receipts and exact dyadic factors -/

namespace Mathematics.Embedding

open Mathematics

structure Receipt where
  modelId : StableId
  modelRevision : String
  modelDigest : Digest
  tokenizerId : StableId
  tokenizerDigest : Digest
  inputTemplateDigest : Digest
  trainingOrProviderProvenance : String
  inputSemanticDigest : Digest
  entityCount : Nat
  dimension : Nat
  numericEncoding : String
  normalization : String
  quantizationBits : Nat
  inferenceImplementation : String
  seed : Option Nat
  outputVectorDigest : Digest
  licenseId : String
  deriving DecidableEq

namespace Receipt

def Valid (receipt : Receipt) : Prop :=
  receipt.modelId.Valid ∧
  receipt.modelRevision ≠ "" ∧
  receipt.modelDigest.Valid ∧
  receipt.tokenizerId.Valid ∧
  receipt.tokenizerDigest.Valid ∧
  receipt.inputTemplateDigest.Valid ∧
  receipt.trainingOrProviderProvenance ≠ "" ∧
  receipt.inputSemanticDigest.Valid ∧
  receipt.entityCount > 0 ∧
  receipt.dimension > 0 ∧
  receipt.numericEncoding ≠ "" ∧
  receipt.normalization ≠ "" ∧
  receipt.quantizationBits > 0 ∧
  receipt.inferenceImplementation ≠ "" ∧
  receipt.outputVectorDigest.Valid ∧
  receipt.licenseId ≠ ""

end Receipt

structure DyadicVector where
  entityId : EntityId
  numerators : List Int
  denominatorBits : Nat
  sourceFloatDigest : Digest
  vectorDigest : Digest
  deriving DecidableEq

namespace DyadicVector

def ValidFor (receipt : Receipt) (vector : DyadicVector) : Prop :=
  vector.entityId.Valid ∧
  vector.numerators.length = receipt.dimension ∧
  vector.denominatorBits = receipt.quantizationBits ∧
  vector.sourceFloatDigest.Valid ∧
  vector.vectorDigest.Valid

end DyadicVector

structure Snapshot where
  receipt : Receipt
  vectors : List DyadicVector
  snapshotDigest : Digest
  advisoryOnly : Bool := true
  deriving DecidableEq

namespace Snapshot

def Valid (snapshot : Snapshot) : Prop :=
  snapshot.receipt.Valid ∧
  snapshot.vectors.length = snapshot.receipt.entityCount ∧
  (snapshot.vectors.map (·.entityId)).Nodup ∧
  (∀ vector ∈ snapshot.vectors, vector.ValidFor snapshot.receipt) ∧
  snapshot.snapshotDigest.Valid ∧
  snapshot.advisoryOnly = true

end Snapshot

end Mathematics.Embedding
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b401c224ec1c25fac8301d9acdeda53d039dc985ef45b6c3b62b982444cf21b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Receipt/Variant369e656931a7d78628551679978bc5056e7405d701c70af65a029713074c7b66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
