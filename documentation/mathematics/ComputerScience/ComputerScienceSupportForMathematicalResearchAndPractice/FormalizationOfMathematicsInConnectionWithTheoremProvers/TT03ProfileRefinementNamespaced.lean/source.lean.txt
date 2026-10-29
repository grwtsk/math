-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt03ClaimOfRefinement.Variant8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tt03ClaimOfRefinement.Variant8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a","mathematical_subject":"Foundations.Unclassified","original_sha256":"8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT03_ProfileRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Theorem


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tt03ClaimOfRefinement.Variant8de54d483bb2743ebcbf6e9d624b550f411081b1731f8e625ec3d988aea7629a

universe uInput uWitness

namespace FCRS.Transport.Theorems

/-- Transfer a claim only through the exact proved refinement adapter. -/
theorem tt03_claimOfRefinement
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (claim : IntervalClaim refined) :
    IntervalClaim broader :=
  adapter.transportClaim claim

end FCRS.Transport.Theorems
