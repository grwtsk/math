import GRWTSK.Analysis.Fourier.ReciprocalZetaQuadraticKernel
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

noncomputable section
open MeasureTheory Set
open scoped ComplexConjugate
namespace EulerP04RH.ConcreteFubini

private def phase (c t s u : ℝ) : ℂ :=
  Complex.exp (((2*c-1:ℝ)+(t-s)*Complex.I)*(u:ℂ))

private def triple (c : ℝ) (z : (ℝ × ℝ) × ℝ) : ℂ :=
  RightLine.pickupKernel c z.1.1 * starRingEnd ℂ (RightLine.pickupKernel c z.1.2) *
    phase c z.1.1 z.1.2 z.2

lemma conjugate_integrable {f : ℝ → ℂ} (hf : Integrable f) :
    Integrable (fun x => starRingEnd ℂ (f x)) := by
  apply hf.norm.mono'
  · exact (by fun_prop : Continuous (fun z : ℂ => starRingEnd ℂ z)).comp_aestronglyMeasurable
      hf.aestronglyMeasurable
  · filter_upwards [] with x
    simp

lemma phase_norm (c t s u : ℝ) : ‖phase c t s u‖ = Real.exp ((2*c-1)*u) := by
  simp [phase, Complex.norm_exp, Complex.mul_re]

lemma phase_norm_bound {c T t s u : ℝ} (_hT : 0 ≤ T) (hu : u ∈ Icc 0 T) :
    ‖phase c t s u‖ ≤ Real.exp (|2*c-1| * T) := by
  rw [phase_norm]
  apply Real.exp_le_exp.mpr
  exact (mul_le_mul_of_nonneg_right (le_abs_self _) hu.1).trans
    (mul_le_mul_of_nonneg_left hu.2 (abs_nonneg _))

lemma triple_integrable {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) :
    Integrable (triple c)
      ((volume.prod volume).prod (volume.restrict (Icc 0 T))) := by
  have hkk := hk.mul_prod (conjugate_integrable hk)
  have hf := hkk.comp_fst (volume.restrict (Icc 0 T))
  apply hf.mul_bdd
  · exact (by unfold phase; fun_prop : Continuous (fun z : (ℝ×ℝ)×ℝ =>
      phase c z.1.1 z.1.2 z.2)).aestronglyMeasurable
  · have hu : ∀ᵐ z : (ℝ×ℝ)×ℝ ∂(volume.prod volume).prod
        (volume.restrict (Icc 0 T)), z.2 ∈ Icc 0 T :=
      Measure.quasiMeasurePreserving_snd.ae (ae_restrict_mem measurableSet_Icc)
    filter_upwards [hu] with z hz
    exact phase_norm_bound hT hz

lemma density_eq_time_integral (c T t s : ℝ) :
    ConcreteRightLine.density c T t s =
      ∫ u : ℝ in Icc 0 T, triple c ((t,s),u) := by
  simp only [ConcreteRightLine.density, ConcreteRightLine.timeKernel, triple, phase]
  rw [integral_const_mul]
  simp only [Complex.ofReal_sub]

lemma density_integrable {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) :
    Integrable (fun z : ℝ×ℝ => ConcreteRightLine.density c T z.1 z.2)
      (volume.prod volume) := by
  have hh := (triple_integrable hT hk).integral_prod_left
  simpa only [← density_eq_time_integral] using hh

lemma density_section_integrable {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) (t : ℝ) :
    Integrable (ConcreteRightLine.density c T t) := by
  have hsu : Integrable (fun z : ℝ×ℝ => triple c ((t,z.1),z.2))
      (volume.prod (volume.restrict (Icc 0 T))) := by
    have hf := ((conjugate_integrable hk).const_mul
      (RightLine.pickupKernel c t)).comp_fst (volume.restrict (Icc 0 T))
    apply hf.mul_bdd
    · exact (by unfold phase; fun_prop : Continuous (fun z : ℝ×ℝ =>
        phase c t z.1 z.2)).aestronglyMeasurable
    · have hu : ∀ᵐ z : ℝ×ℝ ∂volume.prod (volume.restrict (Icc 0 T)),
          z.2 ∈ Icc 0 T :=
        Measure.quasiMeasurePreserving_snd.ae (ae_restrict_mem measurableSet_Icc)
      filter_upwards [hu] with z hz
      exact phase_norm_bound hT hz
  have hh := hsu.integral_prod_left
  simpa only [← density_eq_time_integral] using hh

lemma density_outer_integrable {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) :
    Integrable (fun t : ℝ => ∫ s : ℝ, ConcreteRightLine.density c T t s) :=
  (density_integrable hT hk).integral_prod_left

lemma phase_factorization (c t s u : ℝ) :
    phase c t s u =
      Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
      Complex.exp (((t*u:ℝ):ℂ)*Complex.I) *
      starRingEnd ℂ (Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) := by
  have hconj : starRingEnd ℂ (Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) =
      Complex.exp (-(((s*u:ℝ):ℂ)*Complex.I)) := by
    rw [← Complex.exp_conj]
    congr 1
    simp
  rw [hconj, ← Complex.exp_add, ← Complex.exp_add]
  unfold phase
  congr 1
  push_cast
  ring

lemma frequency_product_return (c u : ℝ) :
    (∫ z : ℝ×ℝ, triple c (z,u) ∂volume.prod volume) =
      Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
      (∫ t : ℝ, RightLine.pickupKernel c t *
        Complex.exp (((t*u:ℝ):ℂ)*Complex.I)) *
      starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
        Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) := by
  have he : (fun z : ℝ×ℝ => triple c (z,u)) =
      (fun z : ℝ×ℝ => Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
        ((RightLine.pickupKernel c z.1 * Complex.exp (((z.1*u:ℝ):ℂ)*Complex.I)) *
        starRingEnd ℂ (RightLine.pickupKernel c z.2 *
          Complex.exp (((z.2*u:ℝ):ℂ)*Complex.I)))) := by
    funext z
    simp only [triple, phase_factorization, map_mul]
    ring
  rw [he, integral_const_mul,
    integral_prod_mul (fun t : ℝ => RightLine.pickupKernel c t *
      Complex.exp (((t*u:ℝ):ℂ)*Complex.I))
      (fun s : ℝ => starRingEnd ℂ (RightLine.pickupKernel c s *
      Complex.exp (((s*u:ℝ):ℂ)*Complex.I))), integral_conj]
  ring

/-- Exact signed reciprocal-Laplace double density return. Its sole analytic input
is L1 of the actual right-line kernel; all product integrability and Fubini swaps
are proved here from that input and the compact time interval. -/
theorem density_double_return {c T : ℝ} (hT : 0 ≤ T)
    (hk : Integrable (RightLine.pickupKernel c)) :
    (∫ t : ℝ, ∫ s : ℝ, ConcreteRightLine.density c T t s) =
      ∫ u : ℝ in Icc 0 T,
        Complex.exp (((2*c-1:ℝ):ℂ)*(u:ℂ)) *
        (∫ t : ℝ, RightLine.pickupKernel c t *
          Complex.exp (((t*u:ℝ):ℂ)*Complex.I)) *
        starRingEnd ℂ (∫ s : ℝ, RightLine.pickupKernel c s *
          Complex.exp (((s*u:ℝ):ℂ)*Complex.I)) := by
  rw [integral_integral (density_integrable hT hk)]
  simp_rw [density_eq_time_integral]
  simp only [Prod.mk.eta]
  have hi : Integrable (Function.uncurry (fun z : ℝ×ℝ => fun u : ℝ => triple c (z,u)))
      ((volume.prod volume).prod (volume.restrict (Icc 0 T))) := triple_integrable hT hk
  rw [integral_integral_swap hi]
  apply integral_congr_ae
  filter_upwards [] with u
  exact frequency_product_return c u

end EulerP04RH.ConcreteFubini
#print axioms EulerP04RH.ConcreteFubini.triple_integrable
#print axioms EulerP04RH.ConcreteFubini.density_double_return

#print axioms EulerP04RH.ConcreteFubini.density_section_integrable
#print axioms EulerP04RH.ConcreteFubini.density_outer_integrable
