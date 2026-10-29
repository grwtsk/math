import GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel
import GRWTSK.Analysis.Fourier.QuadraticKernelTruncation
import GRWTSK.Analysis.MeasureTheory.Integral.QuadraticFourierFubini
import GRWTSK.Analysis.Fourier.AngularFrequencyParseval
import Mathlib.Analysis.Fourier.Inversion

/-! Actual reciprocal-right-line Fourier inversion and source-energy identification.
The globally completed signed Möbius pickup is the source throughout. Its
right-line Laplace transform, kernel L1 convergence, normalized inversion,
absolute product convergence, Fubini return, and damping cancellation are all
proved or consumed from checked source adapters. The Identification producer
has only c > 1 as input; no arithmetic energy or zero-free-strip hypothesis.
No polynomial signed-head estimate or unconditional P04/RH proof is asserted.
-/

noncomputable section
open MeasureTheory Set Filter
open scoped FourierTransform
namespace EulerP04RH.ConcreteIdentification

def weightedSource (c u : ℝ) : ℂ :=
  Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) * FEMI.completedPickup u

theorem completedPickup_zero_of_nonpositive {u : ℝ} (hu : u ≤ 0) :
    FEMI.completedPickup u = 0 := by
  rw [FEMI.completedPickup, PPNCP04.pickup]
  have hz : (∑ n ∈ PPNCP04.integerInventory u,
      PPNCP04.realMoebius n * PPNCP04.atom n u) = 0 := by
    apply Finset.sum_eq_zero
    intro n hn
    have hnpos : 0 < n := by have h := (PPNCP04.mem_integerInventory.mp hn).1; omega
    have hzero := ASBNP04.FiniteProduct.atom_zero_of_nonpositive n hnpos u hu
    rw [PPNCP04.atom_source_bridge] at hzero
    rw [hzero, mul_zero]
  rw [hz]
  simp

theorem completedPickup_continuous : Continuous FEMI.completedPickup := by
  change Continuous (fun u => (NativeWindow.globalPickup u : ℂ))
  exact Complex.continuous_ofReal.comp NativeWindow.globalPickup_continuous

theorem weightedSource_continuous (c : ℝ) : Continuous (weightedSource c) := by
  exact (continuous_const.mul Complex.continuous_ofReal).cexp.mul completedPickup_continuous

theorem weightedSource_zero_of_nonpositive (c : ℝ) {u : ℝ} (hu : u ≤ 0) :
    weightedSource c u = 0 := by
  rw [weightedSource, completedPickup_zero_of_nonpositive hu, mul_zero]

theorem weightedSource_integrable {c : ℝ} (hc : 1 < c) :
    Integrable (weightedSource c) := by
  have hline : (1/2 : ℝ) < ((c - 1/2 : ℝ) : ℂ).re := by simp; linarith
  have hi := FEMI.pickupLaplace_integrable ((c - 1/2 : ℝ) : ℂ) hline
  change IntegrableOn (weightedSource c) (Ioi 0) at hi
  have he : weightedSource c = (Ioi (0 : ℝ)).indicator (weightedSource c) := by
    funext u
    by_cases hu : u ∈ Ioi (0 : ℝ)
    · simp [Set.indicator_of_mem hu]
    · rw [Set.indicator_of_notMem hu, weightedSource_zero_of_nonpositive c (le_of_not_gt hu)]
  rw [he]
  exact hi.integrable_indicator measurableSet_Ioi

/-- Actual angular Fourier transform, using only the absolutely convergent right-line Laplace sum. -/
theorem weightedSource_rawFourier {c : ℝ} (hc : 1 < c) (t : ℝ) :
    PPNC.rawFourier (weightedSource c) t = RightLine.pickupKernel c t := by
  let z : ℂ := (c - 1/2 : ℝ) + t * Complex.I
  have hline : (1/2 : ℝ) < z.re := by simp [z]; linarith
  rw [PPNC.rawFourier_eq_integral]
  calc
    _ = ∫ u : ℝ, Complex.exp (-z * (u : ℂ)) * FEMI.completedPickup u := by
      apply integral_congr_ae
      filter_upwards [] with u
      dsimp only [weightedSource]
      calc
        _ = (Complex.exp (-((c-1/2 : ℝ) : ℂ) * (u : ℂ)) *
          Complex.exp (((-(u*t)) : ℂ) * Complex.I)) * FEMI.completedPickup u := by ring
        _ = _ := by
          rw [← Complex.exp_add]
          congr 2
          dsimp only [z]
          push_cast
          ring
    _ = ∫ u : ℝ in Ioi 0, Complex.exp (-z * (u : ℂ)) * FEMI.completedPickup u := by
      symm
      apply setIntegral_eq_integral_of_forall_compl_eq_zero
      intro u hu
      rw [completedPickup_zero_of_nonpositive (le_of_not_gt hu), mul_zero]
    _ = _ := FEMI.pickupLaplace_eq_reciprocal z hline

