-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictLogSlopeCrossPositive.Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.StrictLogSlopeCrossPositive.Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankThreePropagation
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Order.Monotone.Basic

/-!
# Arbitrary rank-three sign regularity from the consecutive theta-tail seed

The common-tail propagation theorem gives every consecutive triple
`T_r,T_(r+2),T_(r+4)`.  This module supplies the two remaining ingredients.

First, the strict source log-slope propagates through the entire tail hierarchy.
Consequently the two-step ratio `T_(r+2)/T_r` is strictly antitone.  At two
strictly ordered nodes, the normalized row coordinate
`T_(2n)(y)/T_(2n)(x)` therefore decreases strictly with n.

Second, a generic discrete-convexity theorem says that a point sequence with
strictly decreasing first coordinate and consistently oriented consecutive
triples has the same orientation for every increasing triple.  Its proof uses
adjacent secant slopes and finite weighted averages; no new theta-source
estimate is introduced.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.StrictLogSlopeCrossPositive.Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set Filter
open scoped BigOperators Topology
noncomputable section

/-- Strict log-slope ordering gives a strict denominator-free cross-product. -/
theorem strictLogSlope_cross_positive {f : ℝ → ℝ}
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t u : ℝ} (ht : 0 ≤ t) (htu : t < u) :
    0 < deriv f t * f u - f t * deriv f u := by
  have h := (div_lt_div_iff₀ (hp u (ht.trans htu.le)) (hp t ht)).mp
    (ha ht (ht.trans htu.le) htu)
  nlinarith only [h]

private theorem strictLogSlope_integrand_integrable
    {f : ℝ → ℝ} (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv f t * f u - f t * deriv f u) (Ici t) :=
  ((hi.mono_set (Ici_subset_Ici.mpr ht)).const_mul _).sub
    ((hdi.mono_set (Ici_subset_Ici.mpr ht)).const_mul _)

/-- Strict source log-slope makes the exact first-tail numerator strictly positive. -/
theorem integralTail_logSlope_positive {f : ℝ → ℝ}
    (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Filter.Tendsto f Filter.atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ)))
    {t : ℝ} (ht : 0 ≤ t) :
    0 < f t ^ 2 + integralTail f t * deriv f t := by
  rw [integralTail_logSlope_identity hd hi hdi hz ht]
  have hint := strictLogSlope_integrand_integrable hi hdi ht
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_ hint).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have htu : t < u := by have := hu.1; linarith
    exact ⟨(strictLogSlope_cross_positive hp ha ht htu).ne', htu.le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact logSlope_cross_nonnegative hp ha.antitoneOn ht hu

