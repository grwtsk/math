import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
Exact hostile fixtures for BGP and the orbit-versus-Haar gate. These are
finite logarithmic-character fixtures and generic Hilbert-space statements.
They do not refute a source-exact joint Möbius packet estimate, P04, or RH.
-/

noncomputable section

namespace EulerP04RH.ResearchObstructions

open Finset Set MeasureTheory
open scoped BigOperators Classical

/-- Absolute Gram rows are unchanged by coefficient signs or unit phase rotations.
Any arithmetic benefit must therefore enter before taking this absolute Gram. -/
theorem unit_phase_preserves_absolute_gram {E : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℂ E]
    (v z : E) (s t : ℂ) (hs : ‖s‖ = 1) (ht : ‖t‖ = 1) :
    ‖inner ℂ (s • v) (t • z)‖ = ‖inner ℂ v z‖ := by
  rw [inner_smul_left, inner_smul_right]
  simp only [norm_mul, Complex.norm_conj, hs, ht, one_mul]

/-- Exact two-packet cancellation is invisible to the absolute Gram matrix. -/
theorem signed_two_packet_fixture :
    ‖(1 : ℂ) + (-1 : ℂ)‖ ^ 2 = (0 : ℝ) ∧
      ‖(1 : ℂ) + (1 : ℂ)‖ ^ 2 = (4 : ℝ) := by
  norm_num

/-- Normalizing identical packets makes the Gram constant one, but leaves synthesis energy N.
The coefficient-square sum is exactly N and must be budgeted by every BGP consumer. -/
theorem normalized_identical_packet_fixture (N : ℕ) (hN : 0 < N) :
    let v : Fin N → ℝ := fun _ => 1 / Real.sqrt (N : ℝ)
    (∀ i : Fin N, (∑ j : Fin N, |inner ℝ (v i) (v j)|) = 1) ∧
      ‖∑ j : Fin N, (1 : ℝ) • v j‖ ^ 2 = (N : ℝ) ∧
      (∑ _j : Fin N, ‖(1 : ℝ)‖ ^ 2) = (N : ℝ) := by
  have hNpos : 0 < (N : ℝ) := by exact_mod_cast hN
  have hrpos : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.mpr hNpos
  have hrne : Real.sqrt (N : ℝ) ≠ 0 := hrpos.ne'
  have hrsq : Real.sqrt (N : ℝ) ^ 2 = (N : ℝ) := Real.sq_sqrt hNpos.le
  have hinv : 0 ≤ 1 / Real.sqrt (N : ℝ) := by positivity
  have hrow : (N : ℝ) * (1 / Real.sqrt (N : ℝ)) ^ 2 = 1 := by
    field_simp [hrne]
    nlinarith [hrsq]
  have hsynth : ((N : ℝ) * (1 / Real.sqrt (N : ℝ))) ^ 2 = (N : ℝ) := by
    calc
      _ = (N : ℝ) * ((N : ℝ) * (1 / Real.sqrt (N : ℝ)) ^ 2) := by ring
      _ = (N : ℝ) := by rw [hrow, mul_one]
  dsimp only
  refine ⟨?_, ?_, ?_⟩
  · intro i
    simpa [RCLike.inner_apply, abs_mul, abs_of_nonneg hinv,
      abs_of_nonneg hrpos.le, pow_two] using hrow
  · simpa [Real.norm_eq_abs, abs_of_nonneg hrpos.le, sq_abs] using hsynth
  · simp

