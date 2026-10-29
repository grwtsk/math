-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","mathematical_subject":"Computation.DataStructures","original_sha256":"70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/PFRProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao PFR blueprint-driven profile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ParameterDependency.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17

namespace Mathematics.Projects.Tao

structure ParameterDependency where
  parameterId : StableId
  downstreamDeclarationIds : List StableId
  downstreamBlueprintIds : List StableId
  deriving DecidableEq, Repr

structure PFRProfile where
  base : Projects.ProjectProfile
  blueprintArtifactIds : List StableId
  blueprintGraphIds : List StableId
  theoremBlueprintMapIds : List StableId
  issueIds : List StableId
  paperReferenceIds : List StableId
  parameterDependencies : List ParameterDependency
  stageIds : List StableId
  workflowIds : List StableId
  mathlibMigrationIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
