/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure
import Mathlib.Analysis.Complex.RealDeriv

set_option autoImplicit false

/-!
# Range-reduced samples and nonamplifying logarithm-input transport

The dyadic log value feeds the same finite Taylor polynomial and the same
Mellin kernel. On Re(z)<=1 the exponential on nonnegative real logarithms
has sensitivity at most |z-1|; the polynomial's norm amplification need not
be charged for that distinct input error. The Taylor tail and its guard remain.
No runtime qualification, zeta source or tail theorem is claimed.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntervalMellinRangeReduction

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.Analysis.Complex.IntervalMellinQuadrature
open GRWTSK.Analysis.Complex.IntervalMellinElementary
open GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
open GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure
noncomputable section

/-- No exponential height factor is needed on this nonnegative real ray.
The sign of Re(a) and the signs of both scalar inputs are essential. -/
theorem norm_exp_ray_sub_le {a : ℂ} (ha : a.re ≤ 0) {s t : ℝ}
    (hs : 0 ≤ s) (ht : 0 ≤ t) :
    ‖Complex.exp (a * (s : ℂ)) - Complex.exp (a * (t : ℂ))‖ ≤ ‖a‖ * |s - t| := by
  have hd (u : ℝ) :
      HasDerivAt (fun v : ℝ => Complex.exp (a * (v : ℂ)))
        (Complex.exp (a * (u : ℂ)) * a) u := by
    simpa using (((hasDerivAt_id u).ofReal_comp).const_mul a).cexp
  have hb (u : ℝ) (hu : u ∈ Set.Ici (0 : ℝ)) :
      ‖Complex.exp (a * (u : ℂ)) * a‖ ≤ ‖a‖ := by
    have hre : (a * (u : ℂ)).re ≤ 0 := by
      simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
        mul_zero, sub_zero] using mul_nonpos_of_nonpos_of_nonneg ha hu
    have he : ‖Complex.exp (a * (u : ℂ))‖ ≤ 1 := by
      simpa only [Complex.norm_exp, Real.exp_zero] using Real.exp_le_exp.mpr hre
    calc
      _ = ‖Complex.exp (a * (u : ℂ))‖ * ‖a‖ := norm_mul _ _
      _ ≤ 1 * ‖a‖ := mul_le_mul_of_nonneg_right he (norm_nonneg a)
      _ = _ := one_mul _
  have h := (convex_Ici (0 : ℝ)).norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun u _ => (hd u).hasDerivWithinAt) hb ht hs
  simpa only [Real.norm_eq_abs] using h

/-- Only the polynomial's approximate exponent needs this norm majorant. -/
def reducedNodeBound (z : ℂ) (t : ℝ) (k L₂ Lr : ℕ) : ℝ :=
  componentBound (z - 1) * |reducedLogCenter t k L₂ Lr|

def reducedNodeValue (z : ℂ) (t : ℝ) (k L₂ Lr M : ℕ) : ℂ :=
  taylorValue ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) M

/-- Input uncertainty is propagated through the true exponential, not a polynomial norm. -/
def reducedNodeError (z : ℂ) (t : ℝ) (k L₂ Lr M : ℕ) : ℝ :=
  componentBound (z - 1) * reducedLogRadius t k L₂ Lr +
    taylorTail (reducedNodeBound z t k L₂ Lr) M

theorem reduced_argument_bound (z : ℂ) (t : ℝ) (k L₂ Lr : ℕ) :
    ‖(z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)‖ ≤ reducedNodeBound z t k L₂ Lr := by
  simpa only [norm_mul, Complex.norm_real, Real.norm_eq_abs, reducedNodeBound] using
    mul_le_mul_of_nonneg_right (norm_le_componentBound (z - 1))
      (abs_nonneg (reducedLogCenter t k L₂ Lr))

/-- The explicit domain Re(z)<=1 does not assume z is a zero or move its coordinates. -/
theorem density_reduced_node_error {z : ℂ} (hz : z.re ≤ 1) {t : ℝ} (ht : 1 ≤ t)
    (k L₂ Lr M : ℕ) (hk : (2 : ℝ) ^ k ≤ t)
    (hL₂ : 0 < L₂) (hLr : 0 < Lr)
    (hguard : reducedNodeBound z t k L₂ Lr / (M + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖density z t - reducedNodeValue z t k L₂ Lr M‖ ≤ reducedNodeError z t k L₂ Lr M := by
  have hc0 := reducedLogCenter_nonneg k L₂ Lr hk hL₂ hLr
  have hr := reducedLogCenter_error ht k L₂ Lr hk hL₂ hLr
  have ha : (z - 1).re ≤ 0 := by simpa using sub_nonpos.mpr hz
  have hinput := (norm_exp_ray_sub_le ha (Real.log_nonneg ht) hc0).trans
    (mul_le_mul (norm_le_componentBound (z - 1)) hr (abs_nonneg _)
      (componentBound_nonneg (z - 1)))
  have htail := exponential_tail (reduced_argument_bound z t k L₂ Lr) M hguard
  calc
    _ = ‖(Complex.exp ((z - 1) * (Real.log t : ℂ)) -
        Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))) +
        (Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) -
        taylorValue ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) M)‖ := by
      unfold density reducedNodeValue
      congr 1
      abel
    _ ≤ ‖Complex.exp ((z - 1) * (Real.log t : ℂ)) -
        Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ))‖ +
        ‖Complex.exp ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) -
        taylorValue ((z - 1) * (reducedLogCenter t k L₂ Lr : ℂ)) M‖ := norm_add_le _ _
    _ ≤ _ := add_le_add hinput htail

/-- Use the existing quadrature on its literal covered interval and unchanged density.
The upper scale guard is needed for the reduced-domain resource bound, although
correctness of a larger positive mantissa does not rely on it. -/
theorem kernel_reduced_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 1)
    (k Lr M : ℕ → ℕ) (L₂ : ℕ) (hL₂ : 0 < L₂)
    (hk : ∀ i < N, (2 : ℝ) ^ k i ≤ x i)
    (_hk₂ : ∀ i < N, x i ≤ (2 : ℝ) ^ (k i + 1))
    (hLr : ∀ i < N, 0 < Lr i)
    (hguard : ∀ i < N,
      reducedNodeBound z (x i) (k i) L₂ (Lr i) / (M i + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖kernel (x 0) (x N) z - ∑ i ∈ Finset.range N,
      (x (i + 1) - x i) • reducedNodeValue z (x i) (k i) L₂ (Lr i) (M i)‖ ≤
      arithmeticMeshBound x N z + ∑ i ∈ Finset.range N,
        (x (i + 1) - x i) * reducedNodeError z (x i) (k i) L₂ (Lr i) (M i) := by
  have h := kernel_sample_error x N hx ha (show z.re ≤ (2 : ℝ) by linarith)
    (fun i => reducedNodeValue z (x i) (k i) L₂ (Lr i) (M i))
    (fun i => reducedNodeError z (x i) (k i) L₂ (Lr i) (M i))
    (fun i hi => density_reduced_node_error hz (ha.le.trans (hx (Nat.zero_le i)))
      (k i) L₂ (Lr i) (M i) (hk i hi) hL₂ (hLr i hi) (hguard i hi))
  exact h.trans (add_le_add (partitionError_le_arithmeticMeshBound x N z) (le_refl _))

/-- Final arithmetic retains zero initialization and each local weighted-step bound. -/
theorem kernel_reduced_accumulated_error (x : ℕ → ℝ) (N : ℕ) (hx : Monotone x)
    (ha : 1 < x 0) {z : ℂ} (hz : z.re ≤ 1)
    (k Lr M : ℕ → ℕ) (L₂ : ℕ) (hL₂ : 0 < L₂)
    (hk : ∀ i < N, (2 : ℝ) ^ k i ≤ x i)
    (hk₂ : ∀ i < N, x i ≤ (2 : ℝ) ^ (k i + 1))
    (hLr : ∀ i < N, 0 < Lr i)
    (hguard : ∀ i < N,
      reducedNodeBound z (x i) (k i) L₂ (Lr i) / (M i + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (acc : ℕ → ℂ) (e : ℕ → ℝ) (h0 : acc 0 = 0)
    (hstep : ∀ i < N, ‖acc (i + 1) - (acc i + (x (i + 1) - x i) •
      reducedNodeValue z (x i) (k i) L₂ (Lr i) (M i))‖ ≤ e i) :
    ‖kernel (x 0) (x N) z - acc N‖ ≤ arithmeticMeshBound x N z +
      (∑ i ∈ Finset.range N, (x (i + 1) - x i) *
        reducedNodeError z (x i) (k i) L₂ (Lr i) (M i)) + ∑ i ∈ Finset.range N, e i := by
  have hq := kernel_reduced_error x N hx ha hz k Lr M L₂ hL₂ hk hk₂ hLr hguard
  have hs := sum_from_step_errors
    (fun i => (x (i + 1) - x i) • reducedNodeValue z (x i) (k i) L₂ (Lr i) (M i))
    acc e h0 N hstep
  let Q : ℂ := ∑ i ∈ Finset.range N,
    (x (i + 1) - x i) • reducedNodeValue z (x i) (k i) L₂ (Lr i) (M i)
  calc
    _ = ‖(kernel (x 0) (x N) z - Q) + (Q - acc N)‖ := by congr 1; abel
    _ ≤ ‖kernel (x 0) (x N) z - Q‖ + ‖Q - acc N‖ := norm_add_le _ _
    _ ≤ _ := add_le_add hq hs

/-- The constant density needs one term and has no constructed node error. -/
theorem unit_parameter_exact (t : ℝ) (k L₂ Lr : ℕ) :
    reducedNodeValue 1 t k L₂ Lr 1 = 1 ∧ reducedNodeError 1 t k L₂ Lr 1 = 0 := by
  simp [reducedNodeValue, reducedNodeError, reducedNodeBound,
    componentBound, taylorValue, taylorTail]

/-- Real part above zero invalidates the nonamplifying exponential-ray bound. -/
theorem positive_real_part_control :
    1 < ‖Complex.exp (1 : ℂ) - Complex.exp (0 : ℂ)‖ := by
  have he := Real.quadratic_le_exp_of_nonneg (show (0 : ℝ) ≤ 1 by norm_num)
  have hp : 0 ≤ Real.exp 1 - 1 := by linarith
  have hid : Complex.exp (1 : ℂ) - Complex.exp (0 : ℂ) =
      ((Real.exp 1 - 1 : ℝ) : ℂ) := by simp
  rw [hid]
  simpa only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hp] using
    (show 1 < Real.exp 1 - 1 by linarith)

end
end GRWTSK.Analysis.Complex.IntervalMellinRangeReduction
