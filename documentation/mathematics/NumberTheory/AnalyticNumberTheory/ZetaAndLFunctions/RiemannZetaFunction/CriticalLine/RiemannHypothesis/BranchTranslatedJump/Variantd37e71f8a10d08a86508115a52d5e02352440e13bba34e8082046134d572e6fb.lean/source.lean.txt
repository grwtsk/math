import FormalResearch.RiemannHypothesis.Conversation.BranchProfileSeams
import FormalResearch.RiemannHypothesis.Conversation.BranchUnmatchedKnot
import FormalResearch.RiemannHypothesis.Conversation.BranchCorrelationHigher
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# The complete arithmetic source has a genuine unmatched interior second jump

Batch 26, `exact-profile-descent.md`, section 3, revision
`0dc367dd6a95a34dc8252edd8f7a4ee07c578b3c`. The complete closed floor
inventory and both shifted profiles are retained. The unmatched term has
different one-sided second derivatives; every other positive-weight term
is differentiable at the same knot. Zero-weight indices remain in the sum.
The pointwise formula is an almost-everywhere representative of the existing
L² Mangoldt operator. Every scalar compensation by the original profile
still fails C² on the open source interior. The distributional stationarity
contradiction and admissible profile-descent witness remain separate.

Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchTranslatedJump

open Set Filter MeasureTheory
open scoped Topology
open SourcePairing BranchProfileSeams BranchSecondDerivativeEnergy BranchUnmatchedKnot
open SourceMangoldtInteraction SourceScaleL2Continuity SourceReflectionDuality
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity PrimePowerDescent

local notation "q" => normalizedTest explicitSecondDerivative

/-- Pointwise form of the complete symmetric Mangoldt translation operator. -/
def arithmeticTranslation (A : ℝ) (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  ∑ m ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
    (f (x + Real.log m) + f (x - Real.log m))

/-- The exact remainder after isolating only the exiting positive-shift term. -/
def translationRemainder (A : ℝ) (n : ℕ) (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  (∑ m ∈ (primePowerInventory (2 * A)).erase n,
    ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
      (f (x + Real.log m) + f (x - Real.log m))) +
    ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) * f (x - Real.log n)

/-- A retained index can be isolated without altering any other coefficient. -/
theorem arithmeticTranslation_split {A : ℝ} {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) (f : ℝ → ℝ) (x : ℝ) :
    arithmeticTranslation A f x =
      ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) * f (x + Real.log n) +
        translationRemainder A n f x := by
  unfold arithmeticTranslation translationRemainder
  rw [← Finset.sum_erase_add _ _ hn]
  ring

