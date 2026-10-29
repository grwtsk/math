import Surface.ContinuousAssurance.Authorization
import Surface.ContinuousAssurance.Index.Records

/-!
# Versioned index changes

Index patches bind exact base and proposed roots.  Representation history is
append-only metadata; digest equality is never interpreted as semantic
equivalence.
-/

namespace Surface.ContinuousAssurance

/-- One versioned representation transition. -/
structure RepresentationChange where
  identifier : String
  objectId : MathematicalObjectId
  before : RepresentationId
  after : RepresentationId
  beforeVersion : DAF.Version
  afterVersion : DAF.Version
  transformation : TraceableTransformation
  relation : TranslationRelation
  assumptions : List String
  openObligations : List ObligationId

/-- Machine-readable patch against one exact canonical-index root. -/
structure CanonicalIndexPatch where
  identity : PatchIdentity
  expectedBaseRoot : ArtifactIdentity
  proposedRoot : ArtifactIdentity
  operationsRef : ArtifactIdentity
  schemaVersion : DAF.Version
  representationChanges : List RepresentationChange

/-- A patch cannot claim to update a different base root. -/
def CanonicalIndexPatch.AppliesTo
    (patch : CanonicalIndexPatch)
    (root : ArtifactIdentity) : Prop :=
  root = patch.expectedBaseRoot

theorem CanonicalIndexPatch.appliesTo_iff
    (patch : CanonicalIndexPatch)
    (root : ArtifactIdentity) :
    patch.AppliesTo root ↔ root = patch.expectedBaseRoot :=
  Iff.rfl

end Surface.ContinuousAssurance
