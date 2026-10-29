# Regeneration Plan Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2b7f6f001eb6580d51b2c693877971b7e042368` · SHA-256 `66c0baa66f9eb42d7d11b256d87e8a0acb6f6093987b870abbd17c3e99db4906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IncrementalRegenerationPlan.Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IncrementalRegenerationPlan.Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b","mathematical_subject":"Computation.DataStructures","original_sha256":"621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/RegenerationPlan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Artifact


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IncrementalRegenerationPlan.Variant621829f11dff4f163a2a40da6cfadf84d902401c5dfcd57f0de0f09b6a73af7b

namespace Surface
namespace Incremental

structure IncrementalRegenerationPlan where
  requestId : String
  graph : ImportGraph
  seeds : List ReducerSeed
  closure : DownstreamClosure
  order : AffectedModuleOrder
  artifactPlan : List ArtifactPlanEntry
  onlyAffectedRegenerated :
    ∀ e, e ∈ artifactPlan →
      e.action = ArtifactAction.regenerate →
        e.key.moduleKey ∈ closure.affectedModules
  everyRegeneratedExplained :
    ∀ e, e ∈ artifactPlan →
      e.action = ArtifactAction.regenerate →
        ∃ p ∈ closure.inclusionPaths,
          p.target = e.key.moduleKey
  reusedOutsideClosure :
    ∀ e, e ∈ artifactPlan →
      e.key.moduleKey ∉ closure.affectedModules →
        e.action ≠ ArtifactAction.regenerate
  deterministicPlan : Prop
  deterministicPlanCertified : deterministicPlan
  claimBoundary : List String

theorem incrementalPlan_onlyAffectedRegenerated
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    e.key.moduleKey ∈ P.closure.affectedModules :=
  P.onlyAffectedRegenerated e he ha

theorem incrementalPlan_regenerates_only_affected
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    e.key.moduleKey ∈ P.closure.affectedModules :=
  P.onlyAffectedRegenerated e he ha

theorem incrementalPlan_everyRegeneratedExplained
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ P.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  P.everyRegeneratedExplained e he ha

theorem incrementalPlan_every_regeneration_has_inclusion_path
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (ha : e.action = ArtifactAction.regenerate) :
    ∃ p ∈ P.closure.inclusionPaths,
      p.target = e.key.moduleKey :=
  P.everyRegeneratedExplained e he ha

theorem incrementalPlan_reusesOutsideClosure
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (hout : e.key.moduleKey ∉ P.closure.affectedModules) :
    e.action ≠ ArtifactAction.regenerate :=
  P.reusedOutsideClosure e he hout

theorem incrementalPlan_reuses_unaffected
    (P : IncrementalRegenerationPlan)
    {e : ArtifactPlanEntry}
    (he : e ∈ P.artifactPlan)
    (hout : e.key.moduleKey ∉ P.closure.affectedModules) :
    e.action ≠ ArtifactAction.regenerate :=
  P.reusedOutsideClosure e he hout

theorem incrementalPlan_deterministic
    (P : IncrementalRegenerationPlan) :
    P.deterministicPlan :=
  P.deterministicPlanCertified

theorem incrementalPlan_is_deterministic
    (P : IncrementalRegenerationPlan) :
    P.deterministicPlan :=
  P.deterministicPlanCertified

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aa813935ebc38b9adc714e1a497c1c4c10d87dfc67e59d444c6a6d481f3ebff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RegenerationPlan/Variant66c2acafc4dd689f5564695a767e76819ccb44ebd62009ab8466bcf6a8889458.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
