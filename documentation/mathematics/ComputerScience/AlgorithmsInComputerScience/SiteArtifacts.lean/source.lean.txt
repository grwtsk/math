import Surface.Incremental.RegenerationPlan

namespace Surface
namespace Incremental

structure SiteArtifactFragment where
  moduleKey : ModuleKey
  syntacticObjectsHash : ContentHash
  coverBasisHash : ContentHash
  theoremManifestHash : ContentHash
  internalLanguageHash? : Option ContentHash
  claimBoundary : List String
deriving Repr

structure IncrementalSiteUpdate where
  closure : DownstreamClosure
  affectedFragments : List SiteArtifactFragment
  reusedFragments : List SiteArtifactFragment
  mergedSiteHashBefore? : Option ContentHash
  mergedSiteHashAfter : ContentHash
  affectedFragmentsExplained :
    ∀ f, f ∈ affectedFragments →
      ∃ p ∈ closure.inclusionPaths, p.target = f.moduleKey
  reusedFragmentsNotRegenerated :
    ∀ f, f ∈ reusedFragments →
      f.moduleKey ∉
        (affectedFragments.map (fun x => x.moduleKey))
  deterministicMerge : Prop
  deterministicMergeCertified : deterministicMerge
  claimBoundary : List String

theorem incrementalSiteUpdate_onlyAffectedFragmentsChanged
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.affectedFragments) :
    ∃ p ∈ U.closure.inclusionPaths, p.target = f.moduleKey :=
  U.affectedFragmentsExplained f hf

theorem siteUpdate_changes_only_affected_fragments
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.affectedFragments) :
    ∃ p ∈ U.closure.inclusionPaths, p.target = f.moduleKey :=
  U.affectedFragmentsExplained f hf

theorem incrementalSiteUpdate_reusedFragmentsStable
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.reusedFragments) :
    f.moduleKey ∉
      (U.affectedFragments.map (fun x => x.moduleKey)) :=
  U.reusedFragmentsNotRegenerated f hf

theorem siteUpdate_reuses_unaffected_fragments
    (U : IncrementalSiteUpdate)
    {f : SiteArtifactFragment}
    (hf : f ∈ U.reusedFragments) :
    f.moduleKey ∉
      (U.affectedFragments.map (fun x => x.moduleKey)) :=
  U.reusedFragmentsNotRegenerated f hf

theorem incrementalSiteUpdate_deterministicMerge
    (U : IncrementalSiteUpdate) :
    U.deterministicMerge :=
  U.deterministicMergeCertified

theorem siteUpdate_merge_is_deterministic
    (U : IncrementalSiteUpdate) :
    U.deterministicMerge :=
  U.deterministicMergeCertified

end Incremental
end Surface
