import FormalResearch.RiemannHypothesis.Conversation.PrimePhaseGeometry

/-!
# Strip geometry of the actual joint two-prime port

Written direction 2026-10-09: grwtsk contributors. Local joint port identities:
OpenAI Codex. The radial coordinate remains the prescribed prime power.
The phase lower estimate is supplied explicitly; no individual zero port,
mixture inversion, or location on the critical line is inferred.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimePortGeometry
open PrimePhaseGeometry
noncomputable section

def radial (p : Fin 2) (β : ℝ) : ℝ := Real.exp (-(β - 1 / 2) * primeLog p)

def radialFloor : ℝ := Real.exp (-Real.log 3 / 2)

def port (ρ : ℂ) : EuclideanSpace ℂ (Fin 2) :=
  WithLp.toLp 2 (fun p => (radial p ρ.re : ℂ) *
    Complex.exp (Complex.I * (-ρ.im * primeLog p : ℝ)))

theorem radial_eq_prime_power (p : Fin 2) (β : ℝ) :
    radial p β = (if p = 0 then (2 : ℝ) else 3) ^ (-(β - 1 / 2)) := by
  fin_cases p
  · change Real.exp (-(β - 1 / 2) * Real.log 2) = (2 : ℝ) ^ (-(β - 1 / 2))
    rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2)]
    congr 1
    ring
  · change Real.exp (-(β - 1 / 2) * Real.log 3) = (3 : ℝ) ^ (-(β - 1 / 2))
    rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 3)]
    congr 1
    ring

theorem radialFloor_positive : 0 < radialFloor := Real.exp_pos _

theorem radialFloor_sq : radialFloor ^ 2 = (1 / 3 : ℝ) := by
  unfold radialFloor
  rw [← Real.exp_nat_mul]
  norm_num only [Nat.cast_ofNat]
  have he : 2 * (-Real.log 3 / 2) = -Real.log 3 := by ring
  rw [he, Real.exp_neg, Real.exp_log (by norm_num : (0 : ℝ) < 3)]
  norm_num

theorem radialFloor_eq_inverse_root : radialFloor = (Real.sqrt 3)⁻¹ := by
  have hs := Real.sqrt_sq radialFloor_positive.le
  rw [radialFloor_sq, Real.sqrt_div (by norm_num), Real.sqrt_one] at hs
  simpa [one_div] using hs.symm

theorem radial_lower (p : Fin 2) {β : ℝ} (hβ : β ≤ 1) : radialFloor ≤ radial p β := by
  unfold radialFloor radial
  apply Real.exp_le_exp.mpr
  have hlog : 0 ≤ primeLog p := by
    fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hupper : primeLog p ≤ Real.log 3 := by
    fin_cases p
    · exact Real.log_le_log (by norm_num) (by norm_num)
    · exact le_rfl
  nlinarith

theorem unit_radial_square_identity (r s : ℝ) (u v : ℂ)
    (hu : ‖u‖ = 1) (hv : ‖v‖ = 1) :
    ‖(r : ℂ) * u - (s : ℂ) * v‖ ^ 2 =
      (r - s) ^ 2 + r * s * ‖u - v‖ ^ 2 := by
  have hu' : Complex.normSq u = 1 := by rw [Complex.normSq_eq_norm_sq, hu]; norm_num
  have hv' : Complex.normSq v = 1 := by rw [Complex.normSq_eq_norm_sq, hv]; norm_num
  simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply, Complex.sub_re,
    Complex.sub_im, Complex.mul_re, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero, add_zero] at hu' hv' ⊢
  linear_combination (r ^ 2 - r * s) * hu' + (s ^ 2 - r * s) * hv'

theorem radial_ordered_secant (p : Fin 2) {β η : ℝ} (hη : η ≤ 1) (hβη : β ≤ η) :
    radialFloor * primeLog p * (η - β) ≤ radial p β - radial p η := by
  have hlog : 0 ≤ primeLog p := by
    fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hdiff : 0 ≤ (η - β) * primeLog p := mul_nonneg (sub_nonneg.2 hβη) hlog
  have he : radial p β = radial p η * Real.exp ((η - β) * primeLog p) := by
    unfold radial
    rw [← Real.exp_add]
    congr 1
    ring
  have ha := Real.add_one_le_exp ((η - β) * primeLog p)
  have hb := mul_le_mul_of_nonneg_left ha (Real.exp_pos (-(η - 1 / 2) * primeLog p)).le
  have hc := mul_le_mul_of_nonneg_right (radial_lower p hη) hdiff
  rw [he]
  change radial p η * ((η - β) * primeLog p + 1) ≤
    radial p η * Real.exp ((η - β) * primeLog p) at hb
  nlinarith

theorem radial_secant (p : Fin 2) {β η : ℝ} (hβ : β ≤ 1) (hη : η ≤ 1) :
    radialFloor * primeLog p * |β - η| ≤ |radial p β - radial p η| := by
  rcases le_total β η with h | h
  · have hd := radial_ordered_secant p hη h
    rw [abs_of_nonpos (sub_nonpos.2 h)]
    have hn := le_abs_self (radial p β - radial p η)
    nlinarith
  · have hd := radial_ordered_secant p hβ h
    rw [abs_of_nonneg (sub_nonneg.2 h)]
    have hn := neg_le_abs (radial p β - radial p η)
    nlinarith

