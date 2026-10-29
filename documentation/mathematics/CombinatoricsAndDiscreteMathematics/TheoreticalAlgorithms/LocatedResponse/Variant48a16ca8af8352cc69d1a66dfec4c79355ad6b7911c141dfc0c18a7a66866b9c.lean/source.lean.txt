-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResponseLocation.Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResponseLocation.Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2","mathematical_subject":"Computation.DataStructures","original_sha256":"0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Oracle/LocatedResponse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.Oracle.Jurisdiction
import Mathematics.Oracle.Navigation

/-!
# Located model responses

A response is usable only as a point-universe-relative packet that identifies
meanings, relations, dependencies, representations, authority, residue,
prohibitions, and audience.  Text alone is not a mathematical answer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResponseLocation.Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2

namespace Mathematics.Oracle

structure ResponseLocation where
  sourceAddressIds : List StableId
  pointIds : List ElementId
  meaningDigests : List Digest
  relationIds : List RelationId
  relationPathIds : List StableId
  dependencyIds : List StableId
  representationIds : List RepresentationId
  terrainRegionIds : List RegionId
  proofTerrainIds : List StableId
  authority : Concept.Profile
  residueIds : List StableId
  prohibitionIds : List StableId
  audienceIds : List StableId
  deriving DecidableEq

structure LocatedResponse where
  responseId : StableId
  oracleId : OracleId
  jurisdictionId : StableId
  pointUniverseId : StableId
  projectId : ProjectId
  versionId : StableId
  snapshotId : StableId
  queryDigest : Digest
  expression : String
  location : ResponseLocation
  unknownBranchIds : List StableId
  authority : NavigationAuthority
  responseDigest : Digest
  deriving DecidableEq

def LocatedResponse.ResolvesIn
    (response : LocatedResponse)
    (pointUniverse : Concept.PointUniverse) : Prop :=
  response.pointUniverseId = pointUniverse.universeId ∧
  (∀ pointId ∈ response.location.pointIds,
    pointId ∈
      pointUniverse.points.map Concept.MathematicalPoint.pointId) ∧
  (∀ relationId ∈ response.location.relationIds,
    relationId ∈
      pointUniverse.relations.map Concept.RelationRecord.id) ∧
  (∀ addressId ∈ response.location.sourceAddressIds,
    addressId ∈
      pointUniverse.sourceTree.nodes.map
        (·.address.addressId)) ∧
  (∀ branchId ∈ response.unknownBranchIds,
    branchId ∈
      pointUniverse.unknownBranches.map
        Concept.UnknownBranch.branchId)

/-- A located response cannot be an ungrounded string. -/
def LocatedResponse.Accountable
    (response : LocatedResponse) : Prop :=
  response.location.pointIds ≠ [] ∨
    response.unknownBranchIds ≠ []

/-- Located navigation remains non-theorem authority by construction. -/
theorem LocatedResponse.authority_is_navigation_or_candidate
    (response : LocatedResponse) :
    response.authority = .navigationOnly ∨
      response.authority = .candidate := by
  cases response.authority <;> simp

end Mathematics.Oracle
