import Mathematics.Mutation.Event

/-!
# Honest whole-system coverage

A required vertex must be observed, explicitly unsupported, or excluded with a
reason.  The indexed classifier leaves no fourth, silently omitted case.
-/

namespace Mathematics.Mutation

structure SystemManifest where
  manifestId : StableId
  digest : Digest
  requiredVertices : Finset StableId
  requiredEdges : Finset StableId

inductive CoverageDisposition
  | observed (receipt : ObjectAddress)
  | unsupported (reason : String)
  | excluded (reason : String)

structure CoverageCertificate
    (manifest : SystemManifest) where
  classifyVertex :
    ∀ vertex, vertex ∈ manifest.requiredVertices → CoverageDisposition
  observedCount : Nat
  unsupportedCount : Nat
  excludedCount : Nat
  adapterDigest : Digest
  toolchainDigest : Digest

def wholeSystemCovered
    (manifest : SystemManifest) : Prop :=
  Nonempty (CoverageCertificate manifest)

structure WholeSystemClaim
    (manifest : SystemManifest) where
  coverage : CoverageCertificate manifest

theorem whole_system_claim_requires_coverage
    (manifest : SystemManifest)
    (claim : WholeSystemClaim manifest) :
    wholeSystemCovered manifest :=
  ⟨claim.coverage⟩

end Mathematics.Mutation
