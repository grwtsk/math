import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic
open Complex Set HurwitzZeta

lemma shellGrowth_evenKernel_one_le {t : ℝ} (ht : 0 < t) :
    1 ≤ HurwitzZeta.evenKernel 0 t := by
  have hs := HurwitzZeta.hasSum_nat_cosKernel₀ 0 ht
  have hp : 0 ≤ ∑' n : ℕ, 2 * Real.cos (2 * Real.pi * 0 * (n + 1)) *
      Real.exp (-Real.pi * (n + 1) ^ 2 * t) :=
    tsum_nonneg (fun n ↦ by simp; positivity)
  rw [hs.tsum_eq] at hp
  rw [HurwitzZeta.evenKernel_eq_cosKernel_of_zero]
  simpa using hp

#print axioms shellGrowth_evenKernel_one_le
#check IsStrongFEPair.hasMellin

lemma shellGrowth_fmodif_im (t : ℝ) :
    ((hurwitzEvenFEPair 0).f_modif t).im = 0 := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  by_cases ha : t ∈ Ioi (1 : ℝ) <;> by_cases hb : t ∈ Ioo (0 : ℝ) 1 <;>
    simp [ha, hb, hurwitzEvenFEPair]

lemma shellGrowth_fmodif_nonneg {t : ℝ} (ht : 0 < t) :
    0 ≤ ((hurwitzEvenFEPair 0).f_modif t).re := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  rcases lt_trichotomy t 1 with h | rfl | h
  · have h₁ : ¬t ∈ Ioi (1 : ℝ) := by simpa using h.le
    have h₂ : t ∈ Ioo (0 : ℝ) 1 := ⟨ht, h⟩
    simp only [indicator_of_notMem h₁, indicator_of_mem h₂, zero_add]
    simp only [hurwitzEvenFEPair, Function.comp_apply, if_true, smul_eq_mul,
      one_mul, mul_one, Complex.sub_re, Complex.ofReal_re]
    have hi := shellGrowth_evenKernel_one_le (one_div_pos.mpr ht)
    rw [evenKernel_eq_cosKernel_of_zero] at hi
    rw [evenKernel_functional_equation]
    rw [Real.rpow_neg ht.le]
    exact sub_nonneg.mpr (by simpa [one_div] using
      mul_le_mul_of_nonneg_left hi (show 0 ≤ (t ^ (1 / 2 : ℝ))⁻¹ by positivity))
  · simp [hurwitzEvenFEPair]
  · simp only [indicator_of_mem (show t ∈ Ioi (1 : ℝ) from h),
      indicator_of_notMem (notMem_Ioo_of_ge h.le), add_zero]
    simpa [hurwitzEvenFEPair] using shellGrowth_evenKernel_one_le ht

open MeasureTheory
noncomputable section

lemma shellGrowth_fmodif_real (t : ℝ) :
    (hurwitzEvenFEPair 0).f_modif t = (((hurwitzEvenFEPair 0).f_modif t).re : ℂ) := by
  apply Complex.ext <;> simp [shellGrowth_fmodif_im]

lemma shellGrowth_mellin_integrable (s : ℂ) :
    IntegrableOn (fun t : ℝ ↦ (t : ℂ) ^ (s / 2 - 1) *
      (hurwitzEvenFEPair 0).f_modif t) (Ioi 0) := by
  exact ((hurwitzEvenFEPair 0).isStrongFEPair_toStrongFEPair.hasMellin (s / 2)).1

lemma shellGrowth_lambda_integral (s : ℂ) :
    completedRiemannZeta₀ s =
      (∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s / 2 - 1) *
        (hurwitzEvenFEPair 0).f_modif t) / 2 := rfl

