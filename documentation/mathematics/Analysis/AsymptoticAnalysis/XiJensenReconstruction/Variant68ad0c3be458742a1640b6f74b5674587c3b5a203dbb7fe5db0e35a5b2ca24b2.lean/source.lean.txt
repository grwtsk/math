import FormalResearch.RiemannHypothesis.XiReconstruction
import FormalResearch.RiemannHypothesis.XiJensenWeights

/-!
# Quantitative Jensen reconstruction of the actual spectral xi function

The finite weights are retained explicitly. The estimates below concern the
independently defined xi source on each fixed complex disk. They make no
all-degree claim about real roots or Hermite trace positivity.
-/

namespace FormalResearch.RiemannHypothesis.XiJensenReconstruction
open XiToeplitz ThetaPositiveLift XiReconstruction XiJensenWeights
open Filter Set
open scoped Topology
noncomputable section

/-- The factorially weighted even Jensen section, with the original source constant. -/
def jensenSection (n : ℕ) (z : ℂ) : ℂ :=
  ∑ k ∈ Finset.range (n + 1), ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k

/-- The optional zero-index section is just the unchanged source constant. -/
theorem jensenSection_index_zero (z : ℂ) : jensenSection 0 z = (coefficient 0 : ℂ) := by
  simp [jensenSection]

/-- Zero evaluation retains the actual xi constant, without making the polynomial monic. -/
theorem jensenSection_zero (n : ℕ) : jensenSection n 0 = (coefficient 0 : ℂ) := by
  unfold jensenSection
  rw [Finset.sum_eq_single 0]
  · simp
  · intro k _ hk
    simp [zero_pow hk]
  · simp

/-- The finite section equals its zero-extended infinite sum. -/
theorem jensenSection_eq_tsum (n : ℕ) (z : ℂ) :
    jensenSection n z =
      ∑' k, ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k := by
  symm
  apply tsum_eq_sum
  intro k hk
  have hnk : n < k := by
    simp only [Finset.mem_range] at hk
    omega
  simp [weight_eq_zero_of_lt hnk]

/-- Absolute source coefficients on any nonnegative real disk radius. -/
theorem summable_coefficient_radius (R : ℝ) (hR : 0 ≤ R) :
    Summable (fun k => coefficient k * R ^ (2 * k)) := by
  have h := (summable_centered ((R : ℂ) ^ 2)).norm
  simpa only [norm_mul, norm_pow, Complex.norm_real,
    Real.norm_of_nonneg hR, Real.norm_of_nonneg
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula _).le,
    ← pow_mul] using h

private lemma quadratic_factor_nonneg (k : ℕ) :
    0 ≤ (2 * (k : ℝ)) * (2 * k - 1) := by
  cases k with
  | zero => norm_num
  | succ k =>
    push_cast
    nlinarith [Nat.cast_nonneg (α := ℝ) k]

private lemma quadratic_factor_le (k : ℕ) :
    (2 * (k : ℝ)) * (2 * k - 1) ≤ 4 * (2 : ℝ) ^ (2 * k) := by
  have hk : (k : ℝ) ≤ (2 : ℝ) ^ k := by exact_mod_cast (Nat.lt_two_pow_self (n := k)).le
  have hsq := pow_le_pow_left₀ (Nat.cast_nonneg k : (0 : ℝ) ≤ k) hk 2
  rw [← pow_mul, Nat.mul_comm k 2] at hsq
  nlinarith [Nat.cast_nonneg (α := ℝ) k]