/-- Strict log-slope makes the first-tail/source ratio strictly antitone. -/
theorem integralTail_ratio_strictAnti {f : ℝ → ℝ}
    (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Filter.Tendsto f Filter.atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    StrictAntiOn (fun u => integralTail f u / f u) (Ici (0 : ℝ)) := by
  have hderiv (t : ℝ) (ht : 0 ≤ t) := hasDerivAt_integralTail_ratio hd hi (hp t ht).ne'
  apply strictAntiOn_of_deriv_neg (convex_Ici 0)
  · intro t ht
    exact (hderiv t ht).continuousAt.continuousWithinAt
  · intro t ht
    rw [(hderiv t (interior_subset ht)).deriv]
    exact div_neg_of_neg_of_pos
      (neg_neg_of_pos
        (integralTail_logSlope_positive hd hi hdi hz hp ha (interior_subset ht)))
      (sq_pos_of_pos (hp t (interior_subset ht)))

/-- Strict antitonicity of the logarithmic slope is inherited by one upper tail. -/
theorem integralTail_logSlope_strictAnti {f : ℝ → ℝ}
    (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Filter.Tendsto f Filter.atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    StrictAntiOn (fun u => deriv (integralTail f) u / integralTail f u) (Ici (0 : ℝ)) := by
  intro x hx y hy hxy
  change deriv (integralTail f) y / integralTail f y <
    deriv (integralTail f) x / integralTail f x
  rw [(hasDerivAt_integralTail hd.continuous hi y).deriv,
    (hasDerivAt_integralTail hd.continuous hi x).deriv]
  have hr := integralTail_ratio_strictAnti hd hi hdi hz hp ha hx hy hxy
  have hcross := (div_lt_div_iff₀ (hp y hy) (hp x hx)).mp hr
  apply (div_lt_div_iff₀ (integralTail_positive hi hp hy)
    (integralTail_positive hi hp hx)).mpr
  nlinarith only [hcross]

/-- Every actual theta tail has strictly decreasing logarithmic slope. -/
theorem thetaTail_logSlope_strictAnti (r : ℕ) :
    StrictAntiOn (fun t : ℝ => deriv (thetaTail r) t / thetaTail r t) (Ici 0) := by
  induction r with
  | zero => exact thetaPhi_logSlope_strictAnti
  | succ r ih =>
      have h := integralTail_logSlope_strictAnti (differentiable_thetaTail r)
        (thetaTail_integrableOn r) (deriv_thetaTail_integrableOn r)
        (thetaTail_tendsto_atTop r) (fun u hu => thetaTail_positive r hu) ih
      have he (u : ℝ) (hu : 0 ≤ u) :
          deriv (thetaTail (r + 1)) u / thetaTail (r + 1) u =
            deriv (integralTail (thetaTail r)) u / integralTail (thetaTail r) u := by
        rw [(hasDerivAt_thetaTail_succ r u).deriv,
          (hasDerivAt_integralTail (continuous_thetaTail r) (thetaTail_integrableOn r) u).deriv]
        rw [thetaTail_succ_eq_integral r hu]
        rfl
      intro x hx y hy hxy
      change deriv (thetaTail (r + 1)) y / thetaTail (r + 1) y <
        deriv (thetaTail (r + 1)) x / thetaTail (r + 1) x
      rw [he x hx, he y hy]
      exact h hx hy hxy

/-- Every consecutive tail ratio is strictly antitone. -/
theorem thetaTail_succ_div_strictAnti (r : ℕ) :
    StrictAntiOn (fun t : ℝ => thetaTail (r + 1) t / thetaTail r t) (Ici 0) := by
  have h := integralTail_ratio_strictAnti (differentiable_thetaTail r)
    (thetaTail_integrableOn r) (deriv_thetaTail_integrableOn r)
    (thetaTail_tendsto_atTop r) (fun u hu => thetaTail_positive r hu)
    (thetaTail_logSlope_strictAnti r)
  intro x hx y hy hxy
  change thetaTail (r + 1) y / thetaTail r y <
    thetaTail (r + 1) x / thetaTail r x
  rw [thetaTail_succ_eq_integral r hx, thetaTail_succ_eq_integral r hy]
  exact h hx hy hxy

/-- The ratio two tail orders apart is strictly antitone. -/
theorem thetaTail_add_two_div_strictAnti (r : ℕ) :
    StrictAntiOn (fun t : ℝ => thetaTail (r + 2) t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  have h1 := thetaTail_succ_div_strictAnti r hx hy hxy
  have h2 := thetaTail_succ_div_strictAnti (r + 1) hx hy hxy
  have p1y : 0 < thetaTail (r + 1) y / thetaTail r y :=
    div_pos (thetaTail_positive _ hy) (thetaTail_positive _ hy)
  have p2x : 0 < thetaTail (r + 2) x / thetaTail (r + 1) x :=
    div_pos (thetaTail_positive _ hx) (thetaTail_positive _ hx)
  have ey : thetaTail (r + 2) y / thetaTail r y =
      (thetaTail (r + 2) y / thetaTail (r + 1) y) *
        (thetaTail (r + 1) y / thetaTail r y) := by
    field_simp [(thetaTail_positive (r + 1) hy).ne']
  have ex : thetaTail (r + 2) x / thetaTail r x =
      (thetaTail (r + 2) x / thetaTail (r + 1) x) *
        (thetaTail (r + 1) x / thetaTail r x) := by
    field_simp [(thetaTail_positive (r + 1) hx).ne']
  change thetaTail (r + 2) y / thetaTail r y <
    thetaTail (r + 2) x / thetaTail r x
  rw [ey, ex]
  exact (mul_lt_mul_of_pos_right h2 p1y).trans
    (mul_lt_mul_of_pos_left h1 p2x)

/-- At two strictly ordered nodes, normalized even-tail rows decrease strictly with the order. -/
theorem thetaTail_even_nodeRatio_step
    {x y : ℝ} (hx : 0 ≤ x) (hxy : x < y) (n : ℕ) :
    thetaTail (2 * (n + 1)) y / thetaTail (2 * (n + 1)) x <
      thetaTail (2 * n) y / thetaTail (2 * n) x := by
  have hy : 0 ≤ y := hx.trans hxy.le
  have h := thetaTail_add_two_div_strictAnti (2 * n) hx hy hxy
  have hc := (div_lt_div_iff₀ (thetaTail_positive (2 * n) hy)
    (thetaTail_positive (2 * n) hx)).mp h
  apply (div_lt_div_iff₀ (thetaTail_positive (2 * (n + 1)) hx)
    (thetaTail_positive (2 * n) hx)).mpr
  norm_num only [Nat.mul_add, Nat.mul_one] at hc ⊢
  nlinarith only [hc]

/-- Positive adjacent drop of a strictly decreasing sequence. -/
def discreteDrop (A : ℕ → ℝ) (n : ℕ) : ℝ := A n - A (n + 1)

/-- Secant slope over one discrete step, written with positive first-coordinate drop. -/
def discreteSlope (A B : ℕ → ℝ) (n : ℕ) : ℝ :=
  discreteDrop B n / discreteDrop A n

private theorem sum_Ico_discreteDrop (A : ℕ → ℝ) {i j : ℕ} (hij : i ≤ j) :
    ∑ n ∈ Finset.Ico i j, discreteDrop A n = A i - A j := by
  induction j, hij using Nat.le_induction with
  | base => simp [discreteDrop]
  | succ j hij ih =>
      rw [Finset.sum_Ico_succ_top hij, ih]
      simp only [discreteDrop]
      ring

private theorem sum_Ico_slope_mul_drop
    (A B : ℕ → ℝ) (hA : ∀ n, A (n + 1) < A n)
    {i j : ℕ} (hij : i ≤ j) :
    ∑ n ∈ Finset.Ico i j, discreteSlope A B n * discreteDrop A n =
      B i - B j := by
  calc
    _ = ∑ n ∈ Finset.Ico i j, discreteDrop B n := by
      apply Finset.sum_congr rfl
      intro n _
      unfold discreteSlope discreteDrop
      field_simp [(sub_pos.mpr (hA n)).ne']
    _ = _ := sum_Ico_discreteDrop B hij

/-- Consecutive normalized rank-three signs make the adjacent discrete slopes antitone. -/
theorem discreteSlope_antitone_of_consecutive_det
    (A B : ℕ → ℝ) (hA : ∀ n, A (n + 1) < A n)
    (hdet : ∀ n,
      Matrix.det !![1, 1, 1;
        A n, A (n + 1), A (n + 2);
        B n, B (n + 1), B (n + 2)] ≤ 0) :
    Antitone (discreteSlope A B) := by
  apply antitone_nat_of_succ_le
  intro n
  have hd := hdet n
  rw [det_fin_three_normalized_eq_differences] at hd
  have hcross :
      discreteDrop A n * discreteDrop B (n + 1) ≤
        discreteDrop A (n + 1) * discreteDrop B n := by
    unfold discreteDrop
    nlinarith only [hd]
  apply (div_le_div_iff₀ (sub_pos.mpr (hA (n + 1))) (sub_pos.mpr (hA n))).mpr
  unfold discreteDrop at hcross ⊢
  nlinarith only [hcross]

/-- Consecutive orientation plus strict first-coordinate decrease controls every triple. -/
theorem normalized_det_nonpos_of_consecutive
    (A B : ℕ → ℝ) (hA : ∀ n, A (n + 1) < A n)
    (hdet : ∀ n,
      Matrix.det !![1, 1, 1;
        A n, A (n + 1), A (n + 2);
        B n, B (n + 1), B (n + 2)] ≤ 0)
    {i j k : ℕ} (hij : i < j) (hjk : j < k) :
    Matrix.det !![1, 1, 1; A i, A j, A k; B i, B j, B k] ≤ 0 := by
  have hanti : StrictAnti A := strictAnti_nat_of_succ_lt hA
  have hS := discreteSlope_antitone_of_consecutive_det A B hA hdet
  have hAij : 0 < A i - A j := sub_pos.mpr (hanti hij)
  have hAjk : 0 < A j - A k := sub_pos.mpr (hanti hjk)
  have hsumAij := sum_Ico_discreteDrop A hij.le
  have hsumBij := sum_Ico_slope_mul_drop A B hA hij.le
  have hsumAjk := sum_Ico_discreteDrop A hjk.le
  have hsumBjk := sum_Ico_slope_mul_drop A B hA hjk.le
  have hlo : discreteSlope A B j * (A i - A j) ≤ B i - B j := by
    rw [← hsumAij, ← hsumBij, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hnj : n ≤ j := (Finset.mem_Ico.mp hn).2.le
    exact mul_le_mul_of_nonneg_right (hS hnj) (sub_nonneg.mpr (hA n).le)
  have hhi : B j - B k ≤ discreteSlope A B j * (A j - A k) := by
    rw [← hsumAjk, ← hsumBjk, Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    have hjn : j ≤ n := (Finset.mem_Ico.mp hn).1
    exact mul_le_mul_of_nonneg_right (hS hjn) (sub_nonneg.mpr (hA n).le)
  have hs1 : discreteSlope A B j ≤ (B i - B j) / (A i - A j) :=
    (le_div_iff₀ hAij).mpr (by simpa [mul_comm] using hlo)
  have hs2 : (B j - B k) / (A j - A k) ≤ discreteSlope A B j :=
    (div_le_iff₀ hAjk).mpr hhi
  have hblocks : (B j - B k) / (A j - A k) ≤
      (B i - B j) / (A i - A j) := hs2.trans hs1
  have hsec : (B k - B j) / (A k - A j) ≤
      (B j - B i) / (A j - A i) := by
    rw [show B k - B j = -(B j - B k) by ring,
      show A k - A j = -(A j - A k) by ring,
      show B j - B i = -(B i - B j) by ring,
      show A j - A i = -(A i - A j) by ring]
    simpa only [neg_div_neg_eq] using hblocks
  have hd1 : A j - A i < 0 := sub_neg.mpr (hanti hij)
  have hd2 : A k - A j < 0 := sub_neg.mpr (hanti hjk)
  rw [det_fin_three_normalized_eq_secants _ _ _ _ _ _
    (ne_of_lt hd1) (ne_of_lt hd2)]
  exact mul_nonpos_of_nonneg_of_nonpos
    (mul_nonneg_of_nonpos_of_nonpos hd1.le hd2.le)
    (sub_nonpos.mpr hsec)

/-- Row normalization by the first column, preserving the positive row factors. -/
theorem det_fin_three_normalize_first_column
    (M : Matrix (Fin 3) (Fin 3) ℝ) (h0 : ∀ i, M i 0 ≠ 0) :
    M.det =
      (M 0 0 * M 1 0 * M 2 0) *
        Matrix.det !![1, 1, 1;
          M 0 1 / M 0 0, M 1 1 / M 1 0, M 2 1 / M 2 0;
          M 0 2 / M 0 0, M 1 2 / M 1 0, M 2 2 / M 2 0] := by
  simp [Matrix.det_fin_three]
  field_simp [h0 0, h0 1, h0 2]
  ring

/-- Arbitrary increasing theta-tail orders have the rank-three source orientation. -/
theorem thetaTailSignRegular_three
    (q : Fin 3 ↪o ℕ) (t : Fin 3 ↪o ℝ) (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) *
      Matrix.det (fun i j => thetaTail (2 * q i) (t j)) := by
  let A : ℕ → ℝ := fun n => thetaTail (2 * n) (t 1) / thetaTail (2 * n) (t 0)
  let B : ℕ → ℝ := fun n => thetaTail (2 * n) (t 2) / thetaTail (2 * n) (t 0)
  have h01 : t 0 < t 1 := t.strictMono (by decide)
  have h12 : t 1 < t 2 := t.strictMono (by decide)
  have hA : ∀ n, A (n + 1) < A n := by
    intro n
    exact thetaTail_even_nodeRatio_step (ht 0) h01 n
  have hdet : ∀ n,
      Matrix.det !![1, 1, 1;
        A n, A (n + 1), A (n + 2);
        B n, B (n + 1), B (n + 2)] ≤ 0 := by
    intro n
    have hd := thetaTail_rankThree_consecutive_shift (2 * n)
      (ht 0) h01 h12
    let M : Matrix (Fin 3) (Fin 3) ℝ :=
      !![thetaTail (2 * n) (t 0), thetaTail (2 * n) (t 1),
        thetaTail (2 * n) (t 2);
        thetaTail (2 * n + 2) (t 0), thetaTail (2 * n + 2) (t 1),
        thetaTail (2 * n + 2) (t 2);
        thetaTail (2 * n + 4) (t 0), thetaTail (2 * n + 4) (t 1),
        thetaTail (2 * n + 4) (t 2)]
    have hf := det_fin_three_normalize_first_column M (by
      intro i
      fin_cases i
      · exact (thetaTail_positive (2 * n) (ht 0)).ne'
      · exact (thetaTail_positive (2 * n + 2) (ht 0)).ne'
      · exact (thetaTail_positive (2 * n + 4) (ht 0)).ne')
    have hpos : 0 <
        thetaTail (2 * n) (t 0) *
          thetaTail (2 * n + 2) (t 0) *
            thetaTail (2 * n + 4) (t 0) :=
      mul_pos (mul_pos (thetaTail_positive (2 * n) (ht 0))
        (thetaTail_positive (2 * n + 2) (ht 0)))
        (thetaTail_positive (2 * n + 4) (ht 0))
    have hnorm : Matrix.det !![1, 1, 1;
        thetaTail (2 * n) (t 1) / thetaTail (2 * n) (t 0),
        thetaTail (2 * n + 2) (t 1) / thetaTail (2 * n + 2) (t 0),
        thetaTail (2 * n + 4) (t 1) / thetaTail (2 * n + 4) (t 0);
        thetaTail (2 * n) (t 2) / thetaTail (2 * n) (t 0),
        thetaTail (2 * n + 2) (t 2) / thetaTail (2 * n + 2) (t 0),
        thetaTail (2 * n + 4) (t 2) / thetaTail (2 * n + 4) (t 0)] ≤ 0 := by
      change M.det ≤ 0 at hd
      rw [hf] at hd
      have hposM : 0 < M 0 0 * M 1 0 * M 2 0 := by
        simpa [M] using hpos
      have hraw := nonpos_of_mul_nonpos_right hd hposM
      simpa [M] using hraw
    simpa [A, B, Nat.mul_add, Nat.mul_one, Nat.add_assoc] using hnorm
  have hnorm := normalized_det_nonpos_of_consecutive A B hA hdet
    (q.strictMono (by decide : (0 : Fin 3) < 1))
    (q.strictMono (by decide : (1 : Fin 3) < 2))
  let M : Matrix (Fin 3) (Fin 3) ℝ :=
    fun i j => thetaTail (2 * q i) (t j)
  have hf := det_fin_three_normalize_first_column M (by
    intro i
    exact (thetaTail_positive (2 * q i) (ht 0)).ne')
  have hfactor : 0 <
      thetaTail (2 * q 0) (t 0) *
        thetaTail (2 * q 1) (t 0) *
          thetaTail (2 * q 2) (t 0) :=
    mul_pos (mul_pos (thetaTail_positive (2 * q 0) (ht 0))
      (thetaTail_positive (2 * q 1) (ht 0)))
      (thetaTail_positive (2 * q 2) (ht 0))
  have hm : Matrix.det !![1, 1, 1;
      A (q 0), A (q 1), A (q 2);
      B (q 0), B (q 1), B (q 2)] ≤ 0 := hnorm
  have hmM : Matrix.det !![1, 1, 1;
      M 0 1 / M 0 0, M 1 1 / M 1 0, M 2 1 / M 2 0;
      M 0 2 / M 0 0, M 1 2 / M 1 0, M 2 2 / M 2 0] ≤ 0 := by
    simpa [M, A, B] using hm
  have hfactorM : 0 < M 0 0 * M 1 0 * M 2 0 := by
    simpa [M] using hfactor
  change 0 ≤ (-1 : ℝ) ^ (3 * (3 - 1) / 2) * M.det
  rw [hf]
  norm_num
  exact mul_nonpos_of_nonneg_of_nonpos hfactorM.le hmM

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
