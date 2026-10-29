-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiShiftedCharlier.Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiShiftedCharlier.Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# Single-mode Charlier decision gate for the theta parity criterion

The verified signed-moment parity criterion quantifies over every finite theta
mode cutoff, including the one-mode cutoff `N = 1`.

For a single signed-Poisson mode, the Christoffel-Hankel determinant is governed
by a shifted Charlier recurrence.  This module records that recurrence in the
integer-normalized form

`C_0 = 1`,
`C_1(y) = 2y - 3`,
`C_(n+2)(y) = (2y-(2n+5)) C_(n+1)(y) + 4y(n+1) C_n(y)`.

The rank-seven polynomial is proved explicitly and is strictly negative at
`y = pi`.  The only remaining finite algebraic gate is the exact rank-seven
Hankel determinant factorization.  If that identity is established, the
currently verified sufficient parity criterion is refuted by the literal
one-mode source truncation at `t = 0`.

No claim about the full theta source signed jet is negated here: cancellation
between different literal theta modes can still restore the source sign.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiShiftedCharlier.Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open scoped BigOperators
noncomputable section

/-- Integer-normalized shifted Charlier recurrence for the one-mode
Christoffel determinant. -/
def thetaPhiShiftedCharlier : ℕ → ℝ → ℝ
  | 0 => fun _ => 1
  | 1 => fun y => 2 * y - 3
  | n + 2 => fun y =>
      (2 * y - (2 * n + 5 : ℕ)) *
          thetaPhiShiftedCharlier (n + 1) y +
        4 * y * (n + 1) *
          thetaPhiShiftedCharlier n y

/-- The first nontrivial candidate obstruction occurs at rank seven. -/
theorem thetaPhiShiftedCharlier_seven (y : ℝ) :
    thetaPhiShiftedCharlier 7 y =
      128 * y ^ 7 - 1344 * y ^ 6 + 10080 * y ^ 5 -
        58800 * y ^ 4 + 264600 * y ^ 3 -
          873180 * y ^ 2 + 1891890 * y - 2027025 := by
  norm_num [thetaPhiShiftedCharlier]
  ring

/-- After the shift `x = y - 3`, the rank-seven polynomial has one negative
constant term and otherwise positive coefficients. -/
theorem thetaPhiShiftedCharlier_seven_shift (y : ℝ) :
    thetaPhiShiftedCharlier 7 y =
      128 * (y - 3) ^ 7 + 1344 * (y - 3) ^ 6 +
        10080 * (y - 3) ^ 5 + 31920 * (y - 3) ^ 4 +
          103320 * (y - 3) ^ 3 + 74844 * (y - 3) ^ 2 +
            222642 * (y - 3) - 78975 := by
  rw [thetaPhiShiftedCharlier_seven]
  ring

/-- The rank-seven shifted Charlier factor is strictly negative at the literal
first theta mode coordinate `y = pi`. -/
theorem thetaPhiShiftedCharlier_seven_pi_neg :
    thetaPhiShiftedCharlier 7 Real.pi < 0 := by
  rw [thetaPhiShiftedCharlier_seven_shift]
  let x : ℝ := Real.pi - 3
  let r : ℝ := 177 / 1250
  have hx0 : 0 ≤ x := by
    dsimp [x]
    exact (sub_nonneg.mpr Real.pi_gt_three.le)
  have hxr : x ≤ r := by
    have hpi := Real.pi_lt_d4
    dsimp [x, r]
    norm_num at hpi ⊢
    linarith
  have h2 : x ^ 2 ≤ r ^ 2 :=
    pow_le_pow_left₀ hx0 hxr 2
  have h3 : x ^ 3 ≤ r ^ 3 :=
    pow_le_pow_left₀ hx0 hxr 3
  have h4 : x ^ 4 ≤ r ^ 4 :=
    pow_le_pow_left₀ hx0 hxr 4
  have h5 : x ^ 5 ≤ r ^ 5 :=
    pow_le_pow_left₀ hx0 hxr 5
  have h6 : x ^ 6 ≤ r ^ 6 :=
    pow_le_pow_left₀ hx0 hxr 6
  have h7 : x ^ 7 ≤ r ^ 7 :=
    pow_le_pow_left₀ hx0 hxr 7
  have hr :
      128 * r ^ 7 + 1344 * r ^ 6 +
          10080 * r ^ 5 + 31920 * r ^ 4 +
            103320 * r ^ 3 + 74844 * r ^ 2 +
              222642 * r - 78975 < 0 := by
    dsimp [r]
    norm_num
  change
    128 * x ^ 7 + 1344 * x ^ 6 +
        10080 * x ^ 5 + 31920 * x ^ 4 +
          103320 * x ^ 3 + 74844 * x ^ 2 +
            222642 * x - 78975 < 0
  nlinarith only [hxr, h2, h3, h4, h5, h6, h7, hr]

