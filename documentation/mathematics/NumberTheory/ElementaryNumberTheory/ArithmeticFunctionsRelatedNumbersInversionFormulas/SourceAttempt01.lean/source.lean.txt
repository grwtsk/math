import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-! Exact finite arithmetic reconstruction of the independently defined #321 primitive.
Direction: grwtsk contributors. Scratch formal construction: OpenAI Codex.
No bounded-primitive witness or RH conclusion is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ExactCriticalPrimitive
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

def primitive (t : ℝ) : ℝ := ∫ s in 0..t,
  Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)

def halfPrefix (t : ℝ) : ℝ := ∑ n ∈ primePowerInventory t,
  ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)

theorem twiceExp_hasDerivAt (s : ℝ) :
    HasDerivAt (fun s : ℝ => 2*Real.exp (s/2)) (Real.exp (s/2)) s := by
  convert (((hasDerivAt_id s).div_const 2).exp).const_mul 2 using 1 <;> ring

theorem twiceExp_deriv (s : ℝ) :
    deriv (fun s : ℝ => 2*Real.exp (s/2)) s = Real.exp (s/2) :=
  (twiceExp_hasDerivAt s).deriv

theorem logSum_eq_halfPrefix (t : ℝ) :
    mangoldtLogSum t (fun s : ℝ => 2*Real.exp (s/2)) = 2*halfPrefix t := by
  unfold mangoldtLogSum halfPrefix
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    exact_mod_cast (by have h := (Finset.mem_Icc.mp hn).1; omega : 0 < n)
  have hs : Real.sqrt (n : ℝ) ≠ 0 := (Real.sqrt_pos.mpr hn0).ne'
  have hsq := Real.sq_sqrt hn0.le
  rw [Real.exp_half, Real.exp_log hn0]
  field_simp
  nlinarith

theorem prefix_weight_integrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable (fun s : ℝ => mangoldtLogPrefix s * Real.exp (s/2)) volume a b := by
  have h := mangoldtLogPrefix_mul_deriv_intervalIntegrable a b hab
    (fun s : ℝ => 2*Real.exp (s/2)) (by fun_prop)
  simpa only [twiceExp_deriv] using h

theorem prefix_weight_integral {t : ℝ} (ht : 0 ≤ t) :
    (∫ s in 0..t, mangoldtLogPrefix s*Real.exp (s/2)) =
      2*Real.exp (t/2)*mangoldtLogPrefix t-2*halfPrefix t := by
  have h := mangoldtLogSum_abel t ht (fun s : ℝ => 2*Real.exp (s/2)) (by fun_prop)
  simp only [twiceExp_deriv, logSum_eq_halfPrefix] at h
  linarith

theorem background_integral (t γ : ℝ) :
    (∫ s in 0..t, Real.exp (s/2)*(γ-s)) =
      2*Real.exp (t/2)*(γ+2-t)-4-2*γ := by
  have hd (s : ℝ) : HasDerivAt
      (fun s : ℝ => 2*Real.exp (s/2)*(γ+2-s)) (Real.exp (s/2)*(γ-s)) s := by
    convert (twiceExp_hasDerivAt s).mul
      ((hasDerivAt_const s (γ+2)).sub (hasDerivAt_id s)) using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*(γ-s))).intervalIntegrable 0 t)]
  simp only [zero_div, Real.exp_zero, mul_one, sub_zero]
  ring

theorem primitive_integrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable (fun s : ℝ =>
      Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) volume 0 t := by
  have he : (fun s : ℝ => Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) =
      fun s => mangoldtLogPrefix s*Real.exp (s/2) +
        Real.exp (s/2)*(Real.eulerMascheroniConstant-s) := by
    funext s
    unfold mangoldtLogError
    ring
  rw [he]
  exact (prefix_weight_integrable 0 t ht).add
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*
      (Real.eulerMascheroniConstant-s))).intervalIntegrable 0 t)

/-- Exact original finite inventory, with all prime powers and both constants retained. -/
theorem primitive_eq_finite_arithmetic {t : ℝ} (ht : 0 ≤ t) :
    primitive t = 2*Real.exp (t/2)*(mangoldtLogError t+Real.eulerMascheroniConstant+2)
      -2*halfPrefix t-4-2*Real.eulerMascheroniConstant := by
  have he : (fun s : ℝ => Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) =
      fun s => mangoldtLogPrefix s*Real.exp (s/2) +
        Real.exp (s/2)*(Real.eulerMascheroniConstant-s) := by
    funext s
    unfold mangoldtLogError
    ring
  unfold primitive
  rw [he, intervalIntegral.integral_add (prefix_weight_integrable 0 t ht)
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*
      (Real.eulerMascheroniConstant-s))).intervalIntegrable 0 t),
    prefix_weight_integral ht, background_integral]
  unfold mangoldtLogError
  ring

theorem halfPrefix_below_first {t : ℝ} (ht : t < Real.log 2) : halfPrefix t = 0 := by
  have hlog := mangoldtLogError_below_first_atom ht
  have hprefix : mangoldtLogPrefix t = 0 := by unfold mangoldtLogError at hlog; linarith
  have hsum := logSum_eq_halfPrefix t
  unfold mangoldtLogSum at hsum
  have hnone : primePowerInventory t = ∅ := by
    apply Finset.eq_empty_iff_forall_notMem.mpr
    intro n hn
    have hb := mangoldtInventory_log_bounds t n hn
    have hn2 : (2 : ℝ) ≤ n := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    have hlogn := Real.log_le_log (by norm_num : (0 : ℝ) < 2) hn2
    linarith
  rw [hnone, Finset.sum_empty] at hsum
  linarith

theorem primitive_below_first {t : ℝ} (ht0 : 0 ≤ t) (ht : t < Real.log 2) :
    primitive t = 2*Real.exp (t/2)*(Real.eulerMascheroniConstant+2-t)-4-
      2*Real.eulerMascheroniConstant := by
  rw [primitive_eq_finite_arithmetic ht0, mangoldtLogError_below_first_atom ht,
    halfPrefix_below_first ht]
  ring

end ContinuousResearch.ExactCriticalPrimitive

#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive
#print axioms ContinuousResearch.ExactCriticalPrimitive.halfPrefix
#print axioms ContinuousResearch.ExactCriticalPrimitive.twiceExp_hasDerivAt
#print axioms ContinuousResearch.ExactCriticalPrimitive.twiceExp_deriv
#print axioms ContinuousResearch.ExactCriticalPrimitive.logSum_eq_halfPrefix
#print axioms ContinuousResearch.ExactCriticalPrimitive.prefix_weight_integrable
#print axioms ContinuousResearch.ExactCriticalPrimitive.prefix_weight_integral
#print axioms ContinuousResearch.ExactCriticalPrimitive.background_integral
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_integrable
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_eq_finite_arithmetic
#print axioms ContinuousResearch.ExactCriticalPrimitive.halfPrefix_below_first
#print axioms ContinuousResearch.ExactCriticalPrimitive.primitive_below_first
