import Mathematics.Projects.Profile

/-! # Tao `analysis` pedagogical profile -/

namespace Mathematics.Projects.Tao

structure AnalysisProfile where
  base : Projects.ProjectProfile
  textbookChapterArtifacts : List StableId
  localDefinitionIds : List StableId
  mathlibDefinitionIds : List StableId
  bridgeCertificateIds : List StableId
  exerciseObligationIds : List StableId
  pedagogicalCommentArtifactIds : List StableId
  literateDocumentArtifactIds : List StableId
  transitionPointIds : List StableId
  preservePedagogicalDivergence : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
