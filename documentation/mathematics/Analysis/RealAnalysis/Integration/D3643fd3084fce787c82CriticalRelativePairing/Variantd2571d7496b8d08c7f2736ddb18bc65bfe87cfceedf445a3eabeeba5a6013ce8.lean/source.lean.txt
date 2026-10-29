import ActualSignedStieltjes
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Complete actual signed Chebyshev pairing and a bounded lattice correction.
The finite Mangoldt inventory, every prime power and the negative unit atom
come from the inherited literal Stieltjes identity; no sector is discarded.
Direction and theorem selection: grwtsk contributors. Attached cubic derivation:
ChatGPT. New Lean specialization: OpenAI Codex. No uniform witness is supplied.
The underlying relative-error algebra was recorded in #297 comment 5990906815;
the Stieltjes identity and source bounds are inherited proof dependencies.
-/
set_option autoImplicit false
noncomputable section
namespace OmegaResearch.CriticalRelativePairing
open MeasureTheory Set
open FormalResearch.RiemannHypothesis SourcePairing SourceCorrelationEnergy
open SourceSamplingCoefficients
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open ContinuousResearch.ActualSignedStieltjes
open ContinuousResearch.ActualIntegerInventory

/-- Literal all-prime-power relative Chebyshev error, also used by the P25 packet. -/
def relativePsiError (t : ℝ) : ℝ := Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1