/-- Differentiation of the finite literal operator keeps both translations. -/
theorem arithmeticTranslation_hasDerivAt (A x : ℝ) (f f' : ℝ → ℝ)
    (hf : ∀ t, HasDerivAt f (f' t) t) :
    HasDerivAt (arithmeticTranslation A f) (arithmeticTranslation A f' x) x := by
  apply HasDerivAt.fun_sum
  intro m _hm
  have hp := (hf (x + Real.log m)).comp x ((hasDerivAt_id x).add_const (Real.log m))
  have hn := (hf (x - Real.log m)).comp x ((hasDerivAt_id x).sub_const (Real.log m))
  simpa only [mul_one, Function.comp_def, id_eq, Pi.add_apply] using
    (hp.add hn).const_mul (ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m))

/-- The actual source has this ordinary derivative at every point, including shifted seams. -/
theorem actual_translation_deriv {A : ℝ} (hA : 0 < A) :
    deriv (arithmeticTranslation A (q A)) = arithmeticTranslation A (deriv (q A)) := by
  funext x
  exact (arithmeticTranslation_hasDerivAt A x (q A) (deriv (q A))
    (fun t ↦ ((normalizedTest_contDiff A hA).differentiable_one t).hasDerivAt)).deriv

/-- No other positive shift encounters a seam at the chosen source knot. -/
theorem other_positive_shift_off_endpoints {A : ℝ} {n m : ℕ}
    (hn : 2 ≤ n) (hm : 2 ≤ m) (hx : -A < A - Real.log n) (hmn : m ≠ n) :
    A - Real.log n + Real.log m ≠ -A ∧ A - Real.log n + Real.log m ≠ A := by
  have hm1 : (1 : ℝ) < m := by exact_mod_cast (by omega : 1 < m)
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  constructor
  · linarith [Real.log_pos hm1]
  · intro heq
    have he : Real.log (m : ℝ) = Real.log n := by linarith
    have hmn' := Real.log_injOn_pos hm0 hn0 he
    exact hmn (Nat.cast_injective hmn')

/-- Every opposite positive-weight shift avoids both seams at an unmatched interior knot. -/
theorem opposite_shift_off_endpoints {A : ℝ} {n m : ℕ}
    (hm : 2 ≤ m) (hw : 0 < ArithmeticFunction.vonMangoldt m)
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    A - Real.log n - Real.log m ≠ -A ∧ A - Real.log n - Real.log m ≠ A := by
  have hm1 : (1 : ℝ) < m := by exact_mod_cast (by omega : 1 < m)
  have hm0 : (0 : ℝ) < m := by exact_mod_cast (by omega : 0 < m)
  constructor
  · intro heq
    have hlog : Real.log m < 2 * A := by linarith [hx.2]
    have hmX : (m : ℝ) < Real.exp (2 * A) := by
      simpa only [Real.exp_log hm0] using Real.exp_lt_exp.mpr hlog
    apply hu m
      (mem_interiorInventory.mpr ⟨hm, hmX, ArithmeticFunction.vonMangoldt_pos_iff.mp hw⟩)
    linarith
  · linarith [Real.log_pos hm1, hx.2]

/-- All unisolated terms have an ordinary derivative at the unmatched knot; zero weights
are checked directly without discarding their closed-inventory indices. -/
theorem remainder_first_differentiableAt {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    DifferentiableAt ℝ (translationRemainder A n (deriv (q A))) (A - Real.log n) := by
  have hneg (m : ℕ) (hm : 2 ≤ m) (hw : 0 < ArithmeticFunction.vonMangoldt m) := by
    obtain ⟨hl, hr⟩ := opposite_shift_off_endpoints hm hw hx hu
    exact (BranchCorrelationHigher.actual_first_derivative_hasDerivAt_off_endpoints
      hA hl hr).differentiableAt.comp
      (A - Real.log n) (differentiableAt_id.sub_const (Real.log m))
  unfold translationRemainder
  apply DifferentiableAt.add
  · apply DifferentiableAt.fun_sum
    intro m hm
    obtain ⟨hmn, hmem⟩ := Finset.mem_erase.mp hm
    have hm2 := (Finset.mem_Icc.mp hmem).1
    by_cases hw : ArithmeticFunction.vonMangoldt m = 0
    · simp only [hw, zero_div, zero_mul]
      exact differentiableAt_const 0
    · have hwpos := lt_of_le_of_ne
        (show 0 ≤ ArithmeticFunction.vonMangoldt m from ArithmeticFunction.vonMangoldt_nonneg)
        (Ne.symm hw)
      obtain ⟨hl, hr⟩ := other_positive_shift_off_endpoints
        (mem_interiorInventory.mp hn).1 hm2 hx.1 hmn
      have hp := (BranchCorrelationHigher.actual_first_derivative_hasDerivAt_off_endpoints
        hA hl hr).differentiableAt.comp
        (A - Real.log n) (differentiableAt_id.add_const (Real.log m))
      simpa only [Function.comp_def, id_eq, Pi.add_apply] using
        (differentiableAt_const (ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m))).fun_mul
          (hp.fun_add (hneg m hm2 hwpos))
  · simpa only [Function.comp_def, id_eq] using
      (differentiableAt_const (ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n))).fun_mul
        (hneg n (mem_interiorInventory.mp hn).1
          (ArithmeticFunction.vonMangoldt_pos_iff.mpr (mem_interiorInventory.mp hn).2.2))

/-- The exiting term retains its true interior derivative in the translated closed interval. -/
theorem shifted_first_hasDerivWithinAt_inside {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivWithinAt (fun x ↦ deriv (q A) (x + t))
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)))
      (Icc (-A - t) (A - t)) (A - t) := by
  have h := (actual_first_derivative_hasDerivWithinAt_inside hA).comp_of_eq (A - t)
    (((hasDerivAt_id (A - t)).add_const t).hasDerivWithinAt)
    (show MapsTo (fun x : ℝ ↦ x + t) (Icc (-A - t) (A - t)) (Icc (-A) A) by
      intro x hx; constructor <;> linarith [hx.1, hx.2]) (by simp only [id_eq]; ring)
  simpa only [Function.comp_def, mul_one, id_eq] using h

/-- The same exiting term has the true zero exterior derivative. -/
theorem shifted_first_hasDerivWithinAt_outside {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivWithinAt (fun x ↦ deriv (q A) (x + t)) 0 (Ici (A - t)) (A - t) := by
  have h := (actual_first_derivative_hasDerivWithinAt_outside hA).comp_of_eq (A - t)
    (((hasDerivAt_id (A - t)).add_const t).hasDerivWithinAt)
    (show MapsTo (fun x : ℝ ↦ x + t) (Ici (A - t)) (Ici A) by
      intro x hx; change A - t ≤ x at hx; change A ≤ x + t; linarith) (by simp only [id_eq]; ring)
  simpa only [Function.comp_def, mul_one, id_eq] using h

/-- The complete source has two actual one-sided second derivatives with the precise
positive difference contributed by the single unmatched prime power. -/
theorem actual_translation_second_jets {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    ∃ b : ℝ,
      HasDerivWithinAt (deriv (arithmeticTranslation A (q A)))
        (b + ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
          (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A))))
        (Icc (-A - Real.log n) (A - Real.log n)) (A - Real.log n) ∧
      HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) b
        (Ici (A - Real.log n)) (A - Real.log n) := by
  have hd := (remainder_first_differentiableAt hA hn hx hu).hasDerivAt
  have he : deriv (arithmeticTranslation A (q A)) = fun x ↦
      ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) * deriv (q A) (x + Real.log n) +
        translationRemainder A n (deriv (q A)) x := by
    rw [actual_translation_deriv hA]
    funext x
    exact arithmeticTranslation_split (interiorInventory_mem_closed_cutoff hn) _ x
  refine ⟨deriv (translationRemainder A n (deriv (q A))) (A - Real.log n), ?_, ?_⟩
  · rw [he]
    simpa only [add_comm] using
      ((shifted_first_hasDerivWithinAt_inside hA (Real.log n)).const_mul
        (ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n))).fun_add hd.hasDerivWithinAt
  · rw [he]
    simpa only [mul_zero, zero_add] using
      ((shifted_first_hasDerivWithinAt_outside hA (Real.log n)).const_mul
        (ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n))).fun_add hd.hasDerivWithinAt

