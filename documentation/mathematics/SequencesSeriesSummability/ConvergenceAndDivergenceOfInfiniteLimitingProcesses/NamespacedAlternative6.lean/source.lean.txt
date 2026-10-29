-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ThetaExpThreeGtTwenty.Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ThetaExpThreeGtTwenty.Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"c9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/c9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials
import Mathlib.Analysis.Normed.Group.InfiniteSum


/-!
# Explicit higher-mode bounds for the first five theta source jets

Modes from `n = 3` onward are controlled by a geometric majorant. The scalar
bounds use only `A ≥ 3`, degree at most twelve, and exact exponential Taylor
inequalities. Combining them with the proved jet-polynomial bounds gives the
explicit error coefficients used by the source Wronskian estimate. Every signed
remainder is absolutely summable before its sum is bounded. No numerical oracle
or unproved source sign is used.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ThetaExpThreeGtTwenty.Variantc9b7349fca932221f8f49093990be9ccaddf7b50e35a03b533534ca6738a813b

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section
open scoped BigOperators

/-- A rational Taylor bound for the exponential used by the higher-mode estimate. -/
theorem thetaExpThree_gt_twenty : (20 : ℝ) < Real.exp 3 := by
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 9
  norm_num [Finset.sum_range_succ, Nat.factorial] at h
  linarith

private def gaussianFromThree (A : ℝ) (p m : ℕ) : ℝ :=
  ((m : ℝ) + 3) ^ p * Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))

private theorem gaussian_ratio_half : (2 : ℝ) ^ 12 * Real.exp (-21) ≤ 1 / 2 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty (by norm_num : (0 : ℝ) ≤ 20)
    (by decide : (7 : ℕ) ≠ 0)
  have he : Real.exp (21 : ℝ) = Real.exp 3 ^ 7 := by
    convert! Real.exp_nat_mul (3 : ℝ) 7 using 1
    norm_num
  rw [Real.exp_neg, he]
  norm_num at h ⊢
  apply (div_le_iff₀ (by positivity)).mpr
  linarith

private theorem gaussianFromThree_succ_le {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) (m : ℕ) :
    gaussianFromThree A p (m + 1) ≤ (1 / 2) * gaussianFromThree A p m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hp0 : ((m : ℝ) + 4) ^ p ≤ (2 * ((m : ℝ) + 3)) ^ p :=
    pow_le_pow_left₀ (by positivity) (by linarith) _
  have hp1 : (2 : ℝ) ^ p ≤ 2 ^ 12 := pow_le_pow_right₀ (by norm_num) hp
  have hpow : ((m : ℝ) + 4) ^ p ≤ 2 ^ 12 * ((m : ℝ) + 3) ^ p := by
    rw [mul_pow] at hp0
    exact hp0.trans (mul_le_mul_of_nonneg_right hp1 (by positivity))
  have hgap : 21 ≤ A * (2 * (m : ℝ) + 7) := by
    nlinarith [mul_nonneg (show 0 ≤ A - 3 by linarith) hm]
  have he : Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) ≤
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) := by
    apply Real.exp_le_exp.mpr
    nlinarith only [hgap]
  unfold gaussianFromThree
  push_cast
  calc
    _ = ((m : ℝ) + 4) ^ p * Real.exp (-A * (((m : ℝ) + 4) ^ 2 - 1)) := by ring_nf
    _ ≤ (2 ^ 12 * ((m : ℝ) + 3) ^ p) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1) - 21) :=
      mul_le_mul hpow he (by positivity) (by positivity)
    _ = ((2 : ℝ) ^ 12 * Real.exp (-21)) * gaussianFromThree A p m := by
      rw [Real.exp_sub, Real.exp_neg]
      unfold gaussianFromThree
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_right gaussian_ratio_half
      (by unfold gaussianFromThree; positivity)

private theorem gaussianFromThree_geometric {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) (m : ℕ) :
    gaussianFromThree A p m ≤ gaussianFromThree A p 0 * (1 / 2 : ℝ) ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
    calc
      _ ≤ (1 / 2) * gaussianFromThree A p m := gaussianFromThree_succ_le hA p hp m
      _ ≤ (1 / 2) * (gaussianFromThree A p 0 * (1 / 2 : ℝ) ^ m) :=
        mul_le_mul_of_nonneg_left ih (by norm_num)
      _ = _ := by rw [pow_succ]; ring