/-- The second-derivative coefficient majorant is summable at every fixed radius. -/
theorem summable_error_majorant (R : ℝ) (hR : 0 ≤ R) :
    Summable (fun k : ℕ => (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k)) := by
  apply ((summable_coefficient_radius (2 * R) (by positivity)).mul_left 4).of_nonneg_of_le
  · intro k
    exact mul_nonneg (mul_nonneg (quadratic_factor_nonneg k)
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le)
      (pow_nonneg hR _)
  · intro k
    have h := mul_le_mul_of_nonneg_right (quadratic_factor_le k)
      (mul_nonneg (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le
        (pow_nonneg hR (2 * k)))
    simpa only [mul_pow, mul_assoc, mul_left_comm, mul_comm] using h

private lemma error_term_norm (n k : ℕ) (z : ℂ) :
    ‖((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
      (coefficient k : ℂ) * (-z ^ 2) ^ k‖ =
      (1 - weight n k) * coefficient k * ‖z‖ ^ (2 * k) := by
  rw [show ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
      (coefficient k : ℂ) * (-z ^ 2) ^ k =
      (((weight n k - 1) * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k by
        push_cast; ring]
  simp only [norm_mul, norm_pow, norm_neg, Complex.norm_real,
    Real.norm_eq_abs, abs_of_pos
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k),
    abs_of_nonpos (sub_nonpos.mpr (weight_le_one n k)), neg_sub, ← pow_mul]

private lemma summable_jensen_terms (n : ℕ) (z : ℂ) :
    Summable (fun k => ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k) := by
  apply (summable_coefficient_radius ‖z‖ (norm_nonneg z)).of_norm_bounded
  intro k
  simp only [norm_mul, norm_pow, norm_neg, Complex.norm_real,
    Real.norm_of_nonneg (mul_nonneg (weight_nonneg n k)
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le),
    ← pow_mul]
  have h := mul_le_mul_of_nonneg_right (weight_le_one n k)
    (mul_nonneg (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le
      (pow_nonneg (norm_nonneg z) (2 * k)))
  simpa only [one_mul, mul_assoc] using h

/-- Quantitative reconstruction on every fixed disk, including the omitted coefficient tail. -/
theorem jensenSection_error_le {n : ℕ} (hn : 1 ≤ n) (R : ℝ) (hR : 0 ≤ R)
    (z : ℂ) (hz : ‖z‖ ≤ R) :
    ‖jensenSection n z - spectralXi z‖ ≤
      (∑' k : ℕ, (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k)) /
        (4 * (n : ℝ)) := by
  let b := fun k : ℕ =>
    (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k) / (4 * (n : ℝ))
  have hb : Summable b := (summable_error_majorant R hR).div_const _
  have hterm (k : ℕ) :
      ‖((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
        (coefficient k : ℂ) * (-z ^ 2) ^ k‖ ≤ b k := by
    rw [error_term_norm]
    have ha := (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula k).le
    calc
      _ ≤ (1 - weight n k) * coefficient k * R ^ (2 * k) :=
        mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (norm_nonneg z) hz _)
          (mul_nonneg (sub_nonneg.mpr (weight_le_one n k)) ha)
      _ ≤ _ := by
        have h := mul_le_mul_of_nonneg_right (one_sub_weight_le hn k)
          (mul_nonneg ha (pow_nonneg hR (2 * k)))
        simpa only [b, div_mul_eq_mul_div, mul_assoc] using h
  have hs : Summable (fun k => ‖((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k -
      (coefficient k : ℂ) * (-z ^ 2) ^ k‖) :=
    hb.of_nonneg_of_le (fun _ => norm_nonneg _) hterm
  rw [jensenSection_eq_tsum, ← centeredSeries_spectral]
  change ‖(∑' k, ((weight n k * coefficient k : ℝ) : ℂ) * (-z ^ 2) ^ k) -
    (∑' k, (coefficient k : ℂ) * (-z ^ 2) ^ k)‖ ≤ _
  rw [← (summable_jensen_terms n z).tsum_sub (summable_centered (-z ^ 2))]
  exact (norm_tsum_le_tsum_norm hs).trans
    ((hs.tsum_le_tsum hterm hb).trans_eq (by dsimp [b]; rw [tsum_div_const]))

/-- The quantitative bound yields uniform convergence on every closed complex disk. -/
theorem jensenSection_uniform (R : ℝ) (hR : 0 ≤ R) :
    TendstoUniformlyOn jensenSection spectralXi atTop (Metric.closedBall 0 R) := by
  let B : ℝ := ∑' k : ℕ,
    (2 * (k : ℝ)) * (2 * k - 1) * coefficient k * R ^ (2 * k)
  have hlim : Tendsto (fun n : ℕ => B / (4 * (n : ℝ))) atTop (𝓝 0) := by
    simpa only [div_div] using tendsto_const_div_atTop_nhds_zero_nat (B / 4)
  apply Metric.tendstoUniformlyOn_iff.mpr
  intro ε hε
  filter_upwards [eventually_ge_atTop 1, (tendsto_order.mp hlim).2 ε hε] with n hn hbound
  intro z hz
  have hzR : ‖z‖ ≤ R := by simpa using hz
  rw [dist_eq_norm, norm_sub_rev]
  exact (jensenSection_error_le hn R hR z hzR).trans_lt hbound

/-- These weighted sections reconstruct the entire actual xi source locally uniformly. -/
theorem jensenSection_locallyUniform :
    TendstoLocallyUniformly jensenSection spectralXi atTop := by
  apply tendstoLocallyUniformly_iff_forall_isCompact.mpr
  intro K hK
  obtain ⟨R, hR, hKR⟩ := hK.isBounded.subset_closedBall_lt 0 (0 : ℂ)
  exact (jensenSection_uniform R hR.le).mono hKR

end
end FormalResearch.RiemannHypothesis.XiJensenReconstruction
