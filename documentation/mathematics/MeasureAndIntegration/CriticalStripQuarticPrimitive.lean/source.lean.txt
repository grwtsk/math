/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCubicPrimitive

set_option autoImplicit false

/-!
# Quartic arithmetic primitive with its exact mean correction

The raw primitive r(u)=u^2(u-1)^2/24 differentiates to the existing cubic.
Its values, first jets and second jets match at integer seams; third jets do not.
We integrate local polynomials cellwise, and use independently integrable tails.
The mean is 1/720. Centering r by that value is an exact integral correction,
not a rule that a periodic weighted integral vanishes. The centered kernel is signed.

The resulting SAME-source identity on Re(s)>0 is
 H(s)=(s+2)(s+4)(s+5)(9-s)/720
      -s(s-1)(s+1)(s+2)(s+3)*integral_1^infinity (r({t})-1/720)t^(-s-4)dt.
At integer cutoff N the finite model gains -s(s-1)(s+1)(s+2)N^(-s-3)/720.
The faster error belongs only to this corrected model. No all-height estimate,
zero-divisor identity, positivity of the signed kernel or RH claim is supplied.
SOURCE SCRIPTS: Lean elaboration and the transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive

open Complex MeasureTheory Set Filter Asymptotics
open scoped Topology

noncomputable section

lemma quartic_unit_bounds {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    0 ≤ u ^ 2 * (u - 1) ^ 2 / 24 ∧
      u ^ 2 * (u - 1) ^ 2 / 24 ≤ (1 / 384 : ℝ) := by
  have hv : 0 ≤ u * (1 - u) := mul_nonneg hu (sub_nonneg.mpr hu1)
  have hv4 : u * (1 - u) ≤ (1 / 4 : ℝ) := by nlinarith [sq_nonneg (u - 1 / 2)]
  have hsq := mul_le_mul hv4 hv4 hv (by norm_num : (0 : ℝ) ≤ 1 / 4)
  have heq : u ^ 2 * (u - 1) ^ 2 = (u * (1 - u)) ^ 2 := by ring
  rw [heq]
  constructor
  · positivity
  · nlinarith

/-- Actual cell mean; the correction is not inferred from a symmetry label. -/
lemma quartic_unit_mean :
    (∫ u : ℝ in (0 : ℝ)..1, u ^ 2 * (u - 1) ^ 2 / 24) = (1 / 720 : ℝ) := by
  let A : ℝ → ℝ := fun u => u ^ 5 / 120 - u ^ 4 / 48 + u ^ 3 / 72
  have hd (u : ℝ) : HasDerivAt A (u ^ 2 * (u - 1) ^ 2 / 24) u := by
    have h1 := ((hasDerivAt_id u).pow 5).div_const 120
    have h2 := ((hasDerivAt_id u).pow 4).div_const 48
    have h3 := ((hasDerivAt_id u).pow 3).div_const 72
    convert (h1.sub h2).add h3 using 1 <;> dsimp only [A] <;> ring
  have hc : Continuous (fun u : ℝ => u ^ 2 * (u - 1) ^ 2 / 24) := by fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) (hc.intervalIntegrable 0 1)
  norm_num [A] at h
  exact h

def realKernel (t : ℝ) : ℝ :=
  (realFractionalKernel t) ^ 2 * (realFractionalKernel t - 1) ^ 2 / 24

def kernel (t : ℝ) : ℂ := (realKernel t : ℂ)

lemma realKernel_bounds (t : ℝ) : 0 ≤ realKernel t ∧ realKernel t ≤ (1 / 384 : ℝ) :=
  quartic_unit_bounds (realFractionalKernel_nonneg t) (realFractionalKernel_le_one t)

lemma kernel_norm_le (t : ℝ) : ‖kernel t‖ ≤ (1 / 384 : ℝ) := by
  rw [kernel, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (realKernel_bounds t).1]
  exact (realKernel_bounds t).2

