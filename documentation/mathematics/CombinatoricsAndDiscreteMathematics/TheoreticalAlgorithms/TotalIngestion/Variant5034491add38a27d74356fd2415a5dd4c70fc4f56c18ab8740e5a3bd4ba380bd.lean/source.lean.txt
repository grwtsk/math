import Mathematics.Federation.All
import Mathematics.Ingestion.Totality
import Mathematics.Relaxation.ProjectFederation

/-!
# Bounded total ingestion in a sovereign federation

This theorem combines exact artifact coverage, explicit incomplete closure,
project-qualified fibers, and source-preserving relaxation. It intentionally
does not assert that discovery of the public internet is complete.
-/

namespace Mathematics.System

structure FederatedIngestion where
  boundary : Ecosystem.CoverageBoundary
  projects : List Ingestion.TotalityEnvelope
  projectSnapshotsUnique :
    (projects.map fun project ↦ project.receipt.raw.snapshot.key).Nodup
  boundariesExact :
    ∀ project ∈ projects,
      project.boundary = boundary
  federation : Federation.FederatedEnvironment
  fiberCoverage :
    ∀ project ∈ projects,
      ∃ fiber ∈ federation.fibers,
        fiber.snapshot = project.receipt.raw.snapshot ∧
        fiber.ingestion = project.receipt
  operator : Relaxation.Operator
  state : Relaxation.State
  workPackageProjectsExact :
    state.workPackage.sourceSnapshots =
      projects.map fun project ↦ project.receipt.raw.snapshot
  systemDigest : Digest

namespace FederatedIngestion

structure Sound (system : FederatedIngestion) : Prop where
  everyArtifactRetained :
    ∀ project ∈ system.projects,
      Ingestion.ArtifactTotal project.receipt
  everyIncompleteLevelNamed :
    ∀ project ∈ system.projects,
      ∀ record ∈ project.closure.records,
        record.status ≠ .complete →
          record.obligationIds ≠ []
  everyProjectHasSovereignFiber :
    ∀ project ∈ system.projects,
      ∃ fiber ∈ system.federation.fibers,
        fiber.snapshot = project.receipt.raw.snapshot ∧
        fiber.ingestion = project.receipt
  relaxationPreservesProjects :
    (system.operator.step system.state).workPackage.sourceSnapshots =
      system.state.workPackage.sourceSnapshots

/-- Governing finite-registry total-ingestion invariant. -/
theorem sound
    (system : FederatedIngestion) :
    system.Sound where
  everyArtifactRetained project _projectMember :=
    project.artifact_total
  everyIncompleteLevelNamed project _projectMember record recordMember
      incomplete :=
    project.incomplete_level_visible record recordMember incomplete
  everyProjectHasSovereignFiber project projectMember :=
    system.fiberCoverage project projectMember
  relaxationPreservesProjects :=
    system.operator.preserves_source_snapshots system.state

end FederatedIngestion

end Mathematics.System