/-- The source's arithmetic half-weight is strictly positive at every retained prime power. -/
theorem half_weight_pos {X : ℝ} {n : ℕ} (hn : n ∈ interiorInventory X) :
    0 < ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) := by
  obtain ⟨hn2, _hnX, hnp⟩ := mem_interiorInventory.mp hn
  have hw := ArithmeticFunction.vonMangoldt_pos_iff.mpr hnp
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  exact div_pos hw (mul_pos (by norm_num) (Real.sqrt_pos.mpr hn0))

/-- Every pair of genuine one-sided second jets has the written signed arithmetic jump. -/
theorem actual_translation_signed_jump {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) {left right : ℝ}
    (hl : HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) left
      (Icc (-A - Real.log n) (A - Real.log n)) (A - Real.log n))
    (hr : HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) right
      (Ici (A - Real.log n)) (A - Real.log n)) :
    right - left = -(ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)))) := by
  obtain ⟨b, hleft, hright⟩ := actual_translation_second_jets hA hn hx hu
  have hui := (uniqueDiffOn_Icc (by linarith : -A - Real.log n < A - Real.log n))
    (A - Real.log n) (by constructor <;> linarith)
  have heleft := (hl.derivWithin hui).symm.trans (hleft.derivWithin hui)
  have heright := (hr.derivWithin (uniqueDiffWithinAt_Ici _)).symm.trans
    (hright.derivWithin (uniqueDiffWithinAt_Ici _))
  rw [heleft, heright]
  ring

/-- The complete original translation sum genuinely fails twice differentiability at its knot. -/
theorem actual_translation_first_not_differentiableAt {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) :
    ¬ DifferentiableAt ℝ (deriv (arithmeticTranslation A (q A))) (A - Real.log n) := by
  intro hd
  have hj := actual_translation_signed_jump hA hn hx hu
    hd.hasDerivAt.hasDerivWithinAt hd.hasDerivAt.hasDerivWithinAt
  have hn0 : (0 : ℝ) < n := by
    exact_mod_cast (by have := (mem_interiorInventory.mp hn).1; omega : 0 < n)
  have hw := ArithmeticFunction.vonMangoldt_pos_iff.mpr (mem_interiorInventory.mp hn).2.2
  have hwpos : 0 < ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) :=
    div_pos hw (mul_pos (by norm_num) (Real.sqrt_pos.mpr hn0))
  have hp := mul_pos hwpos (second_trace_pos hA)
  have hzero : ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
      (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A))) = 0 := by
    exact neg_eq_zero.mp (by simpa only [sub_self] using hj.symm)
  exact hp.ne' hzero

