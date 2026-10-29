-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SoninSpaceFamily.Variant2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SoninSpaceFamily.Variant2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Sonin/Space.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Semi-local Sonin spaces

The carrier at each finite cut is kept distinct from both the abstract defect
capacity and every Hardy realization.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SoninSpaceFamily.Variant2b36167fdced85e2a910529b3c4402a3eae161241ca1c4b81903c768b21aedaa

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure SoninSpaceFamily
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  Space : Finset Prime → Type uSpace
  origin : ∀ cut, Space cut
  realizationDigest :
    Finset Prime → RealizationDigest

end Mathematics.SemiLocalDefect.Sonin