/-- Positive Schur weights cannot repair a uniformly positive dense Gram block. -/
theorem dense_rows_force_cardinality {ι : Type*} (S : Finset ι)
    (hne : S.Nonempty) (K : ι → ι → ℝ) (w : ι → ℝ) {c C : ℝ}
    (hw : ∀ i ∈ S, 0 < w i)
    (hK : ∀ i ∈ S, ∀ j ∈ S, c ≤ K i j)
    (hrow : ∀ i ∈ S, ∑ j ∈ S, K i j * w j ≤ C * w i) :
    c * S.card ≤ C := by
  have hsumpos : 0 < ∑ i ∈ S, w i := sum_pos (fun i hi => hw i hi) hne
  have hlower : c * S.card * (∑ i ∈ S, w i) ≤
      ∑ i ∈ S, ∑ j ∈ S, K i j * w j := by
    calc
      _ = ∑ i ∈ S, ∑ j ∈ S, c * w j := by
        simp only [← mul_sum, sum_const, nsmul_eq_mul]
        ring
      _ ≤ _ := by
        apply sum_le_sum
        intro i hi
        apply sum_le_sum
        intro j hj
        exact mul_le_mul_of_nonneg_right (hK i hi j hj) (hw j hj).le
  have hupper : (∑ i ∈ S, ∑ j ∈ S, K i j * w j) ≤ C * ∑ i ∈ S, w i := by
    simpa only [mul_sum] using sum_le_sum hrow
  exact (mul_le_mul_iff_left₀ hsumpos).mp (hlower.trans hupper)

/-- Exact equality: all repeated unit packets force a Gram constant at least their count. -/
theorem repeated_unit_packets_force_cardinality {ι : Type*} (S : Finset ι)
    (hne : S.Nonempty) (w : ι → ℝ) {C : ℝ}
    (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖inner ℂ (1 : ℂ) (1 : ℂ)‖ * w j ≤ C * w i) :
    (S.card : ℝ) ≤ C := by
  simpa using dense_rows_force_cardinality (c := 1) S hne
    (fun _ _ => ‖inner ℂ (1 : ℂ) (1 : ℂ)‖) w hw
    (by intro i hi j hj; norm_num [RCLike.inner_apply]) hrow

/-- The actual real correlation of two logarithmic phases on the unit frequency interval. -/
def logarithmicOrbitGram (x y : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..1, Real.cos ((Real.log x - Real.log y) * t)

def logarithmicCharacter (x t : ℝ) : ℂ :=
  Complex.exp (((Real.log x * t : ℝ) : ℂ) * Complex.I)

def complexLogarithmicOrbitGram (x y : ℝ) : ℂ :=
  ∫ t in (0 : ℝ)..1, inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t)

/-- Exact phase product, including conjugation: the real kernel is an orbit Gram entry. -/
theorem logarithmic_character_correlation (x y t : ℝ) :
    (inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t)).re =
      Real.cos ((Real.log x - Real.log y) * t) := by
  rw [RCLike.inner_apply']
  unfold logarithmicCharacter
  rw [← Complex.exp_conj, ← Complex.exp_add]
  have he : (starRingEnd ℂ) (((Real.log x * t : ℝ) : ℂ) * Complex.I) +
      (((Real.log y * t : ℝ) : ℂ) * Complex.I) =
        (((Real.log y - Real.log x) * t : ℝ) : ℂ) * Complex.I := by
    simp only [map_mul, Complex.conj_ofReal, Complex.conj_I]
    push_cast
    ring
  rw [he, Complex.exp_ofReal_mul_I_re,
    show (Real.log y - Real.log x) * t = -((Real.log x - Real.log y) * t) by ring,
    Real.cos_neg]

theorem complex_orbit_gram_real (x y : ℝ) :
    (complexLogarithmicOrbitGram x y).re = logarithmicOrbitGram x y := by
  have hint : IntervalIntegrable
      (fun t : ℝ => inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t))
      volume 0 1 := (by unfold logarithmicCharacter; fun_prop : Continuous
        (fun t : ℝ => inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t))).intervalIntegrable 0 1
  unfold complexLogarithmicOrbitGram logarithmicOrbitGram
  rw [intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1),
    intervalIntegral.integral_of_le (by norm_num : (0 : ℝ) ≤ 1)]
  calc
    (∫ t in Ioc (0 : ℝ) 1,
        inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t)).re =
        ∫ t in Ioc (0 : ℝ) 1,
          (inner ℂ (logarithmicCharacter x t) (logarithmicCharacter y t)).re :=
      (integral_re hint.1).symm
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (logarithmic_character_correlation x y)

