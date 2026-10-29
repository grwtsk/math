# Mathematical Point Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `294a802b52d0c9e96937294e86b567008eefc627` · SHA-256 `4825a74ee8d7ccb2d322b932fef09563f6b37bc7de3ce19927b4ac433e9e84af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalTypeReference.Variant9066b26c03c09419c2c7efe6ddc58067adb1bcec59b29a906bfca535a80576ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9066b26c03c09419c2c7efe6ddc58067adb1bcec59b29a906bfca535a80576ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormalTypeReference.Variant9066b26c03c09419c2c7efe6ddc58067adb1bcec59b29a906bfca535a80576ab","mathematical_subject":"Computation.DataStructures","original_sha256":"9066b26c03c09419c2c7efe6ddc58067adb1bcec59b29a906bfca535a80576ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Concept/MathematicalPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.Authority
import Mathematics.Concept.Boundary
import Mathematics.Concept.Descriptor
import Mathematics.Concept.Negative
import Mathematics.Concept.PointKind
import Mathematics.Concept.Representation

/-!
# Source-reconstructible mathematical points

A point is the smallest currently distinguished typed mathematical object.  It
keeps source, denotation, boundary, authority, relations, representations,
negative status, and obligations separate.  Names and filesystem coordinates
are evidence fields, not identity constructors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalTypeReference.Variant9066b26c03c09419c2c7efe6ddc58067adb1bcec59b29a906bfca535a80576ab

namespace Mathematics.Concept

structure FormalTypeReference where
  declarationName : String
  typeDigest : Digest
  deriving DecidableEq, Repr

structure RhetoricalRoleReference where
  roleId : StableId
  description : String
  deriving DecidableEq, Repr

structure ProjectRelativeName where
  projectId : ProjectId
  descriptorId : DescriptorId
  versionId : StableId
  deriving DecidableEq, Repr

structure StabilityRecord where
  status : EpistemicDisposition
  certificateIds : List CertificateId
  observedAtRevisionIds : List StableId
  stabilityDigest : Digest
  deriving DecidableEq, Repr

/-- One stable, typed point in the canonical mathematical universe. -/
structure MathematicalPoint where
  pointId : ElementId
  pointId_valid : pointId.Valid
  sources : List SourceAnalysis.AbstractSourceAddress
  sources_nonempty : sources ≠ []
  descriptorIds : List DescriptorId
  projectRelativeNames : List ProjectRelativeName
  kind : PointKind
  formalTypes : List FormalTypeReference
  denotationDigest : Digest
  rhetoricalRoles : List RhetoricalRoleReference
  terrainRegionIds : List RegionId
  boundary : Boundary
  assumptionPointIds : List ElementId
  relationIds : List RelationId
  representationIds : List RepresentationId
  computationalRealizationIds : List RuntimeBindingId
  authority : Profile
  provenanceIds : List StableId
  proofStatus : EpistemicDisposition
  epistemicDisposition : EpistemicDisposition
  stability : StabilityRecord
  versionId : StableId
  obligationIds : List StableId
  deriving DecidableEq

namespace MathematicalPoint

/-- Semantic identity is the stable point identifier only. -/
def SameIdentity (left right : MathematicalPoint) : Prop :=
  left.pointId = right.pointId

/-- Equal names, paths, embeddings, or representations are absent here. -/
theorem sameIdentity_of_pointId_eq
    {left right : MathematicalPoint}
    (same : left.pointId = right.pointId) :
    left.SameIdentity right :=
  same

/-- Every admitted point retains at least one source address. -/
theorem has_source (point : MathematicalPoint) :
    ∃ source, source ∈ point.sources := by
  exact List.exists_mem_of_ne_nil point.sources point.sources_nonempty

end MathematicalPoint

end Mathematics.Concept
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46b971dcab5aa76ef8556a4de8ccd0976087babff9d1feeeddb79301ceee814 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathematicalPoint/Variante5fb1631f1f897c06db7fe7556fd3ad66476916b04d98a868a431e5bec8c1a3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
