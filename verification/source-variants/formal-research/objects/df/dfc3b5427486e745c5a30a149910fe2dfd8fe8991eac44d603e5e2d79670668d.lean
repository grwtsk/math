import Mathematics.SemanticTokenization.Context

/-! # Type-indexed metadata comparisons -/

namespace Mathematics.SemanticTokenization

structure MetadataComparison
    (text : TextCarrier)
    (kind : MetadataType) where
  left : MetadataAssertion text kind
  right : MetadataAssertion text kind
  score : Int

structure SomeMetadataComparison (text : TextCarrier) where
  kind : MetadataType
  comparison : MetadataComparison text kind

structure OverlapAggregationRule where
  ruleId : StableId
  aggregate : List Int → Int

structure TypedOverlap (text : TextCarrier) where
  context : Context
  fields : List (SomeMetadataComparison text)
  aggregation : OverlapAggregationRule
  aggregateScore : Int
  aggregate_exact :
    aggregateScore =
      aggregation.aggregate
        (fields.map
          (fun field => field.comparison.score))

def TypedOverlap.impliesSemanticIdentity
    {text : TextCarrier}
    (_ : TypedOverlap text) : Bool :=
  false

@[simp] theorem overlap_does_not_imply_semantic_identity
    {text : TextCarrier}
    (overlap : TypedOverlap text) :
    overlap.impliesSemanticIdentity = false :=
  rfl

end Mathematics.SemanticTokenization
