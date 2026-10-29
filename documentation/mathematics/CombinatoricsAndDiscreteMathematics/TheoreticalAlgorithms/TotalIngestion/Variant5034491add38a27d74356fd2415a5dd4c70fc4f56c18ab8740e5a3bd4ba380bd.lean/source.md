# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TotalIngestion.Variant5034491add38a27d74356fd2415a5dd4c70fc4f56c18ab8740e5a3bd4ba380bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bd742def8f88c55ee177ed268dc18e7677ba90d` · SHA-256 `5034491add38a27d74356fd2415a5dd4c70fc4f56c18ab8740e5a3bd4ba380bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a49383f0519b7e71cd75b424e3305bd8831c01abf1a354225de7e16e56a9e3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TotalIngestion/Variant5034491add38a27d74356fd2415a5dd4c70fc4f56c18ab8740e5a3bd4ba380bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
