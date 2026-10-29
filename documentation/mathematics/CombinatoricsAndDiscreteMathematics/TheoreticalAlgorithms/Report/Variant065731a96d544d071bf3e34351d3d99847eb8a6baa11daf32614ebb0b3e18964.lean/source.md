# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Report.Variant065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5610aa9b93956e89b2d1ffccdcc6d08f730ea20d` · SHA-256 `065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.Preservation

namespace Surface
namespace Incremental

structure ModuleRegenerationReport where
  moduleKey : ModuleKey
  oldSourceHash? : Option ContentHash
  newSourceHash : ContentHash
  inclusionReason : InclusionReason
  reverseImportPathFromSeed : List ImportEdge
  directImports : List ModuleKey
  directReverseImporters : List ModuleKey
  artifactKindsRegenerated : List ArtifactKind
  artifactKindsReused : List ArtifactKind
  proofStatusChanges : List String
  claimBoundaryChanges : List String
  declarationsAdded : List String
  declarationsRemoved : List String
  declarationsChanged : List String
  siteFragmentsRegenerated : List String
  siteFragmentsReused : List String
  claimBoundary : List String
deriving Repr

structure IncrementalGenerationResult where
  request : IncrementalGenerationRequest
  plan : IncrementalRegenerationPlan
  siteUpdate : IncrementalSiteUpdate
  preservationFailures : List PreservationFailure
  emittedArtifacts : List ArtifactPlanEntry
  success :
    preservationFailures = []
  exactReasonReportComplete :
    ∀ e, e ∈ emittedArtifacts →
      e.action = ArtifactAction.regenerate →
        ∃ p ∈ plan.closure.inclusionPaths,
          p.target = e.key.moduleKey
  emittedArtifactsPlanned :
    ∀ e, e ∈ emittedArtifacts → e ∈ plan.artifactPlan
  claimBoundary : List String

theorem incrementalResult_success_has_no_preservationFailures
    (R : IncrementalGenerationResult) :
    R.preservationFailures = [] :=
  R.success

theorem incrementalResult_success_has_empty_failure_list
    (R : IncrementalGenerationResult) :
    R.preservationFailures = [] :=
  R.success

theorem incrementalResult_every_regenerated_module_has_reason
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ R.plan.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  R.exactReasonReportComplete e he ha

theorem incrementalResult_reports_every_regenerated_module
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ R.plan.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  R.exactReasonReportComplete e he ha

theorem incrementalResult_emits_only_planned_artifacts
    (R : IncrementalGenerationResult)
    {e : ArtifactPlanEntry}
    (he : e ∈ R.emittedArtifacts) :
    e ∈ R.plan.artifactPlan :=
  R.emittedArtifactsPlanned e he

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abb619539c22380f8c11459063fac90dbb1870c7dec4503960f5842108ff0b39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Report/Variant065731a96d544d071bf3e34351d3d99847eb8a6baa11daf32614ebb0b3e18964.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
