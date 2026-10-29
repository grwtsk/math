import Mathematics.Discovery.IdeasCorpus

/-!
# Euclidean-plane corpus address

Corpus module 195 has no project-local imports.  Its Mathlib imports are
external prerequisites, so this one module is the complete local source
closure.  The path and ordinal are provenance coordinates only.
-/

namespace Mathematics.Geometry.EuclideanPlaneCorpus

open Mathematics
open Mathematics.Discovery

def sourceModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 195
  modulePath := "BitMatrix/Geometry/Euclidean.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "719d566e7d77e00ce44d438cea2904012f10931716afabdc8a01f3d52d271a58"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local source closure. -/
def dependencyClosure : List CorpusModuleAddress := [sourceModule]

@[simp] theorem dependencyClosure_length :
    dependencyClosure.length = 1 := by decide

end Mathematics.Geometry.EuclideanPlaneCorpus
