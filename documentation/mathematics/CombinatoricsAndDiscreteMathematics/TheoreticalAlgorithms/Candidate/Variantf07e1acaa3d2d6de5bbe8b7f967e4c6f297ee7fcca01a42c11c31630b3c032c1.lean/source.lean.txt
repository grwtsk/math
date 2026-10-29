import Mathematics.Relaxation.Stability
import Mathematics.Reflection.Destination
import Mathematics.Toolchain.Capsule

/-! # Reflection candidates -/

namespace Mathematics.Reflection

/--
A stable overlay may propose reflection.  The candidate itself grants no
permission to modify source or claim theorem preservation.
-/
structure Candidate where
  candidateId : StableId
  evidenceSource : Ecosystem.ProjectSnapshotKey
  destination : Destination
  targetSnapshot : Ecosystem.ProjectSnapshot
  targetCapsule : Toolchain.CapsuleKey
  target_capsule_project :
    targetCapsule.project = targetSnapshot.identity.projectId
  target_capsule_revision :
    targetCapsule.revisionId = targetSnapshot.revision.revisionId
  target_capsule_identity :
    targetCapsule.capsuleId = targetSnapshot.toolchainCapsuleId
  workPackage : Relaxation.WorkPackage
  overlayElementIds : List StableId
  rationaleDigest : Digest
  authority : String

end Mathematics.Reflection
