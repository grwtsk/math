import Mathematics.Ingestion.Source

/-! # Informal blueprints and mathematical plans -/

namespace Mathematics.Ingestion

structure BlueprintRecord where
  blueprintId : StableId
  source : SourceUnit
  sectionPath : List String
  statementDigest : Digest
  linkedDeclarationNames : List String
  proposalOnly : Bool := true
  deriving DecidableEq, Repr

end Mathematics.Ingestion
