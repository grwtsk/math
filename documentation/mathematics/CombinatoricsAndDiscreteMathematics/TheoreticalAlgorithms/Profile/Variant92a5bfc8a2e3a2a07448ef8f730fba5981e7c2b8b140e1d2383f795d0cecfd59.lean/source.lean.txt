-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalChoiceProfile.Variant04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalChoiceProfile.Variant04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab","mathematical_subject":"Computation.DataStructures","original_sha256":"04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ecosystem.Artifact

/-! # Project-native interpretation profiles -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalChoiceProfile.Variant04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab

namespace Mathematics.Projects

inductive CanonicalChoiceProfile
  | mathlibCompatibility
  | pedagogicalFaithfulness
  | computationalEfficiency
  | minimalDependency
  | historicalSource
  | projectNative
  deriving DecidableEq, Repr

/-- Declared ingestion behavior for one sovereign upstream project. -/
structure ProjectProfile where
  profileId : StableId
  identity : Ecosystem.ProjectIdentity
  canonicalChoice : CanonicalChoiceProfile
  requiredArtifactKinds : List Ecosystem.ArtifactKind
  preserveLocalDefinitions : Bool
  preserveFailures : Bool
  preserveHistory : Bool
  profileDigest : Digest
  deriving Repr

end Mathematics.Projects