/-- Close phases have positive correlation on the actual finite orbit. -/
theorem logarithmic_orbit_gram_lower {x y : ℝ}
    (hclose : |Real.log x - Real.log y| ≤ 1) :
    1 / 2 ≤ logarithmicOrbitGram x y := by
  have hint : IntervalIntegrable
      (fun t : ℝ => Real.cos ((Real.log x - Real.log y) * t)) volume 0 1 :=
    (by fun_prop : Continuous
      (fun t : ℝ => Real.cos ((Real.log x - Real.log y) * t))).intervalIntegrable 0 1
  have hpoint : ∀ t ∈ Icc (0 : ℝ) 1,
      (1 / 2 : ℝ) ≤ Real.cos ((Real.log x - Real.log y) * t) := by
    intro t ht
    have habs : |(Real.log x - Real.log y) * t| ≤ 1 := by
      rw [abs_mul, abs_of_nonneg ht.1]
      exact (mul_le_mul_of_nonneg_right hclose ht.1).trans (by simpa using ht.2)
    have hsq : ((Real.log x - Real.log y) * t) ^ 2 ≤ 1 := by
      nlinarith [sq_abs ((Real.log x - Real.log y) * t), abs_nonneg
        ((Real.log x - Real.log y) * t)]
    linarith [Real.one_sub_sq_div_two_le_cos (x := (Real.log x - Real.log y) * t)]
  have h := intervalIntegral.integral_mono_on (by norm_num : (0 : ℝ) ≤ 1)
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => (1 / 2 : ℝ)) volume 0 1)
    hint hpoint
  simpa [logarithmicOrbitGram] using h

/-- Prime phases 2 and 3 are not orthogonal on the actual unit orbit. -/
theorem two_prime_orbit_gram_positive : 0 < logarithmicOrbitGram 2 3 := by
  have hlog : Real.log (3 : ℝ) - Real.log 2 = Real.log ((3 : ℝ) / 2) := by
    rw [Real.log_div (by norm_num) (by norm_num)]
  have hlo : 0 ≤ Real.log ((3 : ℝ) / 2) := Real.log_nonneg (by norm_num)
  have hhi : Real.log ((3 : ℝ) / 2) ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3 / 2)
    linarith
  have hclose : |Real.log (2 : ℝ) - Real.log 3| ≤ 1 := by
    rw [abs_sub_comm, hlog, abs_of_nonneg hlo]
    exact hhi
  linarith [logarithmic_orbit_gram_lower hclose]

