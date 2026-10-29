-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetDet4.Variant0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiJetDet4.Variant0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiRankFourSource

/-!
# Exact rank-four theta source Wronskian

This module installs the symbolic 4x4 Hankel/Wronskian attached to the literal
theta source jet through derivative order six.  The determinant is expanded
exactly as a scalar polynomial and then normalized by the common positive
Gaussian factor already proved for the seven-entry source jet.

No positivity theorem is asserted here.  The remaining rank-four decision gate
is exactly the sign of the normalized scalar determinant.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiJetDet4.Variant0f57c6b5a54dcba0592c5c4872ff556f4cd6d7ea30b75cc9e0d754f31913c5f7

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- Scalar expansion of the 4x4 Hankel determinant carried by a seven-entry jet. -/
def thetaPhiJetDet4 (v : Fin 7 → ℝ) : ℝ :=
  v 0 * v 2 * v 4 * v 6 -
  v 0 * v 2 * (v 5) ^ 2 -
  v 0 * (v 3) ^ 2 * v 6 +
  2 * v 0 * v 3 * v 4 * v 5 -
  v 0 * (v 4) ^ 3 -
  (v 1) ^ 2 * v 4 * v 6 +
  (v 1) ^ 2 * (v 5) ^ 2 +
  2 * v 1 * v 2 * v 3 * v 6 -
  2 * v 1 * v 2 * v 4 * v 5 -
  2 * v 1 * (v 3) ^ 2 * v 5 +
  2 * v 1 * v 3 * (v 4) ^ 2 -
  (v 2) ^ 3 * v 6 +
  2 * (v 2) ^ 2 * v 3 * v 5 +
  (v 2) ^ 2 * (v 4) ^ 2 -
  3 * v 2 * (v 3) ^ 2 * v 4 +
  (v 3) ^ 4

/-- The scalar expansion is exactly the order-four Hankel matrix determinant. -/
theorem thetaPhiJetDet4_eq_matrix (v : Fin 7 → ℝ) :
    thetaPhiJetDet4 v =
      Matrix.det !![
        v 0, v 1, v 2, v 3;
        v 1, v 2, v 3, v 4;
        v 2, v 3, v 4, v 5;
        v 3, v 4, v 5, v 6] := by
  have h12 : (1 : Fin 4).succAbove (2 : Fin 3) = 3 := by decide
  have h22 : (2 : Fin 4).succAbove (2 : Fin 3) = 3 := by decide
  have h32 : (3 : Fin 4).succAbove (2 : Fin 3) = 2 := by decide
  rw [Matrix.det_succ_row_zero]
  simp [Matrix.det_fin_three, Fin.sum_univ_succ, thetaPhiJetDet4, h12, h22, h32]
  ring

/-- The literal rank-four source Wronskian. -/
def thetaPhiWronskianFour (t : ℝ) : ℝ :=
  thetaPhiJetDet4 (thetaPhiJet7 t)

/-- Matrix form of the literal rank-four Wronskian. -/
theorem thetaPhiWronskianFour_eq_matrix (t : ℝ) :
    thetaPhiWronskianFour t =
      Matrix.det !![
        thetaPhiJet7 t 0, thetaPhiJet7 t 1, thetaPhiJet7 t 2, thetaPhiJet7 t 3;
        thetaPhiJet7 t 1, thetaPhiJet7 t 2, thetaPhiJet7 t 3, thetaPhiJet7 t 4;
        thetaPhiJet7 t 2, thetaPhiJet7 t 3, thetaPhiJet7 t 4, thetaPhiJet7 t 5;
        thetaPhiJet7 t 3, thetaPhiJet7 t 4, thetaPhiJet7 t 5, thetaPhiJet7 t 6] := by
  exact thetaPhiJetDet4_eq_matrix (thetaPhiJet7 t)

/-- Exact outstanding rank-four sign target.  This is a proposition, not an
assumption and not a theorem supplied by the present module. -/
def ThetaPhiWronskianFourPositive : Prop :=
  ∀ t : ℝ, 0 ≤ t → 0 < thetaPhiWronskianFour t

/-- The normalized seven-entry mode jet after removing the common positive
factor from the literal source derivatives. -/
def thetaPhiNormalizedJet7 (t : ℝ) (k : Fin 7) : ℝ :=
  ∑' m : ℕ, ((m : ℝ) + 1) ^ 2 *
    thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
      Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))

/-- Exact factorization of each literal source derivative into its common
positive scalar and normalized mode sum. -/
theorem thetaPhiJet7_eq_commonFactor_mul_normalized (k : Fin 7) (t : ℝ) :
    thetaPhiJet7 t k =
      (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        thetaPhiNormalizedJet7 t k := by
  simpa only [thetaPhiNormalizedJet7] using thetaPhiJet7_eq_polynomial_sum k t

/-- The order-four Hankel polynomial is homogeneous of degree four. -/
theorem thetaPhiJetDet4_const_mul (c : ℝ) (v : Fin 7 → ℝ) :
    thetaPhiJetDet4 (fun k => c * v k) = c ^ 4 * thetaPhiJetDet4 v := by
  unfold thetaPhiJetDet4
  ring

/-- The rank-four Wronskian factors into a strictly positive fourth power and
one normalized determinant.  Thus every remaining sign issue is confined to
the normalized mode jet. -/
theorem thetaPhiWronskianFour_eq_normalized (t : ℝ) :
    thetaPhiWronskianFour t =
      (Real.pi * Real.exp (5 * t - thetaModeA t)) ^ 4 *
        thetaPhiJetDet4 (thetaPhiNormalizedJet7 t) := by
  unfold thetaPhiWronskianFour
  rw [show thetaPhiJet7 t =
      fun k => (Real.pi * Real.exp (5 * t - thetaModeA t)) *
        thetaPhiNormalizedJet7 t k by
    funext k
    exact thetaPhiJet7_eq_commonFactor_mul_normalized k t]
  simpa using (thetaPhiJetDet4_const_mul
    (Real.pi * Real.exp (5 * t - thetaModeA t)) (thetaPhiNormalizedJet7 t))

/-- The scalar removed in the normalized rank-four reduction is strictly positive. -/
theorem thetaPhiWronskianFour_commonFactor_pos (t : ℝ) :
    0 < (Real.pi * Real.exp (5 * t - thetaModeA t)) ^ 4 := by
  positivity

/-- Absolute convergence of every coordinate used by the normalized
rank-four determinant. -/
theorem thetaPhiNormalizedJet7_summable (k : Fin 7) (t : ℝ) :
    Summable (fun m : ℕ => ((m : ℝ) + 1) ^ 2 *
      thetaPhiJetPolynomial7 k (thetaModeA t * ((m : ℝ) + 1) ^ 2) *
        Real.exp (-thetaModeA t * (((m : ℝ) + 1) ^ 2 - 1))) :=
  thetaPhiJet7_polynomial_summable k t

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
