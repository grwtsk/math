# Serialization Canonical Index Serializer — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f41a4a7f9450f32b285299efc9c7e70ffb8a2d97` · SHA-256 `38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Index.Query

/-!
# Deterministic index serialization boundary

The serializer is an explicit capability.  Determinism means identical typed
input yields identical bytes; it does not make an ordinary digest a semantic
equivalence proof.
-/

namespace Surface.ContinuousAssurance

/--
An explicit normalization and byte/digest boundary.  `digest` computes an
opaque identifier from bytes; no field interprets digest equality as semantic
equivalence of index records.
-/
structure CanonicalIndexSerializer where
  normalize : CanonicalIndex → CanonicalIndex
  encode : CanonicalIndex → ByteArray
  digest : ByteArray → EvidenceDigest
  normalized : CanonicalIndex → Prop
  normalize_normalized : ∀ index, normalized (normalize index)
  deterministic : ∀ {left right}, left = right → encode left = encode right

/-- The serializer's determinism law is available without interpreting bytes. -/
theorem CanonicalIndexSerializer.encode_deterministic
    (serializer : CanonicalIndexSerializer)
    {left right : CanonicalIndex}
    (same : left = right) :
    serializer.encode left = serializer.encode right :=
  serializer.deterministic same

/--
Certificate for the complete normalization-to-digest representation chain.
The source index, normalized index, bytes, and opaque root digest are all
retained.  This is representation evidence only.
-/
structure SerializedCanonicalIndex
    (serializer : CanonicalIndexSerializer)
    (source : CanonicalIndex) where
  normalizedIndex : CanonicalIndex
  normalization_spec : normalizedIndex = serializer.normalize source
  normalized_spec : serializer.normalized normalizedIndex
  bytes : ByteArray
  bytes_spec : bytes = serializer.encode normalizedIndex
  rootDigest : EvidenceDigest
  digest_spec : rootDigest = serializer.digest bytes
  index_root_matches : normalizedIndex.rootDigest = rootDigest

/-- A serialized certificate exposes the exact normalized bytes it digests. -/
theorem SerializedCanonicalIndex.representation_chain
    {serializer : CanonicalIndexSerializer}
    {source : CanonicalIndex}
    (certificate : SerializedCanonicalIndex serializer source) :
    certificate.normalizedIndex = serializer.normalize source ∧
      serializer.normalized certificate.normalizedIndex ∧
      certificate.bytes = serializer.encode certificate.normalizedIndex ∧
      certificate.rootDigest = serializer.digest certificate.bytes ∧
      certificate.normalizedIndex.rootDigest = certificate.rootDigest :=
  ⟨certificate.normalization_spec,
    certificate.normalized_spec,
    certificate.bytes_spec,
    certificate.digest_spec,
    certificate.index_root_matches⟩

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cd450fbfc94f43302b24f5c201d4a8b8062dbd159ac77ef67585369bcd4d9d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Serialization/Variant38ef97426a7032da8ced0962f9400efc99602c43c339b07c1698cbd12bc155a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
