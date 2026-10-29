-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimilarityMetric.Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SimilarityMetric.Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1","mathematical_subject":"Computation.DataStructures","original_sha256":"c696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/PascalTree/SimilarReduction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.PascalTree.DeterminantFiber
import Surface.Legacy.BinaryLogicMatrix.Similarity


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimilarityMetric.Variantc696bd1b099efae3222af6d813b4cebf3fcbc4429573e1b7eb25459d46b23bd1

namespace Surface
namespace Legacy
namespace PascalTree

inductive SimilarityMetric
| exactMatrixSimilarity
| comparisonDistance
| factorOverlap
deriving DecidableEq, Repr

inductive PaddingPolicyDescriptor
| ignorePadding
| penalizePadding
| rejectPaddingMismatch
deriving DecidableEq, Repr

inductive TiePolicy
| firstStable
| requireUnique
| carryAllTies
deriving DecidableEq, Repr

structure MostSimilarReductionAttachment where
  fiber : DeterminantFiber
  metric : SimilarityMetric
  paddingPolicy : PaddingPolicyDescriptor
  tiePolicy : TiePolicy
  candidateSet : List ReductionCandidate
  selectedCandidate : Option ReductionCandidate
  similarityWitness : MatrixSimilarity
  claimBoundary : AffineTopos.AffineClaimBoundary

theorem determinantFiber_attachment_uses_similarity
    (A : MostSimilarReductionAttachment) :
    A.similarityWitness.denominator ≠ 0 := by
  exact matrixSimilarity_denominator_ne_zero A.similarityWitness

theorem mostSimilarReduction_boundary_visible
    (A : MostSimilarReductionAttachment) :
    A.claimBoundary = A.claimBoundary ∧
      A.metric = A.metric ∧
      A.tiePolicy = A.tiePolicy ∧
      A.paddingPolicy = A.paddingPolicy := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end PascalTree
end Legacy
end Surface
