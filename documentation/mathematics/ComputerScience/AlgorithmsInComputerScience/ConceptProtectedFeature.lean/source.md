# Concept Protected Feature — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16881ea1be4d49c17a163d38b3dee4a75e14216a` · SHA-256 `f70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Metaphor

/-! # Context-indexed concept profiles and protected features -/

namespace Mathematics.SemanticTokenization

structure ProtectedFeature where
  featureId : StableId
  valueDigest : Digest
  digest_valid : valueDigest.Valid

structure ProtectedFeatureProfile where
  features : List ProtectedFeature
  feature_ids_nodup :
    (features.map ProtectedFeature.featureId).Nodup

structure ConceptProfile (text : TextCarrier) where
  profileId : StableId
  conceptId : StableId
  context : Context
  coreMeaning : MeaningPayload
  protectedFeatures : ProtectedFeatureProfile
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fea9c14b46d3c3b71baaeae5bc13d87299b948e849123120fc17b4324ada626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Concept/Variantf70118ec998d2d22042f1d5b171ab998e78d31d8ee8ad6060b592e4286464abd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
