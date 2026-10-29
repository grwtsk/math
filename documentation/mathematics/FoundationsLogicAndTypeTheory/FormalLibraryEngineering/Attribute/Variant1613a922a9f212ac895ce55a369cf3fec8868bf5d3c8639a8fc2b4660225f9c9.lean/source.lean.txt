import Mathematics.Ingestion.Declaration

/-! # Declaration attributes -/

namespace Mathematics.Ingestion

structure DeclarationAttribute where
  declaration : ProjectDeclarationId
  attributeName : String
  payloadDigest : Digest
  sourceArtifactId : Ecosystem.ArtifactId
  deriving DecidableEq, Repr

end Mathematics.Ingestion
