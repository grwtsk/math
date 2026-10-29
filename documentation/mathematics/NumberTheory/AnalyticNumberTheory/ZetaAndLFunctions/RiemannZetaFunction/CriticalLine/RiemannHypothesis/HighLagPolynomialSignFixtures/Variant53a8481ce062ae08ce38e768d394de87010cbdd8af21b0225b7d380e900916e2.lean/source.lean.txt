-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedEdgeIsNegative.Varianta3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FixedEdgeIsNegative.Varianta3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle27/regent-high-work-certificate-investigation-v1/HighLagPolynomialSignFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceHighLagPolynomialSign

/-!
UNCOMPILED hostile fixtures for the independent polynomial certificate.
These statements concern the computed algebraic coefficient only. They do not
claim a checked transport to the normalized source integral or actual state.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedEdgeIsNegative.Varianta3d03067170a947f7c233f4cba1a6b4e20b3f53698e8a8652c8cab8a09917b38

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.HighLagPolynomialSignFixtures

open SourceHighLagPolynomialSign

theorem fixed_edge_is_negative : algebraicEdgeCoefficient 10 < 0 :=
  algebraicEdgeCoefficient_neg (by norm_num)

theorem fixed_edge_is_not_nonnegative : ¬ 0 ≤ algebraicEdgeCoefficient 10 := by
  exact not_le_of_gt fixed_edge_is_negative

theorem every_larger_edge_is_negative (A : ℝ) (hA : 10 ≤ A) :
    algebraicEdgeCoefficient A < 0 := algebraicEdgeCoefficient_neg hA

theorem positive_normalization_does_not_repair_sign :
    algebraicEdgeCoefficient 10 / (10 * (123 : ℝ)) < 0 :=
  algebraicEdgeCoefficient_normalized_neg (by norm_num) (by norm_num)

theorem eventual_nonnegative_route_is_refuted :
    ¬ ∃ R : ℝ, ∀ A : ℝ, R ≤ A → 0 ≤ algebraicEdgeCoefficient A :=
  not_eventually_algebraicEdgeCoefficient_nonneg

end FormalResearch.RiemannHypothesis.HighLagPolynomialSignFixtures
