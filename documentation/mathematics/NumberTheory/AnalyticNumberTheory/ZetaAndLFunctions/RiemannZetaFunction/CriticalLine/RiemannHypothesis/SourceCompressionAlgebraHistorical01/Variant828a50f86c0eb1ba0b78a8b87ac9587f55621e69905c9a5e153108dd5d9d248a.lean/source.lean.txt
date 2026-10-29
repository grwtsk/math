-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedSquareCompletion.Variantbd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SignedSquareCompletion.Variantbd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/finite-energy-replays/hilbert-replay/SourceCompressionAlgebra.historical01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
Generic compression algebra for the exact signed source energy.
These lemmas do not identify the two actual Abel rows or prove their compensated budget.
AI attribution: OpenAI Codex. Local candidate; no accepted-source claim.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SignedSquareCompletion.Variantbd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompressionAlgebra
open scoped RealInnerProductSpace
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Positive-direction completion keeps the independent compensation together. -/
theorem signed_square_completion (G : ℝ) (X Y : H) :
    G - inner ℝ X Y = G + (‖X - Y‖ ^ 2 - ‖X + Y‖ ^ 2) / 4 := by
  rw [norm_sub_sq_real, norm_add_sq_real]
  ring

/-- The exact positive block has operator constant one half in the sum-square source norm. -/
theorem negative_cross_le_half_energy (X Y : H) :
    -inner ℝ X Y ≤ (‖X‖ ^ 2 + ‖Y‖ ^ 2) / 2 := by
  have hp := sq_nonneg ‖X + Y‖
  rw [norm_add_sq_real] at hp
  linarith

/-- A Bessel lower bound for mismatch points in the wrong direction for the required upper bound. -/
theorem mismatch_lower_is_signed_lower (G P D J : ℝ)
    (hP : J ≤ P) : G + (P - D) / 4 ≥ G + (J - D) / 4 := by
  linarith

/-- Even one negative-rank direction of magnitude L gives positive readout L. -/
theorem opposite_row_readout (X : H) :
    -inner ℝ X (-X) = ‖X‖ ^ 2 := by
  rw [inner_neg_right, real_inner_self_eq_norm_sq]
  ring

/-- The same fixed unit operator admits arbitrarily large free-row quadratic values. -/
theorem opposite_row_scale_readout (X : H) (L : ℝ) :
    -inner ℝ (L • X) (-(L • X)) = L ^ 2 * ‖X‖ ^ 2 := by
  rw [opposite_row_readout, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]

#print axioms signed_square_completion
#print axioms negative_cross_le_half_energy
#print axioms mismatch_lower_is_signed_lower
#print axioms opposite_row_readout
#print axioms opposite_row_scale_readout
end FormalResearch.RiemannHypothesis.SourceCompressionAlgebra