lemma kernel_measurable : Measurable kernel := by
  have h := realFractionalKernel_measurable
  have hm : Measurable (fun t : ℝ => realFractionalKernel t - 1) := h.sub measurable_const
  have hp := ((h.mul h).mul (hm.mul hm)).div_const 24
  simpa only [kernel, realKernel, pow_two] using Complex.continuous_ofReal.measurable.comp hp

lemma kernel_zero_below {t : ℝ} (ht : t < 1) : kernel t = 0 := by
  simp [kernel, realKernel, realFractionalKernel, not_le.mpr ht]

@[simp] lemma kernel_nat (n : ℕ) : kernel (n : ℝ) = 0 := by
  by_cases hn : 1 ≤ n
  · have hnr : (1 : ℝ) ≤ n := by exact_mod_cast hn
    simp [kernel, realKernel, realFractionalKernel, hnr]
  · have hn0 : n = 0 := by omega
    subst n
    exact kernel_zero_below (by norm_num)

lemma kernel_locallyIntegrable : LocallyIntegrableOn kernel (Ioi 0) := by
  have hi : MemLp kernel ⊤ (volume : Measure ℝ) :=
    memLp_top_of_bound kernel_measurable.aestronglyMeasurable (1 / 384)
      (Eventually.of_forall kernel_norm_le)
  exact (hi.locallyIntegrable le_top).locallyIntegrableOn _

lemma kernel_isBigO_top : kernel =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
  refine isBigO_iff.mpr ⟨1, Eventually.of_forall ?_⟩
  intro t
  have h := (kernel_norm_le t).trans (by norm_num : (1 / 384 : ℝ) ≤ 1)
  simpa using h

lemma kernel_isBigO_zero (b : ℝ) :
    kernel =O[𝓝[>] (0 : ℝ)] (fun t : ℝ => t ^ (-b)) := by
  refine isBigO_iff.mpr ⟨0, ?_⟩
  filter_upwards [(eventually_lt_nhds (show (0 : ℝ) < 1 from zero_lt_one)).filter_mono
    nhdsWithin_le_nhds] with t ht
  simp [kernel_zero_below ht]

def integrand (s : ℂ) (t : ℝ) : ℂ := kernel t * (t : ℂ) ^ (-(s + 4))
def tail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, integrand s t

lemma integrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (integrand s) (Ioi T) := by
  have hm : MellinConvergent kernel (-(s + 3)) := by
    apply mellinConvergent_of_isBigO_rpow kernel_locallyIntegrable kernel_isBigO_top
      (by simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
      (kernel_isBigO_zero (-s.re - 4))
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
    linarith
  have hi := hm.mono_set (Ioi_subset_Ioi (zero_le_one.trans hT))
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [integrand, smul_eq_mul]
  rw [show -(s + 3) - 1 = -(s + 4) by ring]
  exact mul_comm _ _

theorem tail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-(σ + 3)) / (384 * (σ + 3)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := integrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 4))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖tail T s‖ ≤ ∫ t in Ioi T, ‖integrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 384 : ℝ) * t ^ (-(σ + 4)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 384))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (kernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 3)) / (384 * (σ + 3)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 4) < -1) hT0,
        show -(σ + 4) + 1 = -(σ + 3) by ring, neg_div_neg_eq]
      ring

def cell (n : ℕ) (t : ℝ) : ℂ :=
  ((t : ℂ) - n) ^ 2 * ((t : ℂ) - n - 1) ^ 2 / 24

