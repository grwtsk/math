-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactParameter.Variantbf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExactParameter.Variantbf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c","mathematical_subject":"Computation.DataStructures","original_sha256":"bf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projects/Tao/PNTPlusProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projects.Profile

/-! # Tao PNT+ explicit-estimate profile -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactParameter.Variantbf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c

namespace Mathematics.Projects.Tao

structure ExactParameter where
  parameterId : StableId
  exactValueDigest : Option Digest
  intervalEnclosureDigest : Option Digest
  literatureSourceId : StableId
  literatureDate : String
  checkerVersionDigest : Digest
  deriving DecidableEq, Repr

structure ParameterEdge where
  sourceParameterId : StableId
  targetTheoremId : StableId
  transformationDigest : Digest
  deriving DecidableEq, Repr

structure PNTPlusProfile where
  base : Projects.ProjectProfile
  theoremNodeIds : List StableId
  parameters : List ExactParameter
  dependencies : List ParameterEdge
  numericalCheckerIds : List StableId
  blueprintArtifactIds : List StableId
  issueIds : List StableId
  sourcePaperIds : List StableId
  proofProducingValidationRequired : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
