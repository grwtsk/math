import Mathematics.Refactor.Partition

/-! # Filesystem rewrite plans -/

namespace Mathematics.Refactor

open Mathematics

inductive FileOperationKind
  | create
  | replace
  | remove
  | preserve
  deriving DecidableEq, Repr, Inhabited

structure FileOperation where
  kind : FileOperationKind
  sourcePath : Option String
  targetPath : String
  baselineDigest : Option Digest
  candidateDigest : Option Digest
  deriving DecidableEq, Repr

structure Plan where
  id : RefactorPlanId
  sessionId : RefactorSessionId
  profile : Profile
  baselineSourceDigest : Digest
  analyzerDigest : Digest
  featureProfileDigest : Digest
  learnedProfileDigest : Option Digest
  partition : Partition
  operations : Array FileOperation
  expectedModuleGraphDigest : Digest
  planDigest : Digest
  deriving DecidableEq, Repr

end Mathematics.Refactor