lemma shellGrowth_real_integrand (a : ℝ) {t : ℝ} (ht : 0 < t) :
    (t : ℂ) ^ ((a : ℂ) / 2 - 1) * (hurwitzEvenFEPair 0).f_modif t =
      (t ^ (a / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re : ℝ) := by
  rw [shellGrowth_fmodif_real, Complex.ofReal_mul]
  congr 1
  simpa using (Complex.ofReal_cpow ht.le (a / 2 - 1)).symm

lemma shellGrowth_real_integrable (a : ℝ) :
    IntegrableOn (fun t : ℝ ↦ t ^ (a / 2 - 1) *
      ((hurwitzEvenFEPair 0).f_modif t).re) (Ioi 0) := by
  apply (shellGrowth_mellin_integrable a).re.congr
  apply (ae_restrict_iff' measurableSet_Ioi).mpr
  filter_upwards with t ht
  rw [shellGrowth_real_integrand a ht]
  rfl

lemma shellGrowth_real_integral (a : ℝ) :
    (completedRiemannZeta₀ a).re =
      (∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) *
        ((hurwitzEvenFEPair 0).f_modif t).re) / 2 := by
  rw [shellGrowth_lambda_integral, Complex.div_ofNat_re]
  congr 1
  change Complex.reCLM _ = _
  rw [← Complex.reCLM.integral_comp_comm (shellGrowth_mellin_integrable a)]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t ht
  dsimp only
  rw [shellGrowth_real_integrand a ht]
  rfl

lemma shellGrowth_strip_bound (s : ℂ) (a b : ℝ) (ha : a ≤ s.re) (hb : s.re ≤ b) :
    ‖completedRiemannZeta₀ s‖ ≤
      (completedRiemannZeta₀ a).re + (completedRiemannZeta₀ b).re := by
  have hi : ‖∫ t : ℝ in Ioi 0, (t : ℂ) ^ (s / 2 - 1) *
      (hurwitzEvenFEPair 0).f_modif t‖ ≤
      ∫ t : ℝ in Ioi 0, t ^ (a / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re +
        t ^ (b / 2 - 1) * ((hurwitzEvenFEPair 0).f_modif t).re := by
    apply norm_integral_le_of_norm_le ((shellGrowth_real_integrable a).add
      (shellGrowth_real_integrable b))
    apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with t ht
    change 0 < t at ht
    rw [norm_mul, shellGrowth_fmodif_real t,
      Complex.norm_of_nonneg (shellGrowth_fmodif_nonneg ht),
      Complex.norm_cpow_eq_rpow_re_of_pos ht, Complex.sub_re,
      Complex.div_ofNat_re, Complex.one_re, Pi.add_apply, ← add_mul]
    apply mul_le_mul_of_nonneg_right _ (shellGrowth_fmodif_nonneg ht)
    rcases le_total t 1 with ht1 | ht1
    · exact (Real.rpow_le_rpow_of_exponent_ge ht ht1 (by linarith)).trans
        (le_add_of_nonneg_right (by positivity))
    · exact (Real.rpow_le_rpow_of_exponent_le ht1 (by linarith)).trans
        (le_add_of_nonneg_left (by positivity))
  rw [integral_add (shellGrowth_real_integrable a) (shellGrowth_real_integrable b)] at hi
  rw [shellGrowth_lambda_integral, norm_div, norm_ofNat, shellGrowth_real_integral,
    shellGrowth_real_integral]
  simpa only [add_div] using div_le_div_of_nonneg_right hi (show (0 : ℝ) ≤ 2 by norm_num)

lemma shellGrowth_integer_endpoint_bound (s : ℂ) (m : ℕ)
    (ha : 1 - (2 * m : ℝ) ≤ s.re) (hb : s.re ≤ (2 * m : ℝ)) :
    ‖completedRiemannZeta₀ s‖ ≤ 2 * (completedRiemannZeta₀ (2 * m)).re := by
  have ht := shellGrowth_strip_bound s (1 - 2 * m) (2 * m) ha hb
  push_cast at ht
  rw [completedRiemannZeta₀_one_sub] at ht
  linarith

#print axioms shellGrowth_integer_endpoint_bound

lemma shellGrowth_sphere_of_endpoint (C : ℝ) (hC : 0 < C)
    (hbound : ∀ m : ℕ, 2 ≤ m →
      (completedRiemannZeta₀ (2 * m)).re ≤ C * Real.exp ((m : ℝ) ^ 2)) :
    ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z : ℂ, z ∈ Metric.sphere 0 (2 * r) →
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤ Real.exp (A * r ^ 4) := by
  refine ⟨12 * C + 25, by positivity, ?_⟩
  intro r hr z hz
  have hr0 : 0 < r := by linarith
  have hzNorm : ‖z‖ = 2 * r := by simpa [Metric.mem_sphere, dist_eq_norm] using hz
  let m : ℕ := ⌈2 * r⌉₊ + 2
  have hm2 : 2 ≤ m := by dsimp [m]; omega
  have hrm : 2 * r ≤ (m : ℝ) := by
    have := Nat.le_ceil (2 * r)
    dsimp [m]
    push_cast
    linarith
  have hmr : (m : ℝ) ≤ 5 * r := by
    have := Nat.ceil_lt_add_one (show 0 ≤ 2 * r by positivity)
    dsimp [m]
    push_cast
    linarith
  have hzre : |z.re| ≤ 2 * r := hzNorm ▸ Complex.abs_re_le_norm z
  have hstrip := shellGrowth_integer_endpoint_bound z m (by
    have := (abs_le.mp hzre).1
    have : (2 : ℝ) ≤ m := by exact_mod_cast hm2
    linarith) (by linarith [(abs_le.mp hzre).2])
  have hL : ‖completedRiemannZeta₀ z‖ ≤ 2 * C * Real.exp (25 * r ^ 2) := by
    apply hstrip.trans
    have hmexp : Real.exp ((m : ℝ) ^ 2) ≤ Real.exp (25 * r ^ 2) := by
      apply Real.exp_le_exp.mpr
      nlinarith [show (0 : ℝ) ≤ m from Nat.cast_nonneg m]
    nlinarith [hbound m hm2, mul_le_mul_of_nonneg_left hmexp hC.le]
  have hzm : ‖z - 1‖ ≤ 3 * r := by
    calc
      ‖z - 1‖ ≤ ‖z‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ 3 * r := by rw [hzNorm, norm_one]; linarith
  have hf : ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
      (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) := by
    calc
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤
          ‖z‖ * ‖z - 1‖ * ‖completedRiemannZeta₀ z‖ + 1 := by
        simpa only [norm_mul, norm_one] using norm_add_le
          (z * (z - 1) * completedRiemannZeta₀ z) 1
      _ ≤ (2 * r) * (3 * r) * (2 * C * Real.exp (25 * r ^ 2)) + 1 := by
        rw [hzNorm]
        gcongr
      _ ≤ _ := by
        have he : 1 ≤ Real.exp (25 * r ^ 2) := Real.one_le_exp (by positivity)
        nlinarith
  apply hf.trans
  calc
    (12 * C * r ^ 2 + 1) * Real.exp (25 * r ^ 2) ≤
        Real.exp (12 * C * r ^ 2) * Real.exp (25 * r ^ 2) := by
      gcongr
      exact Real.add_one_le_exp _
    _ = Real.exp ((12 * C + 25) * r ^ 2) := by rw [← Real.exp_add]; congr 1; ring
    _ ≤ Real.exp ((12 * C + 25) * r ^ 4) := by
      apply Real.exp_le_exp.mpr
      have hr2 : r ^ 2 ≤ r ^ 4 := by nlinarith [sq_nonneg (r ^ 2 - 1)]
      exact mul_le_mul_of_nonneg_left hr2 (by positivity)

#print axioms shellGrowth_sphere_of_endpoint
