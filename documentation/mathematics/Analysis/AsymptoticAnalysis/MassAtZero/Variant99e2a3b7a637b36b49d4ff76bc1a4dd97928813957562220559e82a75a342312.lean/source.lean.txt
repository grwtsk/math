import Mathlib.RingTheory.PowerSeries.Log
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic

/-!
Exact M06 fixture for formal-research #230. The logarithmic coefficients are
computed from the actual formal series exp, not assumed. The infinite spectral
obstruction is a necessary-condition theorem about a summable eigenvalue
inventory; no infinite trace-class operator API or actual-xi identification is
asserted here. grwtsk contributors: manuscript/source direction; OpenAI Codex:
this scratch formalization.
-/

noncomputable section
open MeasureTheory

namespace ContinuousResearch.MassAtZero

theorem log_derivative_inverse :
    (PowerSeries.derivative ℝ (PowerSeries.log ℝ)) *
      (1 + PowerSeries.X) = 1 := by
  ext n
  rw [mul_add, mul_one, map_add]
  cases n with
  | zero => simp [PowerSeries.deriv_log]
  | succ n =>
    have hx : PowerSeries.coeff (n + 1)
        ((PowerSeries.derivative ℝ (PowerSeries.log ℝ)) * PowerSeries.X) =
        PowerSeries.coeff n (PowerSeries.derivative ℝ (PowerSeries.log ℝ)) := by
      simpa only [pow_one] using PowerSeries.coeff_mul_X_pow
        (PowerSeries.derivative ℝ (PowerSeries.log ℝ)) 1 n
    rw [hx, PowerSeries.deriv_log]
    simp [pow_succ]

theorem derivative_logOf_exp :
    PowerSeries.derivative ℝ (PowerSeries.logOf (PowerSeries.exp ℝ)) = 1 := by
  let e : PowerSeries ℝ := PowerSeries.exp ℝ
  have hs : PowerSeries.HasSubst (e - 1) := PowerSeries.HasSubst.exp_sub_one
  have hh := congrArg (PowerSeries.substAlgHom hs) log_derivative_inverse
  have hh' : (PowerSeries.derivative ℝ (PowerSeries.log ℝ)).subst (e - 1) * e = 1 := by
    simpa only [map_mul, map_add, map_one, PowerSeries.substAlgHom_X,
      add_sub_cancel, PowerSeries.coe_substAlgHom] using hh
  rw [PowerSeries.logOf_eq, PowerSeries.derivative_subst hs]
  simpa [e, map_sub, PowerSeries.derivative_exp] using hh'

theorem logOf_exp_eq_X :
    PowerSeries.logOf (PowerSeries.exp ℝ) = PowerSeries.X := by
  ext n
  cases n with
  | zero =>
    simpa only [PowerSeries.coeff_zero_eq_constantCoeff, PowerSeries.constantCoeff_X]
      using PowerSeries.constantCoeff_logOf (PowerSeries.constantCoeff_exp (A := ℝ))
  | succ n =>
    have hl := congrArg (PowerSeries.coeff n) derivative_logOf_exp
    have hx := congrArg (PowerSeries.coeff n) (PowerSeries.derivative_X (R := ℝ))
    rw [PowerSeries.coeff_derivative] at hl hx
    have hn : (n + 1 : ℝ) ≠ 0 := by positivity
    exact mul_right_cancel₀ hn (hl.trans hx.symm)

/-- Literal convention p_r=(-1)^(r+1) r [w^r] log(g(w)/a0), a0=1, g=exp. -/
def powerTrace (r : ℕ) : ℝ :=
  (-1 : ℝ) ^ (r + 1) * r *
    PowerSeries.coeff r (PowerSeries.logOf (PowerSeries.exp ℝ))

theorem powerTrace_exact (r : ℕ) : powerTrace r = if r = 1 then 1 else 0 := by
  rw [powerTrace, logOf_exp_eq_X, PowerSeries.coeff_X]
  split_ifs with h
  · subst r; norm_num
  · simp

theorem first_powerTrace : powerTrace 1 = 1 := by simp [powerTrace_exact]
theorem later_powerTrace (r : ℕ) (hr : 2 ≤ r) : powerTrace r = 0 := by
  simp [powerTrace_exact, show r ≠ 1 by omega]