theorem weightedSource_fourier {c : ℝ} (hc : 1 < c) (ξ : ℝ) :
    (𝓕 (weightedSource c)) ξ = RightLine.pickupKernel c ((2 * Real.pi) * ξ) := by
  rw [← weightedSource_rawFourier hc, PPNCP04.Plancherel.rawFourier_eq_fourier]
  field_simp

/-- Fourier inversion in the literal angular-frequency convention. -/
theorem weightedSource_inversion {c : ℝ} (hc : 1 < c)
    (hk : Integrable (RightLine.pickupKernel c)) (u : ℝ) :
    ((2 * Real.pi : ℝ)⁻¹ : ℂ) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) =
      weightedSource c u := by
  have hfourier : Integrable (𝓕 (weightedSource c) : ℝ → ℂ) := by
    have he : (𝓕 (weightedSource c) : ℝ → ℂ) =
        fun ξ => RightLine.pickupKernel c ((2 * Real.pi) * ξ) :=
      funext (weightedSource_fourier hc)
    rw [he]
    exact hk.comp_mul_left' (by positivity)
  have hi := (weightedSource_integrable hc).fourierInv_fourier_eq hfourier
    ((weightedSource_continuous c).continuousAt (x := u))
  rw [Real.fourierInv_eq'] at hi
  simp only [Real.inner_apply, smul_eq_mul] at hi
  have he : (fun ξ : ℝ => Complex.exp (((2 * Real.pi * (ξ*u) : ℝ) : ℂ) * Complex.I) *
      (𝓕 (weightedSource c)) ξ) =
      fun ξ => (fun t : ℝ => RightLine.pickupKernel c t *
        Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) ((2 * Real.pi) * ξ) := by
    funext ξ
    rw [weightedSource_fourier hc]
    have hexp : 2 * Real.pi * (ξ*u) = (2 * Real.pi * ξ) * u := by ring
    rw [hexp]
    exact mul_comm _ _
  rw [he] at hi
  have hs := Measure.integral_comp_mul_left
    (fun t : ℝ => RightLine.pickupKernel c t *
      Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) (2 * Real.pi)
  rw [abs_of_pos (by positivity : 0 < (2 * Real.pi : ℝ)⁻¹),
    RCLike.real_smul_eq_coe_mul] at hs
  have hr := hs.symm.trans hi
  change Complex.ofReal ((2 * Real.pi : ℝ)⁻¹) *
    (∫ t : ℝ, RightLine.pickupKernel c t *
      Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) = weightedSource c u at hr
  rw [Complex.ofReal_inv] at hr
  exact hr


theorem spectralIntegral_eq_weightedSource {c : ℝ} (hc : 1 < c)
    (hk : Integrable (RightLine.pickupKernel c)) (u : ℝ) :
    (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) =
      ((2 * Real.pi : ℝ) : ℂ) * weightedSource c u := by
  have hi := weightedSource_inversion hc hk u
  have hp : ((2 * Real.pi : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (by positivity : (2 * Real.pi : ℝ) ≠ 0)
  calc
    _ = ((2 * Real.pi : ℝ) : ℂ) *
        (((2 * Real.pi : ℝ) : ℂ)⁻¹ *
          (∫ t : ℝ, RightLine.pickupKernel c t *
            Complex.exp (((t*u : ℝ) : ℂ) * Complex.I))) := by
      rw [← mul_assoc, mul_inv_cancel₀ hp, one_mul]
    _ = _ := by rw [hi]

theorem weightedSource_star (c u : ℝ) :
    starRingEnd ℂ (weightedSource c u) = weightedSource c u := by
  have he : Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) =
      (Real.exp (-(c-1/2) * u) : ℂ) := by
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  simp only [weightedSource, FEMI.completedPickup, map_mul, he, Complex.conj_ofReal]

theorem weightedSource_square_return (c u : ℝ) :
    Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) * weightedSource c u *
      starRingEnd ℂ (weightedSource c u) =
        ((NativeWindow.globalPickup u ^ 2 : ℝ) : ℂ) := by
  rw [weightedSource_star]
  have he : Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
      Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) *
      Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) = 1 := by
    rw [← Complex.exp_add, ← Complex.exp_add]
    have hz : (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) +
        -((c - 1/2 : ℝ) : ℂ) * (u : ℂ) +
        -((c - 1/2 : ℝ) : ℂ) * (u : ℂ) = 0 := by push_cast; ring
    rw [hz, Complex.exp_zero]
  calc
    _ = (Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ))) *
        (FEMI.completedPickup u * FEMI.completedPickup u) := by
      simp only [weightedSource]
      ring
    _ = _ := by
      rw [he, one_mul]
      simp only [FEMI.completedPickup, NativeWindow.globalPickup, pow_two, Complex.ofReal_mul]