/-- Every integer logarithmic phase inside one dyadic band is a close phase. -/
theorem logarithmic_band_close {n x y : ℝ} (hn : 0 < n)
    (hx : n ≤ x) (hxupper : x ≤ 2 * n)
    (hy : n ≤ y) (hyupper : y ≤ 2 * n) :
    |Real.log x - Real.log y| ≤ 1 := by
  have hloX : Real.log n ≤ Real.log x := Real.log_le_log hn hx
  have hloY : Real.log n ≤ Real.log y := Real.log_le_log hn hy
  have hhiX : Real.log x ≤ Real.log (2 * n) := Real.log_le_log (hn.trans_le hx) hxupper
  have hhiY : Real.log y ≤ Real.log (2 * n) := Real.log_le_log (hn.trans_le hy) hyupper
  have hlog2 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [Real.log_mul (by norm_num) hn.ne'] at hhiX hhiY
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- A dyadic band of unnormalized unit-window phase packets costs at least half its count.
This fixture retains the actual logarithmic orbit and permits arbitrary positive weights.
It does not identify these unit packets with the complete signed Möbius source. -/
theorem logarithmic_band_rows_force_cardinality {ι : Type*} (S : Finset ι)
    (hne : S.Nonempty) (freq w : ι → ℝ) {n C : ℝ} (hn : 0 < n)
    (hfreq : ∀ i ∈ S, n ≤ freq i ∧ freq i ≤ 2 * n)
    (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, |logarithmicOrbitGram (freq i) (freq j)| * w j ≤ C * w i) :
    (S.card : ℝ) / 2 ≤ C := by
  have hK : ∀ i ∈ S, ∀ j ∈ S,
      (1 / 2 : ℝ) ≤ |logarithmicOrbitGram (freq i) (freq j)| := by
    intro i hi j hj
    have hg := logarithmic_orbit_gram_lower
      (logarithmic_band_close hn (hfreq i hi).1 (hfreq i hi).2
        (hfreq j hj).1 (hfreq j hj).2)
    exact hg.trans (le_abs_self _)
  have hd := dense_rows_force_cardinality S hne
    (fun i j => |logarithmicOrbitGram (freq i) (freq j)|) w hw hK hrow
  linarith

/-- The same cardinality obstruction applies to the genuine complex orbit Gram norm. -/
theorem complex_logarithmic_band_rows_force_cardinality {ι : Type*} (S : Finset ι)
    (hne : S.Nonempty) (freq w : ι → ℝ) {n C : ℝ} (hn : 0 < n)
    (hfreq : ∀ i ∈ S, n ≤ freq i ∧ freq i ≤ 2 * n)
    (hw : ∀ i ∈ S, 0 < w i)
    (hrow : ∀ i ∈ S,
      ∑ j ∈ S, ‖complexLogarithmicOrbitGram (freq i) (freq j)‖ * w j ≤ C * w i) :
    (S.card : ℝ) / 2 ≤ C := by
  have hK : ∀ i ∈ S, ∀ j ∈ S,
      (1 / 2 : ℝ) ≤ ‖complexLogarithmicOrbitGram (freq i) (freq j)‖ := by
    intro i hi j hj
    have hg := logarithmic_orbit_gram_lower
      (logarithmic_band_close hn (hfreq i hi).1 (hfreq i hi).2
        (hfreq j hj).1 (hfreq j hj).2)
    rw [← complex_orbit_gram_real] at hg
    exact hg.trans (Complex.re_le_norm _)
  have hd := dense_rows_force_cardinality S hne
    (fun i j => ‖complexLogarithmicOrbitGram (freq i) (freq j)‖) w hw hK hrow
  linarith

/-- Consecutive logarithmic frequencies are separated by at most the reciprocal integer. -/
theorem consecutive_log_gap {n : ℕ} (hn : 0 < n) :
    Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) ≤ 1 / (n : ℝ) := by
  have hnpos : 0 < (n : ℝ) := by exact_mod_cast hn
  have heq : Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ) =
      Real.log (((n : ℝ) + 1) / n) := by
    rw [Real.log_div (by positivity) hnpos.ne']
    norm_num
  rw [heq]
  have h := Real.log_le_sub_one_of_pos (x := ((n : ℝ) + 1) / n)
    (div_pos (by positivity) hnpos)
  have hquot : ((n : ℝ) + 1) / n - 1 = 1 / (n : ℝ) := by field_simp; ring
  linarith

/-- Upper Bessel control alone cannot reconstruct energy: the empty family is decisive. -/
theorem upper_bessel_does_not_imply_reconstruction :
    (∀ u : ℂ, (∑ _i ∈ (∅ : Finset ℕ), ‖inner ℂ (0 : ℂ) u‖ ^ 2) ≤ ‖u‖ ^ 2) ∧
    ¬ (∀ u : ℂ, ‖u‖ ^ 2 ≤ ∑ _i ∈ (∅ : Finset ℕ), ‖inner ℂ (0 : ℂ) u‖ ^ 2) := by
  constructor
  · intro u
    simp
  · intro h
    have h1 := h (1 : ℂ)
    norm_num at h1

end EulerP04RH.ResearchObstructions

#print axioms EulerP04RH.ResearchObstructions.dense_rows_force_cardinality
#print axioms EulerP04RH.ResearchObstructions.unit_phase_preserves_absolute_gram
#print axioms EulerP04RH.ResearchObstructions.normalized_identical_packet_fixture
#print axioms EulerP04RH.ResearchObstructions.two_prime_orbit_gram_positive
#print axioms EulerP04RH.ResearchObstructions.complex_orbit_gram_real
#print axioms EulerP04RH.ResearchObstructions.complex_logarithmic_band_rows_force_cardinality
#print axioms EulerP04RH.ResearchObstructions.consecutive_log_gap
#print axioms EulerP04RH.ResearchObstructions.upper_bessel_does_not_imply_reconstruction
