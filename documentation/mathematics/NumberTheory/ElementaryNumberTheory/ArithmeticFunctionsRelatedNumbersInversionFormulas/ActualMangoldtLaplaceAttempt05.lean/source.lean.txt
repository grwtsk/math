import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Literal closed full-Mangoldt prefix: positive log-onset Laplace transport.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré, unweighted residual L1, desired intercept, signed bound or RH premise. -/
set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ActualMangoldtLaplace
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

 def mangoldtWeight (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt (n+2) / ((n+2 : ℕ) : ℝ)

 def laplaceAtom (s : ℝ) (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log ((n+2 : ℕ) : ℝ))).indicator
    (fun t => mangoldtWeight n * Real.exp (-s*t))

theorem onset_pos (n : ℕ) : 0 < Real.log ((n+2 : ℕ) : ℝ) := by
  exact Real.log_pos (by exact_mod_cast (by omega : 1 < n+2))

theorem weight_nonneg (n : ℕ) : 0 ≤ mangoldtWeight n := by
  unfold mangoldtWeight
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (by positivity)

theorem atom_nonneg (s t : ℝ) (n : ℕ) : 0 ≤ laplaceAtom s n t := by
  exact indicator_nonneg (fun _ _ => mul_nonneg (weight_nonneg n) (Real.exp_pos _).le) t

theorem atom_measurable (s : ℝ) (n : ℕ) : Measurable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply Measurable.indicator _ measurableSet_Ici
  exact measurable_const.mul (((measurable_const.mul measurable_id) :
    Measurable (fun t : ℝ => (-s)*t)).exp)

theorem atom_integrable {s : ℝ} (hs : 0 < s) (n : ℕ) : Integrable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply IntegrableOn.integrable_indicator _ measurableSet_Ici
  apply Integrable.const_mul
  exact Iff.mpr integrableOn_Ici_iff_integrableOn_Ioi
    (integrableOn_exp_mul_Ioi (by linarith : -s < 0) _)

theorem atom_integral {s : ℝ} (hs : 0 < s) (n : ℕ) :
    (∫ t : ℝ, laplaceAtom s n t) =
      (mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ))) / s := by
  unfold laplaceAtom
  rw [integral_indicator measurableSet_Ici, integral_const_mul,
    integral_Ici_eq_integral_Ioi,integral_exp_mul_Ioi (by linarith : -s < 0)]
  ring

theorem weighted_exp_eq_norm_term (s : ℝ) (n : ℕ) :
    mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) =
      ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ := by
  rw [LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_add hc,Real.rpow_one,Real.rpow_def_of_pos hc]
  simp only [mangoldtWeight,neg_mul,Real.exp_neg]
  rw [mul_comm (Real.log ((n+2 : ℕ) : ℝ)) s]
  ring

theorem atom_norm_integrals_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖laplaceAtom s n t‖) := by
  have h := (ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1 : ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)).norm
  have hn := (summable_nat_add_iff 2).mpr h
  have he (n : ℕ) : (∫ t : ℝ, ‖laplaceAtom s n t‖) =
    ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ / s := by
    simp_rw [Real.norm_of_nonneg (atom_nonneg s _ n)]
    rw [atom_integral hs,weighted_exp_eq_norm_term]
  simp_rw [he]
  exact hn.div_const s

theorem onset_closed_iff (n : ℕ) (t : ℝ) :
    Real.log ((n+2 : ℕ) : ℝ) ≤ t ↔ n+2 ≤ ⌊Real.exp t⌋₊ := by
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.log_le_iff_le_exp hc, Nat.le_floor_iff (Real.exp_pos t).le]

theorem atom_zero_outside (s t : ℝ) (n : ℕ)
    (hn : n ∉ Finset.range (⌊Real.exp t⌋₊ - 1)) : laplaceAtom s n t = 0 := by
  apply indicator_of_notMem
  simp only [mem_Ici]
  intro h
  have hc := (onset_closed_iff n t).mp h
  simp only [Finset.mem_range] at hn
  omega

theorem atoms_summable (s t : ℝ) : Summable (fun n : ℕ => laplaceAtom s n t) := by
  exact summable_of_ne_finset_zero (fun n => atom_zero_outside s t n)

theorem atoms_tsum_eq_actual (s t : ℝ) :
    (∑' n : ℕ, laplaceAtom s n t) = Real.exp (-s*t) * mangoldtLogPrefix t := by
  rw [tsum_eq_sum (s:=Finset.range (⌊Real.exp t⌋₊-1)) (atom_zero_outside s t),
    mangoldtLogPrefix_eq_sum,Finset.mul_sum]
  apply Finset.sum_bij (fun n _ => n+2)
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc]
    simp only [Finset.mem_range] at hn
    omega
  · intro n _ m _ he
    omega
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc] at hn
    refine ⟨n-2,?_,?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro n hn
    have hc : n+2 ≤ ⌊Real.exp t⌋₊ := by
      simp only [Finset.mem_range] at hn
      omega
    have ht := (onset_closed_iff n t).mpr hc
    rw [laplaceAtom,indicator_of_mem (show t ∈ Ici (Real.log ((n+2 : ℕ) : ℝ)) from ht)]
    unfold mangoldtWeight
    ring