def criticalWeight (A t : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A t / 2 -
    deriv (sourceCorrelation explicitSecondDerivative A) t

def criticalKernel (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * relativePsiError t * criticalWeight A t

def latticeKernel (A t : ℝ) : ℝ :=
  Int.fract (Real.exp t) * Real.exp (-t / 2) * criticalWeight A t

def criticalRelativePairing (A : ℝ) : ℝ := ∫ t in Ioi (0 : ℝ), criticalKernel A t

def latticePairing (A : ℝ) : ℝ := ∫ t in Ioi (0 : ℝ), latticeKernel A t

theorem criticalWeight_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (criticalWeight A) := by
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  exact hc.continuous.div_const 2 |>.sub (hc.continuous_deriv (by norm_num))

theorem criticalWeight_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |criticalWeight A t| ≤ 1 / 2 + 5 / A := by
  unfold criticalWeight
  calc
    _ ≤ |sourceCorrelation explicitSecondDerivative A t / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_sub _ _
    _ ≤ 1 / 2 + 5 / A := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add
        (div_le_div_of_nonneg_right (actual_correlation_abs_le_one A t hA) (by norm_num))
        (sourceCorrelation_deriv_abs_le_five_div hA t)

theorem latticeKernel_measurable {A : ℝ} (hA : 1 ≤ A) :
    Measurable (latticeKernel A) := by
  unfold latticeKernel
  exact ((measurable_fract.comp (by fun_prop)).mul (by fun_prop)).mul
    (criticalWeight_continuous hA).measurable

theorem latticeKernel_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |latticeKernel A t| ≤ (1 / 2 + 5 / A) * Real.exp (-t / 2) := by
  unfold latticeKernel
  rw [abs_mul, abs_mul, abs_of_nonneg (Int.fract_nonneg _),
    abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (1 * Real.exp (-t / 2)) * (1 / 2 + 5 / A) :=
      mul_le_mul
        (mul_le_mul_of_nonneg_right (Int.fract_lt_one _).le (Real.exp_pos _).le)
        (criticalWeight_abs_le hA t) (abs_nonneg _) (by positivity)
    _ = _ := by ring

theorem latticeKernel_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (latticeKernel A) (Ioi (0 : ℝ)) := by
  have he : IntegrableOn (fun t : ℝ => Real.exp (-t / 2)) (Ioi (0 : ℝ)) := by
    simpa using exponential_half_integrable 0
  apply (he.const_mul (1 / 2 + 5 / A)).mono'
    (latticeKernel_measurable hA).aestronglyMeasurable
  filter_upwards with t
  exact (by simpa only [Real.norm_eq_abs] using latticeKernel_abs_le hA t)

/-- The only separately estimated term is this independently specified lattice correction. -/
theorem latticePairing_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |latticePairing A| ≤ 1 + 10 / A := by
  have he : IntegrableOn (fun t : ℝ => Real.exp (-t / 2)) (Ioi (0 : ℝ)) := by
    simpa using exponential_half_integrable 0
  have hb := norm_integral_le_of_norm_le (f := latticeKernel A)
    (he.const_mul (1 / 2 + 5 / A)) (by
      filter_upwards with t
      exact (by simpa only [Real.norm_eq_abs] using latticeKernel_abs_le hA t))
  rw [Real.norm_eq_abs, integral_const_mul] at hb
  have hi : (∫ t in Ioi (0 : ℝ), Real.exp (-t / 2)) = 2 := by
    simpa using exponential_half_integral 0
  rw [hi] at hb
  exact hb.trans_eq (by ring)

theorem kernel_exact_decomposition (A t : ℝ) :
    -signedLogKernel A t = criticalKernel A t + latticeKernel A t := by
  have hexp : Real.exp (t / 2) * Real.exp (-t) = Real.exp (-t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hhalf : Real.exp t * Real.exp (-t / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hcoef :
      Real.exp (t / 2) * (Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1) +
        (Real.exp t - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2) =
      (Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2) := by
    rw [mul_sub, ← mul_assoc, hexp, sub_mul, hhalf]
    ring
  unfold signedLogKernel criticalKernel relativePsiError latticeKernel criticalWeight
  rw [Int.fract]
  calc
    _ = ((Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2)) *
        (sourceCorrelation explicitSecondDerivative A t / 2 -
          deriv (sourceCorrelation explicitSecondDerivative A) t) := by ring
    _ = _ := by rw [← hcoef]; ring

/-- Integrability follows from the actual signed source and the proved lattice majorant. -/
theorem criticalKernel_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (criticalKernel A) (Ioi (0 : ℝ)) := by
  have hi := (actual_log_signed_integrable hA).neg.sub (latticeKernel_integrable hA)
  apply hi.congr_fun
  · intro t _
    change -signedLogKernel A t - latticeKernel A t = criticalKernel A t
    linarith [kernel_exact_decomposition A t]
  · exact measurableSet_Ioi

/-- All compensating arithmetic coefficients are retained inside the one critical pairing. -/
theorem integerJ_eq_critical_add_lattice {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = criticalRelativePairing A + latticePairing A := by
  rw [actual_log_stieltjes hA, ← integral_neg]
  have he : (fun t => -signedLogKernel A t) =
      (fun t => criticalKernel A t + latticeKernel A t) :=
    funext (kernel_exact_decomposition A)
  rw [he, integral_add (criticalKernel_integrable hA) (latticeKernel_integrable hA)]
  rfl

theorem integerJ_le_critical {A : ℝ} (hA : 1 ≤ A) :
    integerJ A ≤ criticalRelativePairing A + (1 + 10 / A) := by
  rw [integerJ_eq_critical_add_lattice hA]
  exact add_le_add le_rfl ((le_abs_self _).trans (latticePairing_abs_le hA))

theorem critical_le_integerJ {A : ℝ} (hA : 1 ≤ A) :
    criticalRelativePairing A ≤ integerJ A + (1 + 10 / A) := by
  have he := integerJ_eq_critical_add_lattice hA
  have hb := (abs_le.mp (latticePairing_abs_le hA)).1
  linarith

def CriticalRelativeTailUpperBound : Prop :=
  ∃ K R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K

/-- Equivalence of exact one-sided research propositions; neither witness is constructed. -/
theorem critical_tail_iff_integer_tail : CriticalRelativeTailUpperBound ↔
    ContinuousResearch.IntegerWitnessTransfer.IntegerTailUpperBound := by
  have hb {A : ℝ} (hA : 1 ≤ A) : 1 + 10 / A ≤ 11 := by
    have h : 10 / A ≤ 10 := (div_le_iff₀ (by linarith : 0 < A)).2 (by nlinarith)
    linarith
  constructor
  · rintro ⟨K, R, hR, hK⟩
    refine ⟨K + 11, R, hR, ?_⟩
    intro A hRA
    have ha := hR.trans hRA
    linarith [integerJ_le_critical ha, hK A hRA, hb ha]
  · rintro ⟨K, R, hR, hK⟩
    refine ⟨K + 11, R, hR, ?_⟩
    intro A hRA
    have ha := hR.trans hRA
    linarith [critical_le_integerJ ha, hK A hRA, hb ha]

end OmegaResearch.CriticalRelativePairing