@[simp] lemma cell_left (n : ℕ) : cell n (n : ℝ) = 0 := by simp [cell]
@[simp] lemma cell_right (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = 0 := by
  simp [cell, Nat.cast_add, Nat.cast_one]

lemma cell_hasDerivAt (n : ℕ) (t : ℝ) :
    HasDerivAt (cell n) (CubicPrimitive.cell n t) t := by
  have hid : HasDerivAt (fun u : ℝ => (u : ℂ)) (1 : ℂ) t := by
    simpa using (Complex.ofRealCLM.hasDerivAt (x := t))
  let d := hid.sub_const (n : ℂ)
  convert ((d.pow 2).mul ((d.sub_const 1).pow 2)).div_const 24 using 1 <;>
    dsimp only [cell, CubicPrimitive.cell] <;> ring

lemma kernel_eq_cell {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) : kernel t = cell n t := by
  have htn : (1 : ℝ) ≤ t := (by exact_mod_cast hn : (1 : ℝ) ≤ n).trans ht.1.le
  simp only [kernel, realKernel, realFractionalKernel, if_pos htn,
    QuadraticPrimitive.floor_eq_on_open_cell hn ht, cell]
  push_cast <;> ring

/-- Cellwise integration; both raw primitive endpoints are zero. -/
lemma cell_integral_identity {n : ℕ} {s : ℂ} (hn : 1 ≤ n) (hs : 0 < s.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t) =
      (s + 3) * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let g : ℝ → ℂ := fun t => (t : ℂ) ^ (-(s + 3))
  let gp : ℝ → ℂ := fun t => -(s + 3) * (t : ℂ) ^ (-(s + 4))
  have hpne : -(s + 3) ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith))
  have hg : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt g (gp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    have h := hasDerivAt_ofReal_cpow_const ht0.ne' hpne
    simpa only [g, gp, show -(s + 3) - 1 = -(s + 4) by ring] using h
  have hgp : ContinuousOn gp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hcp : Continuous (CubicPrimitive.cell n) := by
    dsimp only [CubicPrimitive.cell]; fun_prop
  have hbyparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hg (fun t _ => cell_hasDerivAt n t) hgp.intervalIntegrable (hcp.intervalIntegrable _ _)
  have hc : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g t * CubicPrimitive.cell n t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [CubicPrimitive.integrand, CubicPrimitive.kernel_eq_cell hn ht]
    dsimp only [g]; ring
  have hp : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), cell n t * (t : ℂ) ^ (-(s + 4)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    simp only [integrand, kernel_eq_cell hn ht]
  rw [hc, hbyparts, hp]
  simp only [cell_left, cell_right, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [gp]; ring

lemma finite_integral_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), CubicPrimitive.integrand s t) =
      (s + 3) * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t := by
  have hA := CubicPrimitive.integrand_integrable (T := 1) le_rfl hs
  have hQ := integrand_integrable (T := 1) le_rfl hs
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    calc
      (∫ t : ℝ in (1 : ℝ)..((N + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t) =
          (∫ t : ℝ in (1 : ℝ)..(N : ℝ), CubicPrimitive.integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), CubicPrimitive.integrand s t :=
        (intervalIntegral.integral_add_adjacent_intervals
          (QuadraticPrimitive.intervalIntegrable_of_tail hA le_rfl hNR)
          (QuadraticPrimitive.intervalIntegrable_of_tail hA hNR hNN)).symm
      _ = (s + 3) * ((∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), integrand s t) := by
        rw [ih, cell_integral_identity hN hs]; ring
      _ = _ := by rw [intervalIntegral.integral_add_adjacent_intervals
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ le_rfl hNR)
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ hNR hNN)]

