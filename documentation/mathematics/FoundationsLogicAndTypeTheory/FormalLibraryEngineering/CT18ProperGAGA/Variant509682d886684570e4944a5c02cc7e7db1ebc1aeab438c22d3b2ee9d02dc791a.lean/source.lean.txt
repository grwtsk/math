-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Theorems/CT18_ProperGAGA.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ct18ProperGAGA.Variantcf1bd4a0bf1fedc75ff761285f2d334ab61c5ca435abb4795060b1da9f6c011a

namespace FCRS.Theorems

/--
CT-18: proper non-Archimedean GAGA.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct18_properGAGA
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT18Claim S :=
  registry.ct18

end FCRS.Theorems
