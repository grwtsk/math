-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCreationRequest.Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TheoremCreationRequest.Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13","mathematical_subject":"Computation.DataStructures","original_sha256":"eda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Stream/TheoremCreation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Stream.CurvatureBalance


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremCreationRequest.Varianteda1a6008ebab5fb924e7d57e184919c2231151617228e5419a87409c9cb9a13

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure TheoremCreationRequest where
  obligation : TheoremCreationObligation
  sourceWitnesses : List String
  proposedDeclarationName : String
  requiredClaimBoundaries : List String
  claimBoundary : List String

theorem theoremCreationRequest_boundary_visible
    (R : TheoremCreationRequest) :
    R.claimBoundary = R.claimBoundary :=
  rfl

end Stream
end BinaryLogicMatrix
end Surface.Legacy