/-- Full equality from finite telescoping and independently convergent tails. -/
theorem value_identity {s : ℂ} (hs : 0 < s.re) :
    CubicPrimitive.tail 1 s = (s + 3) * tail 1 s := by
  let R : ℂ := CubicPrimitive.tail 1 s - (s + 3) * tail 1 s
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = CubicPrimitive.tail N s - (s + 3) * tail N s := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have ha := QuadraticPrimitive.split_integral_tail (CubicPrimitive.integrand_integrable (T := 1) le_rfl hs) hNR
    have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
    change CubicPrimitive.tail 1 s = _ + CubicPrimitive.tail N s at ha
    change tail 1 s = _ + tail N s at hq
    dsimp only [R]
    rw [ha, hq, finite_integral_identity hN hs]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      ((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2)) +
      ‖s + 3‖ * (((n : ℝ) + 1) ^ (-(s.re + 3)) / (384 * (s.re + 3))) := by
    rw [heq (n + 1) (by omega)]
    calc
      _ ≤ ‖CubicPrimitive.tail (n + 1) s‖ + ‖s + 3‖ * ‖tail (n + 1) s‖ := by
        simpa only [norm_mul] using norm_sub_le (CubicPrimitive.tail (n + 1) s) ((s + 3) * tail (n + 1) s)
      _ ≤ _ := by
        simpa only [Nat.cast_add, Nat.cast_one] using add_le_add
          (CubicPrimitive.tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl)
          (mul_le_mul_of_nonneg_left (tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl) (norm_nonneg _))
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      ((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2)) +
      ‖s + 3‖ * (((n : ℝ) + 1) ^ (-(s.re + 3)) / (384 * (s.re + 3)))) atTop (𝓝 0) := by
    have h1 := ((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 2)).comp hn).div_const (120 * (s.re + 2))
    have h2 := (((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 3)).comp hn).div_const
      (384 * (s.re + 3))).const_mul ‖s + 3‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

lemma integer_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CubicPrimitive.tail N s = (s + 3) * tail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have ha := QuadraticPrimitive.split_integral_tail (CubicPrimitive.integrand_integrable (T := 1) le_rfl hs) hNR
  have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
  change CubicPrimitive.tail 1 s = _ + CubicPrimitive.tail N s at ha
  change tail 1 s = _ + tail N s at hq
  calc
    CubicPrimitive.tail N s = CubicPrimitive.tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), CubicPrimitive.integrand s t := by rw [ha]; ring
    _ = (s + 3) * (tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) := by
      rw [value_identity hs, finite_integral_identity hN hs]; ring
    _ = _ := by rw [hq]; ring

/-- The centered quartic is signed. Its integer value is NOT zero. -/
def centeredKernel (t : ℝ) : ℂ := kernel t - 1 / 720

def centeredIntegrand (s : ℂ) (t : ℝ) : ℂ :=
  centeredKernel t * (t : ℂ) ^ (-(s + 4))

def centeredTail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, centeredIntegrand s t

@[simp] theorem centeredKernel_nat (n : ℕ) : centeredKernel (n : ℝ) = -(1 / 720 : ℂ) := by
  simp [centeredKernel]

lemma centeredKernel_norm_le (t : ℝ) : ‖centeredKernel t‖ ≤ (1 / 720 : ℝ) := by
  have hb := realKernel_bounds t
  have heq : centeredKernel t = ((realKernel t - 1 / 720 : ℝ) : ℂ) := by
    norm_num [centeredKernel, kernel]
  rw [heq, Complex.norm_real, Real.norm_eq_abs]
  apply abs_le.mpr
  constructor <;> linarith [hb.1, hb.2]

lemma power_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-(s + 4))) (Ioi T) := by
  apply integrableOn_Ioi_cpow_of_lt
  · simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith
  · exact zero_lt_one.trans_le hT

lemma centeredIntegrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (centeredIntegrand s) (Ioi T) := by
  have h := (integrand_integrable hT hs).sub ((power_integrable hT hs).const_mul (1 / 720 : ℂ))
  refine h.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [centeredIntegrand, centeredKernel, integrand]
  ring

