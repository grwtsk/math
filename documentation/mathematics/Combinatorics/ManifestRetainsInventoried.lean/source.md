# Manifest Retains Inventoried — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b88e242f75178ae82230d3baecf5bcf91d7fd2db` · SHA-256 `232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathematics.Ecosystem.Artifact

/-! # Complete finite project manifests -/

namespace Mathematics.Ecosystem

/--
A finite source snapshot is complete exactly when every source inventory
identity has one retained artifact and no retained artifact lies outside that
inventory.
-/
structure ProjectManifest where
  revision : ProjectRevision
  sourceInventory : Finset ArtifactId
  artifacts : List RawArtifact
  artifactIdsUnique : (artifacts.map RawArtifact.artifactId).Nodup
  coverage :
    ∀ artifactId,
      artifactId ∈ sourceInventory ↔
        ∃ artifact ∈ artifacts, artifact.artifactId = artifactId
  manifestDigest : Digest

namespace ProjectManifest

/-- No inventoried artifact may disappear silently. -/
theorem retains_inventoried
    (manifest : ProjectManifest)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ manifest.sourceInventory) :
    ∃ artifact ∈ manifest.artifacts,
      artifact.artifactId = artifactId :=
  (manifest.coverage artifactId).mp inventoried

/-- Every retained artifact is justified by the source inventory. -/
theorem no_fabricated_artifact
    (manifest : ProjectManifest)
    {artifact : RawArtifact}
    (retained : artifact ∈ manifest.artifacts) :
    artifact.artifactId ∈ manifest.sourceInventory := by
  apply (manifest.coverage artifact.artifactId).mpr
  exact ⟨artifact, retained, rfl⟩

/-- Artifact occurrence identity is unique inside one complete manifest. -/
theorem artifact_occurs_exactly_once
    (manifest : ProjectManifest)
    {left right : RawArtifact}
    (leftMember : left ∈ manifest.artifacts)
    (rightMember : right ∈ manifest.artifacts)
    (sameId : left.artifactId = right.artifactId) :
    left = right :=
  List.inj_on_of_nodup_map manifest.artifactIdsUnique
    leftMember rightMember sameId

/-- Omitting an inventoried artifact contradicts manifest coverage. -/
theorem omission_rejected
    (manifest : ProjectManifest)
    {artifactId : ArtifactId}
    (inventoried : artifactId ∈ manifest.sourceInventory)
    (omitted :
      ¬ ∃ artifact ∈ manifest.artifacts,
        artifact.artifactId = artifactId) :
    False :=
  omitted (manifest.retains_inventoried inventoried)

end ProjectManifest

end Mathematics.Ecosystem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0cbc27602b6ea7416ffeda9d7a56487ee18bad15fbe971861d3cf891164e922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