theorem atoms_tsum_eq_indicator (s : ℝ) :
    (fun t : ℝ => ∑' n : ℕ, laplaceAtom s n t) =
      (Ioi 0).indicator (fun t => Real.exp (-s*t) * mangoldtLogPrefix t) := by
  funext t
  by_cases ht : 0 < t
  · rw [indicator_of_mem (show t ∈ Ioi 0 from ht),atoms_tsum_eq_actual]
  · rw [indicator_of_notMem (show t ∉ Ioi 0 from ht)]
    have hz (n : ℕ) : laplaceAtom s n t = 0 := by
      unfold laplaceAtom
      apply indicator_of_notMem
      simp only [mem_Ici]
      linarith [onset_pos n]
    simp only [hz,tsum_zero]

theorem atoms_integrals_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ∫ t : ℝ, laplaceAtom s n t) := by
  have h := atom_norm_integrals_summable hs
  simpa only [Real.norm_of_nonneg (atom_nonneg s _ _)] using h

theorem atoms_lintegral {s : ℝ} (hs : 0 < s) :
    (∫⁻ t : ℝ, ENNReal.ofReal (∑' n : ℕ, laplaceAtom s n t)) =
      ENNReal.ofReal (∑' n : ℕ, ∫ t : ℝ, laplaceAtom s n t) := by
  calc
    _ = ∫⁻ t : ℝ, ∑' n : ℕ, ENNReal.ofReal (laplaceAtom s n t) := by
      apply lintegral_congr
      intro t
      exact ENNReal.ofReal_tsum_of_nonneg (fun n => atom_nonneg s t n) (atoms_summable s t)
    _ = ∑' n : ℕ, ∫⁻ t : ℝ, ENNReal.ofReal (laplaceAtom s n t) :=
      lintegral_tsum (fun n => (atom_measurable s n).ennreal_ofReal.aemeasurable)
    _ = ∑' n : ℕ, ENNReal.ofReal (∫ t : ℝ, laplaceAtom s n t) := by
      apply tsum_congr
      intro n
      exact (ofReal_integral_eq_lintegral_ofReal (atom_integrable hs n)
        (Eventually.of_forall (fun t => atom_nonneg s t n))).symm
    _ = _ := (ENNReal.ofReal_tsum_of_nonneg
      (fun n => integral_nonneg (fun t => atom_nonneg s t n)) (atoms_integrals_summable hs)).symm

theorem actual_prefix_laplace_integrable {s : ℝ} (hs : 0 < s) :
    IntegrableOn (fun t : ℝ => Real.exp (-s*t)*mangoldtLogPrefix t) (Ioi 0) := by
  apply (integrable_indicator_iff measurableSet_Ioi).mp
  rw [←atoms_tsum_eq_indicator]
  refine ⟨(Measurable.tsum (fun n => atom_measurable s n)).aestronglyMeasurable,?_⟩
  apply (hasFiniteIntegral_iff_ofReal (Eventually.of_forall (fun t =>
    tsum_nonneg (fun n => atom_nonneg s t n)))).mpr
  rw [atoms_lintegral hs]
  exact ENNReal.ofReal_lt_top

theorem actual_prefix_laplace_eq_tsum {s : ℝ} (hs : 0 < s) :
    (∫ t in Ioi 0, Real.exp (-s*t)*mangoldtLogPrefix t) =
      (∑' n : ℕ, mangoldtWeight n*Real.exp (-s*Real.log ((n+2:ℕ):ℝ))) / s := by
  rw [←integral_indicator measurableSet_Ioi,←atoms_tsum_eq_indicator,
    ←integral_tsum_of_summable_integral_norm (fun n => atom_integrable hs n)
      (atom_norm_integrals_summable hs)]
  simp_rw [atom_integral hs]
  exact tsum_div_const

theorem weighted_exp_eq_term (s : ℝ) (n : ℕ) :
    ((mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) : ℝ) : ℂ) =
      LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2) := by
  rw [weighted_exp_eq_norm_term,LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0),
    LSeries.term_of_ne_zero (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  change ((ArithmeticFunction.vonMangoldt (n+2) / ((n+2:ℕ):ℝ)^(s+1) : ℝ):ℂ) =
    (ArithmeticFunction.vonMangoldt (n+2):ℂ) / (((n+2:ℕ):ℝ):ℂ)^((s+1:ℝ):ℂ)
  rw [←Complex.ofReal_cpow (by positivity : 0 ≤ ((n+2:ℕ):ℝ)),Complex.ofReal_div]

theorem actual_prefix_laplace_eq_LSeries {s : ℝ} (hs : 0 < s) :
    ((s * ∫ t in Ioi 0, Real.exp (-s*t)*mangoldtLogPrefix t : ℝ):ℂ) =
      LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) := by
  rw [actual_prefix_laplace_eq_tsum hs,mul_div_cancel₀ _ (ne_of_gt hs),Complex.ofReal_tsum]
  simp_rw [weighted_exp_eq_term]
  have hS := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1:ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)
  have hh := hS.sum_add_tsum_nat_add 2
  have hz : (∑ n ∈ Finset.range 2, LSeries.term
    (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) ((s+1:ℝ):ℂ) n) = 0 := by
    norm_num [Finset.sum_range_succ,LSeries.term]
  rw [hz,zero_add] at hh
  exact hh

end ContinuousResearch.ActualMangoldtLaplace