/-- The subtracted mean is integrated, never dropped. Both integrals converge. -/
theorem centeredTail_eq {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    centeredTail T s = tail T s - (T : ℂ) ^ (-(s + 3)) / (720 * (s + 3)) := by
  have hfun : centeredIntegrand s = fun t => integrand s t -
      (1 / 720 : ℂ) * (t : ℂ) ^ (-(s + 4)) := by
    funext t; simp only [centeredIntegrand, centeredKernel, integrand]; ring
  rw [centeredTail, hfun, integral_sub (integrand_integrable hT hs)
    ((power_integrable hT hs).const_mul (1 / 720)), integral_const_mul]
  rw [integral_Ioi_cpow_of_lt (by
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
    (zero_lt_one.trans_le hT),
    show -(s + 4) + 1 = -(s + 3) by ring, neg_div_neg_eq]
  change tail T s - _ = _
  ring

theorem centeredTail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖centeredTail T s‖ ≤ T ^ (-(σ + 3)) / (720 * (σ + 3)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := centeredIntegrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 4))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖centeredTail T s‖ ≤ ∫ t in Ioi T, ‖centeredIntegrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 720 : ℝ) * t ^ (-(σ + 4)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 720))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [centeredIntegrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (centeredKernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 3)) / (720 * (σ + 3)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 4) < -1) hT0,
        show -(σ + 4) + 1 = -(σ + 3) by ring, neg_div_neg_eq]
      ring

/-- The nonzero correction at integer cutoffs is part of the exact source identity. -/
theorem cubic_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CubicPrimitive.tail N s = (N : ℂ) ^ (-(s + 3)) / 720 +
      (s + 3) * centeredTail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hsp : s + 3 ≠ 0 := Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  rw [integer_tail_identity hN hs, centeredTail_eq hNR hs]
  simp only [Complex.ofReal_natCast]
  field_simp [hsp] <;> ring

/-- The factor 9-s is essential; the reference is not a globally nonzero polynomial. -/
def reference (s : ℂ) : ℂ := (s + 2) * (s + 4) * (s + 5) * (9 - s) / 720

def multiplier (s : ℂ) : ℂ := CubicPrimitive.multiplier s * (s + 3)

theorem reference_correction (s : ℂ) :
    reference s = CubicPrimitive.reference s - CubicPrimitive.multiplier s / 720 := by
  unfold reference CubicPrimitive.reference CubicPrimitive.multiplier
  ring

theorem source_identity {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * centeredTail 1 s := by
  rw [CubicPrimitive.source_identity hs, cubic_tail_identity (N := 1) le_rfl hs,
    reference_correction]
  simp only [Nat.cast_one, Complex.one_cpow]
  unfold multiplier
  ring

/-- Faster tail requires the negative B4 endpoint correction to the prior model. -/
def finiteModel (N : ℕ) (s : ℂ) : ℂ :=
  CubicPrimitive.finiteModel N s -
    CubicPrimitive.multiplier s * (N : ℂ) ^ (-(s + 3)) / 720

theorem finiteModel_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -multiplier s * centeredTail N s := by
  have h := CubicPrimitive.finiteModel_residual hN hs
  rw [cubic_tail_identity hN hs] at h
  unfold finiteModel multiplier
  linear_combination h

theorem finiteModel_error {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      ‖multiplier s‖ * ((N : ℝ) ^ (-(σ + 3)) / (720 * (σ + 3))) := by
  rw [finiteModel_residual hN (hσ.trans_le hs), norm_mul, norm_neg]
  exact mul_le_mul_of_nonneg_left (centeredTail_norm_le (by exact_mod_cast hN) hσ hs)
    (norm_nonneg _)

theorem finiteModel_majorant_tendsto_zero {σ : ℝ} (hσ : 0 < σ) (s : ℂ) :
    Tendsto (fun n : ℕ => ‖multiplier s‖ *
      (((n : ℝ) + 1) ^ (-(σ + 3)) / (720 * (σ + 3)))) atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  simpa using (((tendsto_rpow_neg_atTop (by linarith : 0 < σ + 3)).comp hn).div_const
    (720 * (σ + 3))).const_mul ‖multiplier s‖

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive
