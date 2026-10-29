import Mathematics.SemanticTokenization.MetadataType

/-! # Span-indexed typed metadata assertions -/

namespace Mathematics.SemanticTokenization

structure MetadataAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  assertionId : StableId
  span : Span text
  value : MetadataValue kind

structure SomeMetadataAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : MetadataAssertion text kind

structure MetadataProfile (text : TextCarrier) where
  assertions : List (SomeMetadataAssertion text)

end Mathematics.SemanticTokenization