/-- Scalar multiplication of an entire jet pulls out one scalar from each row
of its Hankel determinant. -/
theorem signedJetDet_const_mul
    (k : ℕ) (c : ℝ) (jet : ℕ → ℝ) :
    signedJetDet k (fun n => c * jet n) =
      c ^ k * signedJetDet k jet := by
  unfold signedJetDet
  have hm :
      (Matrix.of fun i j : Fin k =>
        c * jet (i.val + j.val)) =
        c •
          (Matrix.of fun i j : Fin k =>
            jet (i.val + j.val)) := by
    ext i j
    simp [smul_eq_mul]
  rw [hm, Matrix.det_smul]
  simp only [Fintype.card_fin]
  ring

/-- Positive scalar carried by the literal first theta mode at the source
origin. -/
def thetaPhiFirstModeScale : ℝ :=
  thetaPhiDerivativeModeWeight 0 0

theorem thetaPhiFirstModeScale_pos :
    0 < thetaPhiFirstModeScale :=
  thetaPhiDerivativeModeWeight_pos 0 0

/-- The one-mode derivative truncation at the source origin is one positive
scalar times the polynomial jet evaluated at `pi`. -/
theorem thetaPhiDerivativeTapeTruncation_one_zero
    (n : ℕ) :
    thetaPhiDerivativeTapeTruncation 1 n 0 =
      thetaPhiFirstModeScale *
        (thetaPhiDerivativePolynomial n).eval Real.pi := by
  have hy : thetaModeY 0 0 = Real.pi := by
    norm_num [thetaModeY, thetaModeA]
  unfold thetaPhiDerivativeTapeTruncation
  rw [Fin.sum_univ_succ]
  simp only [Fin.sum_univ_zero, add_zero, Fin.val_zero]
  unfold thetaPhiDerivativeModeValue thetaPhiFirstModeScale
  rw [hy]

/-- Exact rank-seven finite determinant identity predicted by the one-mode
signed-Poisson/Charlier calculation.  This is the remaining decision gate, not
an assumption used elsewhere. -/
def ThetaPhiOneModeRankSevenCharlierBridge : Prop :=
  signedJetDet 7
      (fun n =>
        (thetaPhiDerivativePolynomial n).eval Real.pi) =
    (481311087274155850880779498291200 : ℝ) *
      Real.pi ^ 21 *
        thetaPhiShiftedCharlier 7 Real.pi

/-- The rank-seven polynomial jet is strictly negative once the finite Charlier
determinant bridge is supplied. -/
theorem thetaPhiOneModeRankSevenPolynomialJet_neg
    (hbridge : ThetaPhiOneModeRankSevenCharlierBridge) :
    signedJetDet 7
        (fun n =>
          (thetaPhiDerivativePolynomial n).eval Real.pi) < 0 := by
  rw [hbridge]
  have hc :
      0 <
        (481311087274155850880779498291200 : ℝ) *
          Real.pi ^ 21 := by
    positivity
  exact mul_neg_of_pos_of_neg hc
    thetaPhiShiftedCharlier_seven_pi_neg

/-- Consequently the literal one-mode rank-seven finite theta jet is strictly
negative if the Charlier determinant bridge is established. -/
theorem thetaPhiOneModeRankSevenTruncation_neg
    (hbridge : ThetaPhiOneModeRankSevenCharlierBridge) :
    signedJetDet 7
        (fun n =>
          thetaPhiDerivativeTapeTruncation 1 n 0) < 0 := by
  have hfun :
      (fun n =>
        thetaPhiDerivativeTapeTruncation 1 n 0) =
        fun n =>
          thetaPhiFirstModeScale *
            (thetaPhiDerivativePolynomial n).eval Real.pi := by
    funext n
    exact thetaPhiDerivativeTapeTruncation_one_zero n
  rw [hfun, signedJetDet_const_mul]
  exact mul_neg_of_pos_of_neg
    (pow_pos thetaPhiFirstModeScale_pos 7)
    (thetaPhiOneModeRankSevenPolynomialJet_neg hbridge)

/-- Therefore proving the exact rank-seven Charlier determinant identity would
refute the present all-cutoff parity criterion.  This does not refute the
literal infinite theta source theorem. -/
theorem not_thetaPhiSignedMomentParityCriterion_of_rankSevenBridge
    (hbridge : ThetaPhiOneModeRankSevenCharlierBridge) :
    ¬ ThetaPhiSignedMomentParityCriterion := by
  intro hparity
  have hnonneg :
      0 ≤ signedJetDet 7
        (fun n =>
          thetaPhiDerivativeTapeTruncation 1 n 0) :=
    signedJetDet_truncation_nonnegative_of_signedMomentParity
      hparity (by norm_num)
  have hneg :=
    thetaPhiOneModeRankSevenTruncation_neg hbridge
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
