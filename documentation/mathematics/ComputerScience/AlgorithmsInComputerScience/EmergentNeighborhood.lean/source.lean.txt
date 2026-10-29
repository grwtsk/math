import Mathematics.Concept.PointUniverse

/-!
# Intrinsically emergent neighborhoods

Neighborhood membership is certified from points, typed relations, and
invariants.  Names and paths are absent from the neighborhood itself.  A source
layout candidate can be constructed only from such a stability witness.
-/

namespace Mathematics.Terrain

structure NeighborhoodStabilityEvidence
    (pointUniverse : Concept.PointUniverse)
    (members : List ElementId) where
  relationIds : List RelationId
  invariantIds : List StableId
  relationClosure :
    ∀ relation ∈ pointUniverse.relations,
      relation.id ∈ relationIds →
      relation.source ∈ members ∧
      relation.target ∈ members
  sourceIndependent :
    ∀ pointId ∈ members,
      ∃ point ∈ pointUniverse.points,
        point.pointId = pointId
  certificateId : CertificateId
  evidenceDigest : Digest

structure StableNeighborhood
    (pointUniverse : Concept.PointUniverse) where
  neighborhoodId : StableId
  members : List ElementId
  members_nonempty : members ≠ []
  members_unique : members.Nodup
  membersResolve :
    ∀ pointId ∈ members,
      pointId ∈
        pointUniverse.points.map Concept.MathematicalPoint.pointId
  stability : NeighborhoodStabilityEvidence pointUniverse members

/-- Filesystem placement is a downstream candidate, never neighborhood input. -/
structure SourceLayoutCandidate
    (pointUniverse : Concept.PointUniverse) where
  neighborhood : StableNeighborhood pointUniverse
  proposedPath : String
  namingEvidenceId : EvidenceId
  projectionProfileId : ProjectionProfileId
  candidateDigest : Digest

/-- Every layout candidate carries the intrinsic stability witness it projects. -/
theorem SourceLayoutCandidate.has_stable_neighborhood
    {pointUniverse : Concept.PointUniverse}
    (candidate : SourceLayoutCandidate pointUniverse) :
    Nonempty (StableNeighborhood pointUniverse) :=
  ⟨candidate.neighborhood⟩

end Mathematics.Terrain
