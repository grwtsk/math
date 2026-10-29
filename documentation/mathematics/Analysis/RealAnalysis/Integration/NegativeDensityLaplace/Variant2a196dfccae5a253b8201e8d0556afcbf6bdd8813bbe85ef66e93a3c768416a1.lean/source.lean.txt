import FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability

set_option autoImplicit false

namespace NegativeDensityLaplaceScratch

open MeasureTheory Set Filter ProbabilityTheory
open FormalResearch.MathematicalTooling.Laplace.Continuation
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability

noncomputable section

/-- Every nonnegative complex decay rate preserves a real L1 density on A > 1. -/
theorem laplace_integrable (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (s : ℂ) (hs : 0 ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (f A : ℂ)) (Ioi 1) := by
  apply hf.ofReal.bdd_mul (by fun_prop) (c := 1)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  rw [Complex.norm_exp]
  have hA0 : 0 ≤ A := (zero_lt_one.trans hA).le
  simpa only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, sub_zero, Real.exp_le_one_iff] using
    mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hs) hA0

/-- The Laplace integral of an actual nonnegative L1 density is analytic on Re s > 0. -/
theorem laplace_analytic (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A) (s : ℂ) (hs : 0 < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) s := by
  let μ₀ : Measure ℝ := volume.restrict (Ioi 1)
  let μ : Measure ℝ := μ₀.withDensity (fun A ↦ ENNReal.ofReal (f A))
  have hm : AEMeasurable (fun A ↦ ENNReal.ofReal (f A)) μ₀ :=
    hf.aestronglyMeasurable.aemeasurable.ennreal_ofReal
  have hfinite : ∀ᵐ A ∂μ₀, ENNReal.ofReal (f A) < ⊤ :=
    Eventually.of_forall (fun _ ↦ ENNReal.ofReal_lt_top)
  have hsame : ∀ᵐ A ∂μ₀, (ENNReal.ofReal (f A)).toReal = f A := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
    exact ENNReal.toReal_ofReal (hpos A hA.le)
  have hexp (z : ℂ) (hz : 0 ≤ z.re) :
      Integrable (fun A : ℝ ↦ Complex.exp (-z * A)) μ := by
    apply (integrable_withDensity_iff_integrable_smul₀' hm hfinite).mpr
    apply (laplace_integrable f hf z hz).congr
    filter_upwards [hsame] with A hA
    rw [hA, Complex.real_smul]
    exact mul_comm _ _
  have hconv (t : ℝ) (ht : 0 < t) :
      Integrable (fun A : ℝ ↦ Real.exp (-t * id A)) μ := by
    have h := (hexp (t : ℂ) ht.le).norm
    simpa only [id_eq, Complex.norm_exp, Complex.mul_re, Complex.neg_re,
      Complex.ofReal_re, Complex.neg_im, Complex.ofReal_im, neg_zero,
      zero_mul, sub_zero] using h
  have heq : transform id μ = (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) := by
    funext z
    change (∫ A : ℝ, Complex.exp (-z * A) ∂μ) = _
    rw [show μ = μ₀.withDensity (fun A ↦ ENNReal.ofReal (f A)) from rfl,
      integral_withDensity_eq_integral_toReal_smul₀ hm hfinite]
    apply integral_congr_ae
    filter_upwards [hsame] with A hA
    rw [hA, Complex.real_smul]
    exact mul_comm _ _
  rw [← heq]
  exact transform_analytic 0 hconv s hs

/-- Exponential tilting preserves the literal actual negative-part Laplace integrand. -/
theorem negative_tilt_eq (η A : ℝ) (s : ℂ) :
    Complex.exp (-(s - (η : ℂ)) * A) *
        ((Real.exp (-η * A) * negativeSource A : ℝ) : ℂ) =
      Complex.exp (-s * A) * (negativeSource A : ℂ) := by
  simp only [Complex.ofReal_mul, Complex.ofReal_exp, Complex.ofReal_neg]
  rw [← mul_assoc, ← Complex.exp_add]
  congr 2
  ring

/-- An assumed actual negative-part L1 rate gives genuine complex integrability to its right. -/
theorem negative_laplace_integrable (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (negativeSource A : ℂ)) (Ioi 1) := by
  have hz : 0 ≤ (s - (η : ℂ)).re := by simpa using sub_nonneg.mpr hs
  apply (laplace_integrable _ hη (s - (η : ℂ)) hz).congr
  exact Eventually.of_forall (fun A ↦ negative_tilt_eq η A s)

/-- No arithmetic estimate is supplied: holomorphy follows from the displayed L1 premise. -/
theorem negative_laplace_analytic (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (negativeSource A : ℂ)) s := by
  let f : ℝ → ℝ := fun A ↦ Real.exp (-η * A) * negativeSource A
  have hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A := by
    intro A hA
    exact mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA)
  have hz : 0 < (s - (η : ℂ)).re := by simpa using sub_pos.mpr hs
  have h := (laplace_analytic f hη hpos (s - (η : ℂ)) hz).comp
    (f := fun z : ℂ ↦ z - (η : ℂ)) (by fun_prop)
  convert h using 1
  funext z
  apply integral_congr_ae
  exact Eventually.of_forall (fun A ↦ (negative_tilt_eq η A z).symm)

#print axioms laplace_integrable
#print axioms laplace_analytic
#print axioms negative_tilt_eq
#print axioms negative_laplace_integrable
#print axioms negative_laplace_analytic

end
end NegativeDensityLaplaceScratch