/-- Every shifted Gaussian moment through degree twelve converges. -/
theorem thetaGaussianFromThree_summable {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) :
    Summable (fun m : ℕ => ((m : ℝ) + 3) ^ p *
      Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  change Summable (gaussianFromThree A p)
  apply ((summable_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left (gaussianFromThree A p 0)).of_nonneg_of_le
  · intro m
    unfold gaussianFromThree
    positivity
  · exact gaussianFromThree_geometric hA p hp

/-- The entire shifted Gaussian remainder is at most twice its first term. -/
theorem thetaGaussianFromThree_tsum_le {A : ℝ} (hA : 3 ≤ A)
    (p : ℕ) (hp : p ≤ 12) :
    (∑' m : ℕ, ((m : ℝ) + 3) ^ p * Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) ≤
      2 * 3 ^ p * Real.exp (-8 * A) := by
  have h := (thetaGaussianFromThree_summable hA p hp).tsum_le_tsum
    (gaussianFromThree_geometric hA p hp)
    ((summable_geometric_of_norm_lt_one
      (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)).mul_left (gaussianFromThree A p 0))
  rw [tsum_mul_left, tsum_geometric_of_norm_lt_one
    (by norm_num : ‖(1 / 2 : ℝ)‖ < 1)] at h
  change (∑' m, gaussianFromThree A p m) ≤ _
  apply h.trans_eq
  simp only [gaussianFromThree, Nat.cast_zero, zero_add]
  norm_num
  ring_nf

/-- A uniform rational upper bound for the exponential remainder factor. -/
theorem thetaGaussian_exp_neg_eight_le {A : ℝ} (hA : 3 ≤ A) :
    Real.exp (-8 * A) ≤ 1 / 20 ^ 8 := by
  have hpow := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 8
  have h24 : Real.exp (24 : ℝ) = Real.exp 3 ^ 8 := by
    convert! Real.exp_nat_mul (3 : ℝ) 8 using 1
    norm_num
  calc
    Real.exp (-8 * A) ≤ Real.exp (-24) := Real.exp_le_exp.mpr (by linarith)
    _ = 1 / Real.exp 24 := by rw [Real.exp_neg, one_div]
    _ ≤ 1 / 20 ^ 8 := one_div_le_one_div_of_le (by positivity) (by rwa [h24])

/-- Exponential decay bounds the ninth-power coordinate error by a rational constant. -/
theorem thetaGaussian_ninth_power_bound {A : ℝ} (hA : 3 ≤ A) :
    A ^ 9 * Real.exp (-8 * A) ≤ 3 ^ 9 / 20 ^ 8 := by
  have ha : 0 ≤ A := by linarith
  have he : A ≤ 3 * Real.exp ((A - 3) / 3) := by
    have h := Real.add_one_le_exp ((A - 3) / 3)
    linarith
  have hp := pow_le_pow_left₀ ha he 9
  have hexp : (3 * Real.exp ((A - 3) / 3)) ^ 9 =
      3 ^ 9 * Real.exp (3 * (A - 3)) := by
    rw [mul_pow, ← Real.exp_nat_mul]
    congr 2
    norm_num
    ring
  rw [hexp] at hp
  have hprod := mul_le_mul_of_nonneg_right hp (Real.exp_nonneg (-8 * A))
  have heq : (3 ^ 9 * Real.exp (3 * (A - 3))) * Real.exp (-8 * A) =
      3 ^ 9 * Real.exp (-5 * A - 9) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [heq] at hprod
  have ht : Real.exp (-5 * A - 9) ≤ Real.exp (-24) := Real.exp_le_exp.mpr (by linarith)
  have hpow := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 20) thetaExpThree_gt_twenty.le 8
  have h24 : Real.exp (24 : ℝ) = Real.exp 3 ^ 8 := by
    convert! Real.exp_nat_mul (3 : ℝ) 8 using 1
    norm_num
  have hlast : Real.exp (-24 : ℝ) ≤ 1 / 20 ^ 8 := by
    rw [Real.exp_neg, ← one_div]
    apply one_div_le_one_div_of_le (by positivity)
    rwa [h24]
  calc
    _ ≤ 3 ^ 9 * Real.exp (-5 * A - 9) := hprod
    _ ≤ 3 ^ 9 * Real.exp (-24) := mul_le_mul_of_nonneg_left ht (by positivity)
    _ ≤ 3 ^ 9 * (1 / 20 ^ 8) := mul_le_mul_of_nonneg_left hlast (by positivity)
    _ = _ := by ring

/-- Explicit error coefficient for a source jet through order four. -/
def thetaPhiJetErrorCoefficient (k : Fin 5) : ℝ :=
  4 * 4 ^ k.val * 3 ^ (2 * k.val + 4)

/-- The five error coefficients are exact integers. -/
theorem thetaPhiJetErrorCoefficient_values :
    thetaPhiJetErrorCoefficient = ![324, 11664, 419904, 15116544, 544195584] := by
  funext k
  fin_cases k <;> norm_num [thetaPhiJetErrorCoefficient]

private def jetRemainderTerm (k : Fin 5) (A : ℝ) (m : ℕ) : ℝ :=
  ((m : ℝ) + 3) ^ 2 * thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
    Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))

private theorem jetRemainderTerm_norm_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) (m : ℕ) :
    ‖jetRemainderTerm k A m‖ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
      (((m : ℝ) + 3) ^ (2 * k.val + 4) * Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hn : 1 ≤ ((m : ℝ) + 3) ^ 2 := by nlinarith
  have hy : 3 ≤ A * ((m : ℝ) + 3) ^ 2 := by
    nlinarith [mul_nonneg (show 0 ≤ A by linarith) (sub_nonneg.mpr hn)]
  have hp := thetaPhiJetPolynomial_abs_le k hy
  unfold jetRemainderTerm
  rw [norm_mul, norm_mul, Real.norm_of_nonneg (sq_nonneg _), Real.norm_eq_abs,
    Real.norm_of_nonneg (Real.exp_pos _).le]
  calc
    _ ≤ ((m : ℝ) + 3) ^ 2 * (2 * 4 ^ k.val * (A * ((m : ℝ) + 3) ^ 2) ^ (k.val + 1)) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1)) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hp (sq_nonneg _)) (Real.exp_pos _).le
    _ = _ := by simp only [mul_pow, pow_add, pow_mul]; ring

