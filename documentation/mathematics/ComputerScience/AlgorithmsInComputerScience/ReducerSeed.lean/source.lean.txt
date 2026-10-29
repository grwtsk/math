import Surface.Incremental.Request

namespace Surface
namespace Incremental

structure ReducerSeed where
  changedFile : ChangedLeanFile
  moduleKey : ModuleKey
  resolvedBy : String
  seedReason : ChangeKind
  resolutionBoundary : List String
deriving Repr

structure SeedResolutionCertificate where
  changedFile : ChangedLeanFile
  seed : ReducerSeed
  seedMatchesChangedFile :
    seed.changedFile = changedFile
  uniqueModule : Prop
  uniqueModuleCertified : uniqueModule
  claimBoundary : List String
deriving Repr

theorem changedFile_resolves_to_reducerSeed
    (C : SeedResolutionCertificate) :
    C.seed.changedFile = C.changedFile ∧ C.uniqueModule := by
  exact ⟨C.seedMatchesChangedFile, C.uniqueModuleCertified⟩

end Incremental
end Surface
