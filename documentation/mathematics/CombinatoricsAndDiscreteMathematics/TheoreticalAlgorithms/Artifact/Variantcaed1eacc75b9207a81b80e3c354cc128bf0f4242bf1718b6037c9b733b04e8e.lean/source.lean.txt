import Surface.Incremental.AffectedOrder

namespace Surface
namespace Incremental

structure ArtifactKey where
  moduleKey : ModuleKey
  kind : ArtifactKind
  path : String
deriving Repr, DecidableEq

inductive ArtifactAction where
  | regenerate
  | reuse
  | deleteStale
  | fail
deriving Repr, DecidableEq

structure ArtifactPlanEntry where
  key : ArtifactKey
  action : ArtifactAction
  oldHash? : Option ContentHash
  newHash? : Option ContentHash
  reason : InclusionReason
  explanation : String
  claimBoundary : List String
deriving Repr

structure ArtifactReuseCertificate where
  key : ArtifactKey
  oldHash : ContentHash
  reusedHash : ContentHash
  hashesIdentical : oldHash = reusedHash
  claimBoundary : List String
deriving Repr

theorem unchangedModule_has_identical_artifact_hash
    (C : ArtifactReuseCertificate) :
    C.oldHash = C.reusedHash :=
  C.hashesIdentical

end Incremental
end Surface
