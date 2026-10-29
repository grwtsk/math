# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Change.Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc8d742639bf85eee409e3f5dc2de30a9ee3894a` · SHA-256 `4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10a8e3a5c654e08c048c8c6b656d5db5ddbf57aea3c9845b63f2ad8adb6d90b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
