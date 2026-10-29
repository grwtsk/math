-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrbitLocalRank.Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrbitLocalRank.Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3","mathematical_subject":"Foundations.Unclassified","original_sha256":"564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/AutomorphismIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Orbit-invariant local rank

Raw occurrence ranks and orbit ranks use distinct structures.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrbitLocalRank.Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3

namespace Mathematics.StratifiedBoundary

structure OrbitLocalRank
    (GroupElement Frontier : Type u) where
  orderingSourceRef : String
  act : GroupElement → Frontier → Frontier
  rank : Frontier → Nat
  invariant :
    ∀ groupElement record,
      rank (act groupElement record) = rank record

def orbitFrontierIndex
    {GroupElement Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : OrbitLocalRank GroupElement Frontier)
    (record : Frontier) : StratifiedFrontierIndex where
  profileId := profileId
  stratum := stratum
  localRank := ranker.rank record

theorem orbit_index_invariant
    {GroupElement Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : OrbitLocalRank GroupElement Frontier)
    (groupElement : GroupElement)
    (record : Frontier) :
    orbitFrontierIndex
        profileId stratum ranker
        (ranker.act groupElement record) =
      orbitFrontierIndex profileId stratum ranker record := by
  unfold orbitFrontierIndex
  rw [ranker.invariant]

end Mathematics.StratifiedBoundary