/-- Functional L(X^n)=p_(n+1), realized here by evaluation at zero. -/
def functional (Q : Polynomial ℝ) : ℝ := Q.eval 0

theorem functional_monomial (n : ℕ) : functional (Polynomial.X ^ n) = powerTrace (n + 1) := by
  cases n <;> simp [functional, powerTrace_exact]

theorem functional_square_nonneg (Q : Polynomial ℝ) : 0 ≤ functional (Q ^ 2) := by
  simpa [functional] using sq_nonneg (Q.eval 0)

theorem functional_shifted_square (Q : Polynomial ℝ) :
    functional (Polynomial.X * Q ^ 2) = 0 := by simp [functional]

theorem dirac_moment (n : ℕ) :
    (∫ x : ℝ, x ^ n ∂Measure.dirac 0) = powerTrace (n + 1) := by
  cases n <;> simp [powerTrace_exact]

theorem dirac_functional (Q : Polynomial ℝ) :
    (∫ x : ℝ, Q.eval x ∂Measure.dirac 0) = functional Q := by simp [functional]

theorem dirac_moment_integrable (n : ℕ) :
    Integrable (fun x : ℝ => x ^ n) (Measure.dirac 0) := by
  exact integrable_dirac (by simp)

/-- These are the issue's literal p_(i+j+a+1) matrices for this fixture. -/
def hankel (d a : ℕ) : Matrix (Fin (d + 1)) (Fin (d + 1)) ℝ :=
  fun i j => powerTrace (i.val + j.val + a + 1)

theorem unshifted_hankel_eq_diagonal (d : ℕ) :
    hankel d 0 = Matrix.diagonal (fun i => if i = 0 then 1 else 0) := by
  classical
  ext i j
  by_cases h : i.val + j.val + 0 + 1 = 1
  · have hi : i = 0 := Fin.ext (by simp only [Fin.val_zero]; omega)
    have hj : j = 0 := Fin.ext (by simp only [Fin.val_zero]; omega)
    simp [hankel, powerTrace_exact, hi, hj]
  · simp only [hankel, powerTrace_exact, if_neg h]
    by_cases hij : i = j
    · have hi : i ≠ 0 := by intro hi; subst i; subst j; simp at h
      subst j
      simp [hi]
    · simp [hij]

theorem unshifted_hankel_posSemidef (d : ℕ) : (hankel d 0).PosSemidef := by
  classical
  rw [unshifted_hankel_eq_diagonal, Matrix.posSemidef_diagonal_iff]
  intro i
  split_ifs <;> norm_num

theorem shifted_hankel_eq_zero (d : ℕ) : hankel d 1 = 0 := by
  ext i j
  simp [hankel, powerTrace_exact]

theorem shifted_hankel_posSemidef (d : ℕ) : (hankel d 1).PosSemidef := by
  rw [shifted_hankel_eq_zero]
  exact Matrix.PosSemidef.zero

theorem dirac_response (w : ℂ) :
    (∫ x : ℝ, (1 + w * (x : ℂ))⁻¹ ∂Measure.dirac 0) = 1 := by simp

/-- Ordinary power traces use spectral weight eigenvalue, rather than arbitrary vector weight. -/
def traceMeasure {ι : Type*} (eigenvalue : ι → ℝ) : Measure ℝ :=
  Measure.sum (fun i => ENNReal.ofReal (eigenvalue i) • Measure.dirac (eigenvalue i))

theorem traceMeasure_zero_atom {ι : Type*} (eigenvalue : ι → ℝ) :
    traceMeasure eigenvalue {0} = 0 := by
  rw [traceMeasure, Measure.sum_apply _ (measurableSet_singleton 0)]
  have hz : (fun i => (ENNReal.ofReal (eigenvalue i) •
      Measure.dirac (eigenvalue i)) {0}) = (fun _ => 0) := by
    funext i
    by_cases h : eigenvalue i = 0
    · simp [h]
    · simp [Measure.smul_apply, h, Set.mem_singleton_iff]
  rw [hz]
  simp

theorem traceMeasure_ne_dirac {ι : Type*} (eigenvalue : ι → ℝ) :
    traceMeasure eigenvalue ≠ Measure.dirac 0 := by
  intro h
  have hz := traceMeasure_zero_atom eigenvalue
  rw [h] at hz
  simp at hz