/-- Scalar subtraction of the smooth interior source cannot cancel this actual jump. -/
theorem compensated_first_not_differentiableAt {A : ℝ} {n : ℕ} (hA : 0 < A)
    (hn : n ∈ interiorInventory (Real.exp (2 * A)))
    (hx : -A < A - Real.log n ∧ A - Real.log n < A)
    (hu : ∀ k ∈ interiorInventory (Real.exp (2 * A)),
      A - Real.log n ≠ -A + Real.log k) (r : ℝ) :
    ¬ DifferentiableAt ℝ
      (deriv (fun x ↦ arithmeticTranslation A (q A) x - r * q A x)) (A - Real.log n) := by
  have he : deriv (fun x ↦ arithmeticTranslation A (q A) x - r * q A x) =
      fun x ↦ deriv (arithmeticTranslation A (q A)) x - r * deriv (q A) x := by
    funext x
    exact ((arithmeticTranslation_hasDerivAt A x (q A) (deriv (q A))
      (fun t ↦ ((normalizedTest_contDiff A hA).differentiable_one t).hasDerivAt)).sub
      (((normalizedTest_contDiff A hA).differentiable_one x).hasDerivAt.const_mul r)).deriv
      |>.trans (by rw [actual_translation_deriv hA])
  intro hd
  rw [he] at hd
  have hs := (BranchCorrelationHigher.actual_first_derivative_hasDerivAt_off_endpoints
    (x := A - Real.log n) hA
    (by linarith [hx.1]) (by linarith [hx.2])).differentiableAt
  have h := hd.fun_add ((differentiableAt_const r).fun_mul hs)
  have hh : DifferentiableAt ℝ (deriv (arithmeticTranslation A (q A))) (A - Real.log n) := by
    simpa only [sub_add_cancel] using h
  exact actual_translation_first_not_differentiableAt hA hn hx hu hh

/-- After the first prime, even scalar compensation cannot make the source C² in its interior. -/
theorem actual_translation_not_contDiffOn_two {A : ℝ} (hA : Real.log 2 / 2 < A) (r : ℝ) :
    ¬ ContDiffOn ℝ 2 (fun x ↦ arithmeticTranslation A (q A) x - r * q A x) (Ioo (-A) A) := by
  have hA0 : 0 < A := by linarith [Real.log_pos (by norm_num : (1 : ℝ) < 2)]
  obtain ⟨n, hn, hx0, hx1, _hne, hu⟩ := exists_unmatched_knot hA
  intro hc
  have hd : ContDiffAt ℝ 1
      (deriv (fun x ↦ arithmeticTranslation A (q A) x - r * q A x)) (A - Real.log n) :=
    (hc.contDiffAt (isOpen_Ioo.mem_nhds ⟨hx0, hx1⟩)).derivWithin (by norm_num)
  exact compensated_first_not_differentiableAt hA0 hn ⟨hx0, hx1⟩ hu r hd.differentiableAt_one

/-- The operator half-weight agrees exactly with its existing exponential coefficient. -/
theorem half_weight_eq_mangoldtCoefficient {n : ℕ} (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) = mangoldtCoefficient n / 2 := by
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  rw [mangoldtCoefficient, show -Real.log n / 2 = -(Real.log n / 2) by ring,
    Real.exp_neg, Real.exp_half, Real.exp_log hn0]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The literal finite formula is an actual representative of the existing L² source operator. -/