theorem port_coordinate_lower (p : Fin 2) {ρ η : ℂ}
    (hρ : ρ.re ≤ 1) (hη : η.re ≤ 1) :
    (radialFloor * primeLog p * |ρ.re - η.re|) ^ 2 + radialFloor ^ 2 *
      ‖phase ρ.im p - phase η.im p‖ ^ 2 ≤ ‖port ρ p - port η p‖ ^ 2 := by
  have hu : ‖phase ρ.im p‖ = 1 := Complex.norm_exp_I_mul_ofReal _
  have hv : ‖phase η.im p‖ = 1 := Complex.norm_exp_I_mul_ofReal _
  have he := unit_radial_square_identity (radial p ρ.re) (radial p η.re)
    (phase ρ.im p) (phase η.im p) hu hv
  have hr := radial_secant p hρ hη
  have hlog : 0 ≤ primeLog p := by
    fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hs := pow_le_pow_left₀
    (mul_nonneg (mul_nonneg radialFloor_positive.le hlog) (abs_nonneg _)) hr 2
  rw [sq_abs] at hs
  have hp := mul_le_mul (radial_lower p hρ) (radial_lower p hη)
    radialFloor_positive.le (Real.exp_pos _).le
  have hx := mul_le_mul_of_nonneg_right hp (sq_nonneg ‖phase ρ.im p - phase η.im p‖)
  change _ ≤ ‖(radial p ρ.re : ℂ) * phase ρ.im p -
    (radial p η.re : ℂ) * phase η.im p‖ ^ 2
  rw [he]
  nlinarith

theorem port_norm_sq_lower {ρ η : ℂ} (hρ : ρ.re ≤ 1) (hη : η.re ≤ 1) :
    (1 / 3 : ℝ) * logLength ^ 2 * |ρ.re - η.re| ^ 2 +
      (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 ≤ ‖port ρ - port η‖ ^ 2 := by
  have hs := Finset.sum_le_sum
    (fun p (_hp : p ∈ (Finset.univ : Finset (Fin 2))) => port_coordinate_lower p hρ hη)
  have hL : logLength ^ 2 = (Real.log 2) ^ 2 + (Real.log 3) ^ 2 :=
    Real.sq_sqrt (add_nonneg (sq_nonneg _) (sq_nonneg _))
  have hright : (∑ p : Fin 2, ‖port ρ p - port η p‖ ^ 2) = ‖port ρ - port η‖ ^ 2 :=
    (EuclideanSpace.norm_sq_eq (port ρ - port η)).symm
  rw [hright] at hs
  have hleft : (∑ p : Fin 2, ((radialFloor * primeLog p * |ρ.re - η.re|) ^ 2 +
      radialFloor ^ 2 * ‖phase ρ.im p - phase η.im p‖ ^ 2)) =
      (1 / 3 : ℝ) * logLength ^ 2 * |ρ.re - η.re| ^ 2 +
        (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 := by
    rw [Finset.sum_add_distrib]
    simp only [mul_pow, radialFloor_sq]
    rw [← Finset.mul_sum]
    have hphase : (∑ p : Fin 2, ‖phase ρ.im p - phase η.im p‖ ^ 2) =
        phaseDistance ρ.im η.im ^ 2 := (EuclideanSpace.norm_sq_eq (phase ρ.im - phase η.im)).symm
    rw [hphase]
    change (∑ p : Fin 2, (1 / 3 : ℝ) * primeLog p ^ 2 * |ρ.re - η.re| ^ 2) +
      (1 / 3 : ℝ) * phaseDistance ρ.im η.im ^ 2 = _
    rw [hL, Fin.sum_univ_two]
    rw [show primeLog 0 = Real.log 2 from rfl, show primeLog 1 = Real.log 3 from rfl]
    ring
  rwa [hleft] at hs

/-- A supplied lower phase gain controls the joint horizontal/vertical port. -/
theorem joint_coordinate_lower {ρ η : ℂ} {κ : ℝ}
    (hρ : ρ.re ∈ Set.Icc 0 1) (hη : η.re ∈ Set.Icc 0 1)
    (hκ : 0 ≤ κ) (hκL : κ ≤ logLength)
    (hphase : κ * |ρ.im - η.im| ≤ phaseDistance ρ.im η.im) :
    κ / Real.sqrt 3 * ‖ρ - η‖ ≤ ‖port ρ - port η‖ := by
  have hs := port_norm_sq_lower hρ.2 hη.2
  have hp := pow_le_pow_left₀ (mul_nonneg hκ (abs_nonneg _)) hphase 2
  have hL := pow_le_pow_left₀ hκ hκL 2
  have hLscaled := mul_le_mul_of_nonneg_right hL (sq_nonneg |ρ.re - η.re|)
  have hn : ‖ρ - η‖ ^ 2 = (ρ.re - η.re) ^ 2 + (ρ.im - η.im) ^ 2 := by
    rw [← Complex.normSq_eq_norm_sq, Complex.normSq_apply, Complex.sub_re, Complex.sub_im]
    ring
  have hf : (Real.sqrt 3) ^ 2 = (3 : ℝ) := Real.sq_sqrt (by norm_num)
  apply (sq_le_sq₀ (mul_nonneg (div_nonneg hκ (Real.sqrt_nonneg _)) (norm_nonneg _))
    (norm_nonneg _)).mp
  rw [mul_pow, div_pow, hn]
  rw [hf]
  rw [mul_pow, sq_abs] at hp
  rw [sq_abs] at hLscaled hs
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePortGeometry
