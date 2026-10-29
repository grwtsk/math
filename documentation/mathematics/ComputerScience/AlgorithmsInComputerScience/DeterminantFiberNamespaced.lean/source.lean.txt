-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","mathematical_subject":"Computation.DataStructures","original_sha256":"f46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/DeterminantFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.PascalTree.TensorExpression


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReductionCandidate.Variantf46302ffab3901c46771cea29132ac01026e6d355c493c940c83852772572f86

namespace Surface
namespace Legacy
namespace PascalTree

structure ReductionCandidate where
  id : Nat
  expression : BinaryLogicMatrixTensorExpression
  payload : ReductionPayload
  claimBoundary : AffineTopos.AffineClaimBoundary

structure DeterminantFiber where
  determinant : DeterminantDescriptor
  candidates : List ReductionCandidate
  determinantAdmissible : determinant.admissible
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem determinantFiber_square_required
    (fiber : DeterminantFiber) :
    fiber.determinant.kind = DeterminantDescriptorKind.actualSquare ∨
      fiber.determinant.kind = DeterminantDescriptorKind.boundedSurrogate := by
  exact fiber.determinantAdmissible

theorem determinantFiber_boundary_visible
    (fiber : DeterminantFiber) :
    fiber.claimBoundary = fiber.claimBoundary := by
  rfl

end PascalTree
end Legacy
end Surface
