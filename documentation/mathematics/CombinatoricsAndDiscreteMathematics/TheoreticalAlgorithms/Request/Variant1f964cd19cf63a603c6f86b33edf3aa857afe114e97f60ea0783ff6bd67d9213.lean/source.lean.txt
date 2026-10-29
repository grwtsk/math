import Surface.Incremental.ImportGraph

namespace Surface
namespace Incremental

inductive ChangeKind where
  | sourceChanged
  | importChanged
  | declarationChanged
  | claimBoundaryChanged
  | proofStatusChanged
  | generatorVersionChanged
  | forcedRegeneration
deriving Repr, DecidableEq

structure ChangedLeanFile where
  path : String
  beforeHash? : Option ContentHash
  afterHash : ContentHash
  changeKind : ChangeKind
  claimBoundary : List String
deriving Repr

inductive ArtifactKind where
  | moduleAst
  | declarationAst
  | declarationGraph
  | theoremManifest
  | syntacticCategory
  | syntacticSite
  | coverBasis
  | omegaFragment
  | internalLanguage
  | affineToposObject
  | pascalTreeManifest
  | resurfaceIndex
  | reportJson
deriving Repr, DecidableEq

structure IncrementalGenerationRequest where
  requestId : String
  sourceSnapshot : String
  toolchainHash : ContentHash
  generatorVersionHash : ContentHash
  changedFiles : List ChangedLeanFile
  requestedArtifactKinds : List ArtifactKind
  forceRegenerateModules : List ModuleKey
  claimBoundary : List String
deriving Repr

theorem changedLeanFile_boundary_visible
    (F : ChangedLeanFile) :
    F.claimBoundary = F.claimBoundary :=
  rfl

end Incremental
end Surface