/-- All kernel-integrability input to inversion is discharged on the actual right line. -/
theorem actual_weightedSource_inversion {c : ℝ} (hc : 1 < c) (u : ℝ) :
    ((2 * Real.pi : ℝ)⁻¹ : ℂ) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) =
      weightedSource c u :=
  weightedSource_inversion hc (ConcreteTail.pickupKernel_integrable hc) u

/-- The concrete double reciprocal-kernel integral equals the literal signed source energy. -/
theorem kernelEnergy_eq_actual_energy {c T : ℝ} (hc : 1 < c) (hT : 0 ≤ T) :
    ConcreteRightLine.kernelEnergy c T = PPNCP04.energy T := by
  have hk := ConcreteTail.pickupKernel_integrable hc
  have hr := ConcreteFubini.density_double_return (c := c) hT hk
  rw [ConcreteRightLine.kernelEnergy, hr]
  have he : (fun u : ℝ => Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) *
      starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
        Complex.exp (((s*u : ℝ) : ℂ) * Complex.I))) =
      fun u => Complex.ofReal ((2 * Real.pi : ℝ)^2) *
        ((NativeWindow.globalPickup u ^ 2 : ℝ) : ℂ) := by
    funext u
    rw [spectralIntegral_eq_weightedSource hc hk u]
    simp only [map_mul, Complex.conj_ofReal]
    calc
      _ = Complex.ofReal ((2 * Real.pi : ℝ)^2) *
        (Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) * weightedSource c u *
          starRingEnd ℂ (weightedSource c u)) := by push_cast; ring
      _ = _ := by rw [weightedSource_square_return]
  rw [he, integral_const_mul, integral_complex_ofReal,
    ← NativeWindow.energy_eq_global_integral]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  rw [← mul_assoc, inv_mul_cancel₀ (by positivity : (2 * Real.pi : ℝ)^2 ≠ 0), one_mul]

/-- Genuine convergence and the actual source identity produce every Identification field. -/
theorem actual_identification {c : ℝ} (hc : 1 < c) :
    ConcreteRightLine.Identification c := by
  intro T hT
  exact ⟨ConcreteTail.density_integrable hc hT,
    ConcreteTail.density_section_integrable hc hT,
    ConcreteTail.density_outer_integrable hc hT,
    kernelEnergy_eq_actual_energy hc hT⟩



/-- The fixed concrete route now requires only its explicit head and tail budgets. -/
theorem literal_P04_of_concrete_budgets {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tailBound : ConcreteRightLine.TailBudget c height)
    (headResidueBound : ConcreteRightLine.SignedHeadResidueBudget c height) : PPNCP04.P04 :=
  ConcreteRightLine.concrete_route_implies_literal_P04 hc height heightValid
    (actual_identification hc) tailBound headResidueBound

/-- Conditional arithmetic consumer with the source identification fully discharged. -/
theorem literal_RH_of_concrete_budgets {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tailBound : ConcreteRightLine.TailBudget c height)
    (headResidueBound : ConcreteRightLine.SignedHeadResidueBudget c height) : _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04
    (literal_P04_of_concrete_budgets hc height heightValid tailBound headResidueBound)


end EulerP04RH.ConcreteIdentification
#print axioms EulerP04RH.ConcreteIdentification.weightedSource_rawFourier
#print axioms EulerP04RH.ConcreteIdentification.weightedSource_inversion

#print axioms EulerP04RH.ConcreteIdentification.actual_identification

#print axioms EulerP04RH.ConcreteIdentification.literal_P04_of_concrete_budgets
#print axioms EulerP04RH.ConcreteIdentification.literal_RH_of_concrete_budgets
