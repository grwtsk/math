-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CanonicalOrdinalTally.Variantca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalOrdinalTally.Variantca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9","mathematical_subject":"Foundations.Unclassified","original_sha256":"ca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/NormalForm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Canonical profile-relative codes

The wrapper records the raw code, its normalized form, and the profile proof.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CanonicalOrdinalTally.Variantca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9

namespace Mathematics.StratifiedBoundary

structure CanonicalOrdinalTally
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic) where
  raw : OrdinalTally
  admitted : profile.admits raw
  normalized : OrdinalTally := profile.normalize raw
  normalized_exact : normalized = profile.normalize raw
  normalized_fixed :
    profile.normalize normalized = normalized

def CanonicalOrdinalTally.semanticValue
    {Semantic : Type u}
    {profile : OrdinalNotationProfile Semantic}
    (code : CanonicalOrdinalTally profile) : Semantic :=
  profile.denotes code.normalized

end Mathematics.StratifiedBoundary
