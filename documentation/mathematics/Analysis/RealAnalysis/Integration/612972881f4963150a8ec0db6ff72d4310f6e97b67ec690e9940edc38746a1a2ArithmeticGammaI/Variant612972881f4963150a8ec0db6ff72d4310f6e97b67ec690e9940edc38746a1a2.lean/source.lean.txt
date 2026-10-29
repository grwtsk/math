import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
import Mathlib.MeasureTheory.Integral.DominatedConvergence
namespace FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
open MeasureTheory Set
open FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
open FormalResearch.Analysis.ReciprocalKernel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open BridgeAdmissibility AdmissionSource
open scoped BigOperators

theorem exponential_cosine_laplace_integrable (a b : ℝ) (ha : 0 < a) :
    IntegrableOn (fun t : ℝ ↦ Real.exp (-a * t) * Real.cos (b * t)) (Ioi 0) := by
  have h := half_line_polynomial_laplace_integrable 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  have he (t : ℝ) : (Complex.exp (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re =
      Real.exp (-a * t) * Real.cos (b * t) := by
    rw [Complex.exp_re]
    simp
  simp only [pow_zero, one_mul] at h
  exact h.re.congr (Filter.Eventually.of_forall he)

theorem exponential_cosine_laplace_integral (a b : ℝ) (ha : 0 < a) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-a * t) * Real.cos (b * t)) = a / (a ^ 2 + b ^ 2) := by
  have h := half_line_polynomial_laplace_integrable 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  simp only [pow_zero, one_mul] at h
  have hi := half_line_polynomial_laplace_integral 0
    ((a : ℂ) + (b : ℂ) * Complex.I) (by simpa using ha)
  simp only [pow_zero, one_mul, Nat.factorial_zero, Nat.cast_one, zero_add, pow_one] at hi
  have he (t : ℝ) : (Complex.exp (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re =
      Real.exp (-a * t) * Real.cos (b * t) := by
    rw [Complex.exp_re]
    simp
  calc
    _ = ∫ t in Ioi (0 : ℝ), (Complex.exp
        (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re := by
      exact integral_congr_ae (Filter.Eventually.of_forall fun t ↦ (he t).symm)
    _ = (∫ t in Ioi (0 : ℝ), Complex.exp
        (-((a : ℂ) + (b : ℂ) * Complex.I) * (t : ℂ))).re := integral_re h
    _ = _ := by rw [hi]; simp [Complex.normSq_apply, pow_two]

theorem reciprocal_kernel_difference_integrable (a b : ℝ) (ha : 0 < a) :
    IntegrableOn (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) (Ioi 0) := by
  have h0 := exponential_cosine_laplace_integrable a 0 ha
  simp only [zero_mul, Real.cos_zero, mul_one] at h0
  apply (h0.sub (exponential_cosine_laplace_integrable a b ha)).congr
  filter_upwards [] with t
  change Real.exp (-a * t) - Real.exp (-a * t) * Real.cos (b * t) = _
  ring

theorem reciprocal_kernel_difference_integral (a b : ℝ) (ha : 0 < a) :
    (∫ t in Ioi (0 : ℝ), Real.exp (-a * t) * (1 - Real.cos (b * t))) = kernel b a := by
  have he : (fun t : ℝ ↦ Real.exp (-a * t) * (1 - Real.cos (b * t))) =
      (fun t : ℝ ↦ Real.exp (-a * t) * Real.cos (0 * t) -
        Real.exp (-a * t) * Real.cos (b * t)) := by
    funext t
    simp only [zero_mul, Real.cos_zero, mul_one]
    ring
  rw [he, integral_sub (exponential_cosine_laplace_integrable a 0 ha)
    (exponential_cosine_laplace_integrable a b ha),
    exponential_cosine_laplace_integral a 0 ha, exponential_cosine_laplace_integral a b ha]
  unfold kernel
  field_simp
  ring
open FormalResearch.RiemannHypothesis.MultiplicativePhase

noncomputable def gammaDifferenceAtom (ξ : ℝ) (n : ℕ) (t : ℝ) : ℝ :=
  Real.exp (-((n : ℝ) + 1 / 4) * t) * (1 - Real.cos ((ξ / 2) * t))

noncomputable def gammaDirichletDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 4) / (1 - Real.exp (-t))

noncomputable def gammaGramIntegrand (ξ t : ℝ) : ℝ :=
  gammaDirichletDensity t / 2 * Complex.normSq (1 - chi ξ (Real.exp (t / 2)))

theorem gamma_gram_integrand_eq_cosine (ξ t : ℝ) :
    gammaGramIntegrand ξ t = gammaDirichletDensity t * (1 - Real.cos ((ξ / 2) * t)) := by
  unfold gammaGramIntegrand
  rw [normSq_one_sub_chi, Real.log_exp]
  have he : ξ * (t / 2) = (ξ / 2) * t := by ring
  rw [he]
  ring

theorem gamma_difference_atom_nonneg (ξ : ℝ) (n : ℕ) (t : ℝ) :
    0 ≤ gammaDifferenceAtom ξ n t := by
  unfold gammaDifferenceAtom
  exact mul_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr (Real.cos_le_one _))

theorem gamma_difference_atom_integrable (ξ : ℝ) (n : ℕ) :
    IntegrableOn (gammaDifferenceAtom ξ n) (Ioi 0) :=
  reciprocal_kernel_difference_integrable ((n : ℝ) + 1 / 4) (ξ / 2) (by positivity)

theorem gamma_difference_atom_integral (ξ : ℝ) (n : ℕ) :
    (∫ t in Ioi (0 : ℝ), gammaDifferenceAtom ξ n t) = kernel (ξ / 2) ((n : ℝ) + 1 / 4) :=
  reciprocal_kernel_difference_integral ((n : ℝ) + 1 / 4) (ξ / 2) (by positivity)

theorem gamma_difference_atom_eq_geometric (ξ : ℝ) (n : ℕ) (t : ℝ) :
    gammaDifferenceAtom ξ n t =
      Real.exp (-t / 4) * Real.exp (-t) ^ n * (1 - Real.cos ((ξ / 2) * t)) := by
  unfold gammaDifferenceAtom
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  congr 2
  ring

theorem gamma_difference_atoms_summable (ξ t : ℝ) (ht : 0 < t) :
    Summable (fun n : ℕ ↦ gammaDifferenceAtom ξ n t) := by
  simp_rw [gamma_difference_atom_eq_geometric]
  exact ((summable_geometric_of_lt_one (Real.exp_nonneg (-t))
    (Real.exp_lt_one_iff.mpr (by linarith))).mul_left _).mul_right _

theorem gamma_difference_atoms_tsum (ξ t : ℝ) (ht : 0 < t) :
    (∑' n : ℕ, gammaDifferenceAtom ξ n t) = gammaGramIntegrand ξ t := by
  simp_rw [gamma_difference_atom_eq_geometric]
  rw [tsum_mul_right, tsum_mul_left,
    tsum_geometric_of_lt_one (Real.exp_nonneg (-t)) (Real.exp_lt_one_iff.mpr (by linarith)),
    gamma_gram_integrand_eq_cosine]
  unfold gammaDirichletDensity
  ring

theorem gamma_gram_integrand_nonneg (ξ t : ℝ) (ht : 0 < t) :
    0 ≤ gammaGramIntegrand ξ t := by
  rw [gamma_gram_integrand_eq_cosine]
  unfold gammaDirichletDensity
  exact mul_nonneg (div_nonneg (Real.exp_nonneg _)
    (sub_nonneg.mpr (Real.exp_lt_one_iff.mpr (by linarith)).le))
      (sub_nonneg.mpr (Real.cos_le_one _))

theorem gamma_atom_integral_norms_summable (ξ : ℝ) :
    Summable (fun n : ℕ ↦ ∫ t in Ioi (0 : ℝ), ‖gammaDifferenceAtom ξ n t‖) := by
  simp_rw [Real.norm_eq_abs, abs_of_nonneg (gamma_difference_atom_nonneg _ _ _),
    gamma_difference_atom_integral]
  exact kernel_summable _ _ (by norm_num)

theorem gamma_gram_integrand_integrable (ξ : ℝ) :
    IntegrableOn (gammaGramIntegrand ξ) (Ioi 0) := by
  have hm : AEStronglyMeasurable (gammaGramIntegrand ξ) (volume.restrict (Ioi 0)) := by
    change AEStronglyMeasurable (fun t ↦ gammaGramIntegrand ξ t) _
    simp_rw [gamma_gram_integrand_eq_cosine]
    unfold gammaDirichletDensity
    fun_prop
  have hL : (∫⁻ t in Ioi (0 : ℝ), ENNReal.ofReal (gammaGramIntegrand ξ t)) =
      ENNReal.ofReal (∑' n : ℕ, kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
    calc
      _ = ∫⁻ t in Ioi (0 : ℝ), ∑' n : ℕ, ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_congr_ae
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        rw [← gamma_difference_atoms_tsum ξ t ht,
          ENNReal.ofReal_tsum_of_nonneg (gamma_difference_atom_nonneg ξ · t)
            (gamma_difference_atoms_summable ξ t ht)]
      _ = ∑' n : ℕ, ∫⁻ t in Ioi (0 : ℝ),
          ENNReal.ofReal (gammaDifferenceAtom ξ n t) := by
        apply lintegral_tsum
        intro n
        unfold gammaDifferenceAtom
        fun_prop
      _ = ∑' n : ℕ, ENNReal.ofReal (kernel (ξ / 2) ((n : ℝ) + 1 / 4)) := by
        apply tsum_congr
        intro n
        rw [← ofReal_integral_eq_lintegral_ofReal (gamma_difference_atom_integrable ξ n)
          (Filter.Eventually.of_forall (gamma_difference_atom_nonneg ξ n)),
          gamma_difference_atom_integral]
      _ = _ := (ENNReal.ofReal_tsum_of_nonneg (fun n ↦ kernel_nonneg _ _ (by positivity))
        (kernel_summable _ _ (by norm_num))).symm
  refine ⟨hm, (hasFiniteIntegral_iff_ofReal ?_).mpr ?_⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact gamma_gram_integrand_nonneg ξ t ht
  · rw [hL]
    exact ENNReal.ofReal_lt_top

theorem archimedean_difference_eq_gamma_gram_integral (ξ : ℝ) :
    archimedeanMultiplier ξ - archimedeanMultiplier 0 =
      ∫ t in Ioi (0 : ℝ), gammaGramIntegrand ξ t := by
  have h := integral_tsum_of_summable_integral_norm
    (gamma_difference_atom_integrable ξ) (gamma_atom_integral_norms_summable ξ)
  have hp := (AdmissionSource.quarter_series ξ).tsum_eq
  have hc : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  rw [hc]
  rw [show archimedeanMultiplier ξ - -archimedeanConstant =
    archimedeanMultiplier ξ + archimedeanConstant by ring, ← hp]
  simp_rw [gamma_difference_atom_integral] at h
  rw [h]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact gamma_difference_atoms_tsum ξ t ht

end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