theorem summable_spectrum_square {ι : Type*} (eigenvalue : ι → ℝ)
    (hn : ∀ i, 0 ≤ eigenvalue i) (h₁ : Summable eigenvalue) :
    Summable (fun i => eigenvalue i ^ 2) := by
  apply Summable.of_nonneg_of_le (fun i => sq_nonneg (eigenvalue i))
    (fun i => ?_) (h₁.mul_left (∑' i, eigenvalue i))
  have hi := h₁.le_tsum i (fun j _ => hn j)
  simpa only [pow_two] using mul_le_mul_of_nonneg_right hi (hn i)

theorem spectrum_sq_zero {ι : Type*} (eigenvalue : ι → ℝ)
    (h₂ : Summable (fun i => eigenvalue i ^ 2)) (hz : ∑' i, eigenvalue i ^ 2 = 0) :
    ∀ i, eigenvalue i = 0 := by
  intro i
  have hi : eigenvalue i ^ 2 ≤ 0 := by
    simpa [hz] using h₂.le_tsum i (fun j _ => sq_nonneg (eigenvalue j))
  have he : eigenvalue i ^ 2 = 0 := le_antisymm hi (sq_nonneg _)
  exact (sq_eq_zero_iff).mp he

theorem no_summable_power_inventory {ι : Type*} :
    ¬ ∃ eigenvalue : ι → ℝ, Summable eigenvalue ∧ Summable (fun i => eigenvalue i ^ 2) ∧
      (∑' i, eigenvalue i = powerTrace 1) ∧ (∑' i, eigenvalue i ^ 2 = powerTrace 2) := by
  rintro ⟨eigenvalue, _, h₂, h₁, hz⟩
  have he := spectrum_sq_zero eigenvalue h₂ (by simpa [powerTrace_exact] using hz)
  simp [he, powerTrace_exact] at h₁

theorem no_positive_trace_inventory {ι : Type*} :
    ¬ ∃ eigenvalue : ι → ℝ, (∀ i, 0 ≤ eigenvalue i) ∧ Summable eigenvalue ∧
      (∀ r : ℕ, 1 ≤ r → ∑' i, eigenvalue i ^ r = powerTrace r) := by
  rintro ⟨eigenvalue, hn, hs, htrace⟩
  apply no_summable_power_inventory (ι := ι)
  exact ⟨eigenvalue, hs, summable_spectrum_square eigenvalue hn hs,
    by simpa using htrace 1 (by omega), htrace 2 (by omega)⟩


-- Exact exported type and trusted-dependency audit.
#check log_derivative_inverse
#print axioms log_derivative_inverse
#check derivative_logOf_exp
#print axioms derivative_logOf_exp
#check logOf_exp_eq_X
#print axioms logOf_exp_eq_X
#check powerTrace
#print axioms powerTrace
#check powerTrace_exact
#print axioms powerTrace_exact
#check first_powerTrace
#print axioms first_powerTrace
#check later_powerTrace
#print axioms later_powerTrace
#check functional
#print axioms functional
#check functional_monomial
#print axioms functional_monomial
#check functional_square_nonneg
#print axioms functional_square_nonneg
#check functional_shifted_square
#print axioms functional_shifted_square
#check dirac_moment
#print axioms dirac_moment
#check dirac_functional
#print axioms dirac_functional
#check dirac_moment_integrable
#print axioms dirac_moment_integrable
#check hankel
#print axioms hankel
#check unshifted_hankel_eq_diagonal
#print axioms unshifted_hankel_eq_diagonal
#check unshifted_hankel_posSemidef
#print axioms unshifted_hankel_posSemidef
#check shifted_hankel_eq_zero
#print axioms shifted_hankel_eq_zero
#check shifted_hankel_posSemidef
#print axioms shifted_hankel_posSemidef
#check dirac_response
#print axioms dirac_response
#check traceMeasure
#print axioms traceMeasure
#check traceMeasure_zero_atom
#print axioms traceMeasure_zero_atom
#check traceMeasure_ne_dirac
#print axioms traceMeasure_ne_dirac
#check summable_spectrum_square
#print axioms summable_spectrum_square
#check spectrum_sq_zero
#print axioms spectrum_sq_zero
#check no_summable_power_inventory
#print axioms no_summable_power_inventory
#check no_positive_trace_inventory
#print axioms no_positive_trace_inventory

end ContinuousResearch.MassAtZero
