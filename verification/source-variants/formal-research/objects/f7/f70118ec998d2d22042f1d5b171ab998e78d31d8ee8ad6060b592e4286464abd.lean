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
