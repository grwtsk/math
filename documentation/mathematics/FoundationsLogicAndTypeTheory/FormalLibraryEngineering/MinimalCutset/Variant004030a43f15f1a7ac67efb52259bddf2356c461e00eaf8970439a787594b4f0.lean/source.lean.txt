-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinimalCutset.Variant456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.MinimalCutset.Variant456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c","mathematical_subject":"Foundations.Unclassified","original_sha256":"456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ProofStrategy/MinimalCutset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Exact minimal route cutsets
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinimalCutset.Variant456b9704b4395a1b0cfd0a0cb2b41ee636936fc4fe13148c80700761dbc7937c

namespace Mathematics.ProofStrategy

universe u

def HitsEveryFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation)
    (cutset : Requirement Obligation) : Prop :=
  ∀ frontier ∈ frontiers,
    ∃ obligation, obligation ∈ cutset ∧ obligation ∈ frontier

structure MinimalCutset
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation) where
  cutset : Requirement Obligation
  hits : HitsEveryFrontier frontiers cutset
  indispensable :
    ∀ obligation ∈ cutset,
      ¬ HitsEveryFrontier frontiers (cutset.erase obligation)

theorem minimalCutset_nonempty_of_nonempty_frontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    {frontiers : FrontierFamily Obligation}
    (frontiers_nonempty : frontiers.Nonempty)
    (certificate : MinimalCutset frontiers) :
    certificate.cutset.Nonempty := by
  rcases frontiers_nonempty with ⟨frontier, frontier_member⟩
  rcases certificate.hits frontier frontier_member with
    ⟨obligation, obligation_in_cutset, _⟩
  exact ⟨obligation, obligation_in_cutset⟩

end Mathematics.ProofStrategy
