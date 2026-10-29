# Noninterference Namespaced Ordinal Index Authority Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `438c4365b8ac8f9f2f5b8f80893bc8d3c4c88b2b` · SHA-256 `5b9985f58c9390f4b6a86ebc5bf0f61eb73072d25e20510c93afa958c2688857`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa544e25b3da86abf1acef41ece11aeece865770cc4999d87d593bd9a97828ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variantae25d70997630ad34369c6ce649a8192ce35c5ada69d463545b27d55452bd396.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
