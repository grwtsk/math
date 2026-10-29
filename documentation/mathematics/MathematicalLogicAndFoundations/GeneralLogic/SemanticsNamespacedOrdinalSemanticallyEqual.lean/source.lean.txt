-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","mathematical_subject":"Logic.SetTheory","original_sha256":"da378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.Profile

/-!
# Profile-relative ordinal semantics

Semantic equality is exposed separately from executable code equality.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CompleteNormalizationProfile.Variantda378270b9b6a6ebe4d46c2efd9902ac0b3d3b00402589fe27cbac6c2683ca19

namespace Mathematics.StratifiedBoundary

def OrdinalSemanticallyEqual
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (left right : OrdinalTally) : Prop :=
  profile.denotes left = profile.denotes right

structure CompleteNormalizationProfile
    (Semantic : Type u)
    extends OrdinalNotationProfile Semantic where
  normalizedEqualityComplete :
    ∀ {left right},
      admits left →
      admits right →
      normalize left = normalize right ↔
        denotes left = denotes right

end Mathematics.StratifiedBoundary
