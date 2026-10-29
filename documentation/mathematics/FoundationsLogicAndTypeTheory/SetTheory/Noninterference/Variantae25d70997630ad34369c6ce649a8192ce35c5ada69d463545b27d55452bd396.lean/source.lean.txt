-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalIndexAuthorityBoundary.Variantcbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.OrdinalIndexAuthorityBoundary.Variantcbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52","mathematical_subject":"Logic.SetTheory","original_sha256":"cbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Noninterference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Resolver
import Mathematics.StratifiedBoundary.Presentation.Noninterference

/-!
# Ordinal authority noninterference

An ordinal address is position data only.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalIndexAuthorityBoundary.Variantcbe50e9ea0267996bcb0c2af2f6849277d9b29b6ee5402d96457b6538199ff52

namespace Mathematics.StratifiedBoundary

structure OrdinalIndexAuthorityBoundary where
  ordinalIndexRef : String
  persistentIdentityRef : String
  theoremAuthorityRef : String
  runtimeAuthority : Bool := false
  mutationAuthority : Bool := false
  theoremAuthorityCreated : Bool := false
  runtimeAuthority_exact : runtimeAuthority = false
  mutationAuthority_exact : mutationAuthority = false
  theoremAuthorityCreated_exact :
    theoremAuthorityCreated = false

theorem ordinal_index_does_not_create_authority
    (boundary : OrdinalIndexAuthorityBoundary) :
    boundary.runtimeAuthority = false ∧
      boundary.mutationAuthority = false ∧
      boundary.theoremAuthorityCreated = false :=
  ⟨boundary.runtimeAuthority_exact,
    boundary.mutationAuthority_exact,
    boundary.theoremAuthorityCreated_exact⟩

end Mathematics.StratifiedBoundary