/-- The signed raw jet remainder from mode three onward is absolutely summable. -/
theorem thetaPhiJet_remainder_summable (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    Summable (fun m : ℕ => ((m : ℝ) + 3) ^ 2 *
      thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := by
  change Summable (jetRemainderTerm k A)
  exact (((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
    (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
      (fun m => norm_nonneg _) (jetRemainderTerm_norm_le k hA)).of_norm

/-- A complete absolute error bound for each raw source jet beyond the first two modes. -/
theorem thetaPhiJet_remainder_abs_le (k : Fin 5) {A : ℝ} (hA : 3 ≤ A) :
    |∑' m : ℕ, ((m : ℝ) + 3) ^ 2 *
      thetaPhiJetPolynomial k (A * ((m : ℝ) + 3) ^ 2) *
        Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))| ≤
      thetaPhiJetErrorCoefficient k * A ^ (k.val + 1) * Real.exp (-8 * A) := by
  have hnorm : Summable (fun m => ‖jetRemainderTerm k A m‖) :=
    ((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1))).of_nonneg_of_le
        (fun m => norm_nonneg _) (jetRemainderTerm_norm_le k hA)
  have hsum := hnorm.tsum_le_tsum (jetRemainderTerm_norm_le k hA)
    ((thetaGaussianFromThree_summable hA (2 * k.val + 4) (by omega)).mul_left
      (2 * 4 ^ k.val * A ^ (k.val + 1)))
  rw [tsum_mul_left] at hsum
  calc
    _ = ‖∑' m, jetRemainderTerm k A m‖ := (Real.norm_eq_abs _).symm
    _ ≤ ∑' m, ‖jetRemainderTerm k A m‖ := norm_tsum_le_tsum_norm hnorm
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (∑' m : ℕ, ((m : ℝ) + 3) ^ (2 * k.val + 4) *
          Real.exp (-A * (((m : ℝ) + 3) ^ 2 - 1))) := hsum
    _ ≤ (2 * 4 ^ k.val * A ^ (k.val + 1)) *
        (2 * 3 ^ (2 * k.val + 4) * Real.exp (-8 * A)) :=
      mul_le_mul_of_nonneg_left (thetaGaussianFromThree_tsum_le hA (2 * k.val + 4) (by omega))
        (by positivity)
    _ = _ := by unfold thetaPhiJetErrorCoefficient; ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