theorem arithmeticTranslation_eq_mangoldtInteraction_ae {A : ℝ} (hA : 0 < A) :
    mangoldtInteraction A (originalSourceState A) =ᵐ[volume]
      fun x ↦ (arithmeticTranslation A (q A) x : ℂ) := by
  have ht (t : ℝ) : translation t (originalSourceState A) =ᵐ[volume]
      fun x ↦ (q A (x - t) : ℂ) := by
    filter_upwards [translation_coe_ae t (originalSourceState A),
      (measurePreserving_sub_right volume t).quasiMeasurePreserving.ae
        (originalSourceState_coe_ae hA)] with x hx hy
    exact hx.trans hy
  have havg (m : ℕ) : symmetricTranslation (Real.log m) (originalSourceState A) =ᵐ[volume]
      fun x ↦ (1 / 2 : ℂ) * ((q A (x - Real.log m) : ℂ) + q A (x + Real.log m)) := by
    rw [symmetricTranslation_apply]
    filter_upwards [Lp.coeFn_smul (1 / 2 : ℂ)
      (translation (Real.log m) (originalSourceState A) +
        translation (-Real.log m) (originalSourceState A)),
      Lp.coeFn_add (translation (Real.log m) (originalSourceState A))
        (translation (-Real.log m) (originalSourceState A)), ht (Real.log m),
      ht (-Real.log m)] with x hs ha hp hn
    simp only [Pi.smul_apply, smul_eq_mul, Pi.add_apply] at hs ha
    rw [hs, ha, hp, hn]
    simp only [sub_neg_eq_add]
  have hterm (m : ℕ) (hm : 2 ≤ m) :
      (mangoldtCoefficient m : ℂ) •
        symmetricTranslation (Real.log m) (originalSourceState A) =ᵐ[volume]
      fun x ↦ ((ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
        (q A (x + Real.log m) + q A (x - Real.log m)) : ℝ) : ℂ) := by
    filter_upwards [Lp.coeFn_smul (mangoldtCoefficient m : ℂ)
      (symmetricTranslation (Real.log m) (originalSourceState A)), havg m] with x hs ha
    simp only [Pi.smul_apply, smul_eq_mul] at hs
    rw [hs, ha, half_weight_eq_mangoldtCoefficient (by omega : 0 < m)]
    push_cast
    ring
  have hsum (s : Finset ℕ) (hs : ∀ m ∈ s, 2 ≤ m) :
      (∑ m ∈ s, (mangoldtCoefficient m : ℂ) •
        symmetricTranslation (Real.log m) (originalSourceState A) : ComplexL2) =ᵐ[volume]
      fun x ↦ ((∑ m ∈ s, ArithmeticFunction.vonMangoldt m / (2 * Real.sqrt m) *
        (q A (x + Real.log m) + q A (x - Real.log m)) : ℝ) : ℂ) := by
    classical
    induction s using Finset.induction_on with
    | empty =>
      simp only [Finset.sum_empty, Complex.ofReal_zero]
      filter_upwards [Lp.coeFn_zero ℂ 2 (volume : Measure ℝ)] with x hx
      exact hx
    | @insert m s hms ih =>
      have hmem : ∀ k ∈ s, 2 ≤ k := fun k hk ↦ hs k (Finset.mem_insert_of_mem hk)
      simp only [Finset.sum_insert hms]
      filter_upwards [Lp.coeFn_add
        ((mangoldtCoefficient m : ℂ) • symmetricTranslation (Real.log m) (originalSourceState A))
        (∑ k ∈ s, (mangoldtCoefficient k : ℂ) •
          symmetricTranslation (Real.log k) (originalSourceState A)),
        hterm m (hs m (Finset.mem_insert_self _ _)), ih hmem] with x ha hm hr
      simp only [Pi.add_apply] at ha
      rw [ha, hm, hr]
      push_cast
      rfl
  rw [mangoldtInteraction_apply]
  exact hsum (primePowerInventory (2 * A)) (fun _ hm ↦ (Finset.mem_Icc.mp hm).1)

/-- The complete arithmetic source is globally C¹ despite the unmatched second jump. -/
theorem actual_translation_contDiff_one {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (arithmeticTranslation A (q A)) := by
  unfold arithmeticTranslation
  apply ContDiff.sum
  intro m _hm
  exact contDiff_const.mul
    (((normalizedTest_contDiff A hA).comp (contDiff_id.add contDiff_const)).add
      ((normalizedTest_contDiff A hA).comp (contDiff_id.sub contDiff_const)))

/-- Every scale past the first prime has an actual noncentral interior knot with the
complete source's precise strictly negative second-derivative jump. -/
theorem exists_actual_negative_second_jump {A : ℝ} (hA : Real.log 2 / 2 < A) :
    ∃ n ∈ interiorInventory (Real.exp (2 * A)),
      -A < A - Real.log n ∧ A - Real.log n < A ∧ A - Real.log n ≠ 0 ∧
      ∃ left right : ℝ,
        HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) left
          (Icc (-A - Real.log n) (A - Real.log n)) (A - Real.log n) ∧
        HasDerivWithinAt (deriv (arithmeticTranslation A (q A))) right
          (Ici (A - Real.log n)) (A - Real.log n) ∧
        right - left = -(ArithmeticFunction.vonMangoldt n / (2 * Real.sqrt n) *
          (384 / (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)))) ∧ right < left := by
  have hA0 : 0 < A := by linarith [Real.log_pos (by norm_num : (1 : ℝ) < 2)]
  obtain ⟨n, hn, hx0, hx1, hne, hu⟩ := exists_unmatched_knot hA
  obtain ⟨b, hl, hr⟩ := actual_translation_second_jets hA0 hn ⟨hx0, hx1⟩ hu
  refine ⟨n, hn, hx0, hx1, hne, _, b, hl, hr, ?_, ?_⟩
  · ring
  · exact lt_add_of_pos_right b (mul_pos (half_weight_pos hn) (second_trace_pos hA0))

end FormalResearch.RiemannHypothesis.BranchTranslatedJump
