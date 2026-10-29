# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Serialization.Variant12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `575dfca84f0300c6eedfaec63b145e5e53c58415` · SHA-256 `12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Core

/-!
# Canonical serialization boundary

Actual UTF-8 canonical JSON and hashing are executable operations.  These
structures record the obligations a sound decoder must discharge; they do not
assert correctness of an external serializer merely from matching digests.
-/

namespace MathDiscovery.Extractor

open MathDiscovery

structure CanonicalFileReceipt where
  path : CanonicalPath
  digest : Digest
  sizeBytes : Nat
  deriving DecidableEq, Repr, Inhabited

structure CanonicalPayloadReceipt where
  schemaVersion : Nat
  extractorVersion : Version
  files : Array CanonicalFileReceipt
  payloadDigest : Digest
  deriving DecidableEq, Repr, Inhabited

structure MerkleReceipt where
  files : Array CanonicalFileReceipt
  rootDigest : Digest
  deriving DecidableEq, Repr, Inhabited

namespace CanonicalFileReceipt

def Valid (receipt : CanonicalFileReceipt) : Prop :=
  receipt.path.Valid ∧ receipt.digest.Valid

end CanonicalFileReceipt

namespace CanonicalPayloadReceipt

def Valid (payload : CanonicalPayloadReceipt) : Prop :=
  payload.schemaVersion = 2 ∧
  payload.extractorVersion.value ≠ "" ∧
  payload.payloadDigest.Valid ∧
  (payload.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ payload.files, file.Valid

end CanonicalPayloadReceipt

namespace MerkleReceipt

def Valid (merkle : MerkleReceipt) : Prop :=
  merkle.rootDigest.Valid ∧
  (merkle.files.toList.map (·.path)).Nodup ∧
  ∀ file ∈ merkle.files, file.Valid

end MerkleReceipt

end MathDiscovery.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b603b5a2c015894cdad84506a7c2e6ca0245171f26ceb5d8e1c378966b923312 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Serialization/Variant12cb1186b33dd5427807e86722c43726d17479c78a5bb76b7bc70040fc422832.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
