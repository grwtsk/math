import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual
import FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Genuine L2 admission and complete endpoint tails of the actual signed logarithmic residual. -/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusFractionalResidual MobiusPoleNumerator
open LogarithmicResidual
noncomputable section

/-- The reciprocal sum of the complete damped coefficients is the original corrected pole value. -/
theorem dampedCoefficient_reciprocal_sum (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) / (d : ℂ)) =
      correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  have he := dampedCoefficient_cpow_sum X ε (1 : ℂ) hX
  have hs : (1 : ℂ) - 1 / 2 + (ε : ℂ) = 1 / 2 + (ε : ℂ) := by ring
  rw [hs] at he
  simpa only [Complex.cpow_neg_one, div_eq_mul_inv] using he

/-- The complete actual arithmetic residual is linear below its first integer endpoint. -/
theorem arithmeticResidual_eq_below_one (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (x : ℝ) (hx : 0 ≤ x) (hx1 : x < 1) :
    arithmeticResidual X ε x = (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  unfold arithmeticResidual
  rw [if_neg (not_le.mpr hx1), zero_add, ← dampedCoefficient_reciprocal_sum X ε hX,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  have hd0 : (0 : ℝ) < d := lt_of_lt_of_le zero_lt_one hd1
  rw [Int.fract_eq_self.mpr ⟨div_nonneg hx hd0.le, (div_lt_one hd0).mpr (hx1.trans_le hd1)⟩]
  push_cast
  ring

/-- The actual arithmetic residual retains a finite global absolute coefficient budget. -/
theorem arithmeticResidual_norm_le (X : ℕ) (ε x : ℝ) :
    ‖arithmeticResidual X ε x‖ ≤ 1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d| := by
  unfold arithmeticResidual
  calc
    _ ≤ ‖(if 1 ≤ x then (1 : ℂ) else 0)‖ +
        ‖∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
          ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := norm_add_le _ _
    _ ≤ 1 + ∑ d ∈ Finset.Icc 1 X,
        ‖(dampedCoefficient X ε d : ℂ) * ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := by
      apply add_le_add
      · split_ifs <;> norm_num
      · exact norm_sum_le _ _
    _ ≤ _ := by
      gcongr with d hd
      rw [norm_mul]
      simp only [Complex.norm_real, Real.norm_eq_abs]
      rw [abs_of_nonneg (Int.fract_nonneg (x / (d : ℝ)))]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (Int.fract_lt_one (x / (d : ℝ))).le (abs_nonneg (dampedCoefficient X ε d))

/-- The negative logarithmic half-line is exactly the exponentially weighted corrected pole value. -/
theorem logResidual_eq_of_neg (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (u : ℝ) (hu : u < 0) :
    logResidual X ε u = (Real.exp (u / 2) : ℂ) *
      correctedNumerator X (1 / 2 + (ε : ℂ)) := by
  unfold logResidual
  rw [arithmeticResidual_eq_below_one X ε hX (Real.exp u) (Real.exp_nonneg _)
    (Real.exp_lt_one_iff.mpr hu), ← mul_assoc, ← Complex.ofReal_mul, ← Real.exp_add]
  congr 2
  ring

/-- The actual logarithmic residual has the complete positive-tail exponential budget. -/
theorem logResidual_norm_le (X : ℕ) (ε u : ℝ) :
    ‖logResidual X ε u‖ ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) * Real.exp (-u / 2) := by
  unfold logResidual
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
  simpa only [mul_comm] using mul_le_mul_of_nonneg_left
    (arithmeticResidual_norm_le X ε (Real.exp u)) (Real.exp_nonneg _)

private theorem logResidual_sq_of_neg (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (u : ℝ) (hu : u < 0) :
    ‖logResidual X ε u‖ ^ 2 = Real.exp u * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
  rw [logResidual_eq_of_neg X ε hX u hu, norm_mul, Complex.norm_real,
    Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), mul_pow]
  have he : Real.exp (u / 2) ^ 2 = Real.exp u := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he]

private theorem logResidual_sq_le (X : ℕ) (ε u : ℝ) :
    ‖logResidual X ε u‖ ^ 2 ≤ Real.exp (-u) *
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 := by
  have he : Real.exp (-u / 2) ^ 2 = Real.exp (-u) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have h := pow_le_pow_left₀ (norm_nonneg _) (logResidual_norm_le X ε u) 2
  simpa only [mul_pow, he, mul_comm] using h

/-- Both exact endpoint tails give genuine L2 admission on the complete logarithmic line. -/
theorem logResidual_memLp (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) : MemLp (logResidual X ε) 2 := by
  apply (memLp_two_iff_integrable_sq_norm (logResidual_measurable X ε).aestronglyMeasurable).mpr
  have hn : IntegrableOn (fun u : ℝ => ‖logResidual X ε u‖ ^ 2) (Iio 0) := by
    have he : IntegrableOn (fun u : ℝ => Real.exp u *
        ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2) (Iio 0) :=
      ((integrableOn_exp_Iic 0).mono_set Iio_subset_Iic_self).mul_const _
    apply he.congr
    filter_upwards [ae_restrict_mem measurableSet_Iio] with u hu
    exact (logResidual_sq_of_neg X ε hX u hu).symm
  have hp : IntegrableOn (fun u : ℝ => ‖logResidual X ε u‖ ^ 2) (Ici 0) := by
    have he : IntegrableOn (fun u : ℝ => Real.exp (-u) *
        (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2) (Ici 0) := by
      rw [integrableOn_Ici_iff_integrableOn_Ioi]
      exact (integrableOn_exp_neg_Ioi 0).mul_const _
    apply he.mono' ((logResidual_measurable X ε).norm.pow_const 2).aestronglyMeasurable
    filter_upwards [] with u
    change |‖logResidual X ε u‖ ^ 2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    exact logResidual_sq_le X ε u
  simpa only [Iio_union_Ici, integrableOn_univ] using hn.union hp

/-- The complete negative logarithmic tail has exactly the corrected pole coefficient's square norm. -/
theorem logResidual_negative_integral (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∫ u : ℝ in Iio 0, ‖logResidual X ε u‖ ^ 2) =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
  calc
    _ = ∫ u : ℝ in Iio 0, Real.exp u *
        ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Iio] with u hu
      exact logResidual_sq_of_neg X ε hX u hu
    _ = _ := by
      rw [integral_mul_const, ← integral_Iic_eq_integral_Iio, integral_exp_Iic_zero, one_mul]

/-- The entire positive logarithmic tail has its finite coefficient budget at every real cutoff. -/
theorem logResidual_positive_integral_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    (∫ u : ℝ in Ioi (Real.log Y), ‖logResidual X ε u‖ ^ 2) ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 / Y := by
  have hm := logResidual_memLp X ε hX
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  calc
    _ ≤ ∫ u : ℝ in Ioi (Real.log Y), Real.exp (-u) *
        (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 := by
      apply integral_mono_ae hi.integrableOn ((integrableOn_exp_neg_Ioi _).mul_const _)
      filter_upwards [] with u
      exact logResidual_sq_le X ε u
    _ = _ := by
      rw [integral_mul_const, integral_exp_neg_Ioi, Real.exp_neg,
        Real.exp_log (lt_of_lt_of_le zero_lt_one hY)]
      ring

private theorem indicator_toLp_norm_sq (f : ℝ → ℂ) (hf : MemLp f 2 volume)
    (s : Set ℝ) (hs : MeasurableSet s) :
    ‖(hf.indicator hs).toLp (s.indicator f)‖ ^ 2 = ∫ u : ℝ in s, ‖f u‖ ^ 2 := by
  rw [FullLinePlancherel.norm_sq_toLp, ← integral_indicator hs]
  apply integral_congr_ae
  filter_upwards [] with u
  by_cases hu : u ∈ s <;> simp [hu]

/-- The actual negative-tail vector has exactly the corrected pole value's norm. -/
theorem logResidual_negative_norm (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
      ((Iio (0 : ℝ)).indicator (logResidual X ε))‖ =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ := by
  apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).mp
  rw [indicator_toLp_norm_sq _ (logResidual_memLp X ε hX) _ measurableSet_Iio]
  exact logResidual_negative_integral X ε hX

/-- The actual positive-tail vector has the complete finite-coefficient square-root cutoff bound. -/
theorem logResidual_positive_norm_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
      ((Ioi (Real.log Y)).indicator (logResidual X ε))‖ ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  apply (sq_le_sq₀ (norm_nonneg _) (by positivity)).mp
  rw [indicator_toLp_norm_sq _ (logResidual_memLp X ε hX) _ measurableSet_Ioi,
    div_pow, Real.sq_sqrt (by linarith : 0 ≤ Y)]
  exact logResidual_positive_integral_le X ε hX Y hY

end
end FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail


/-! The expanding logarithmic core is cut before application of the exact source multiplier. -/
set_option autoImplicit false
namespace CoreTailSplitScratch
open MeasureTheory Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open LogarithmicResidual LogarithmicResidualTail SourceWeightedMultiplier
open HalfLineExtension MobiusFractionalResidual MobiusPoleNumerator
noncomputable section

/-- The complete signed logarithmic residual admitted in full-line L2. -/
def fullResidualVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) : FullH :=
  (logResidual_memLp X ε hX).toLp (logResidual X ε)

/-- The actual core is restricted in logarithmic time before the source multiplier acts. -/
def coreResidualVector (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) : FullH :=
  ((logResidual_memLp X ε hX).indicator measurableSet_Icc).toLp
    ((Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε))

/-- The full residual vector keeps the complete original signed function almost everywhere. -/
theorem fullResidualVector_ae (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    fullResidualVector X ε hX =ᵐ[volume] logResidual X ε :=
  (logResidual_memLp X ε hX).coeFn_toLp

/-- The core vector keeps both finite endpoints in the original time cutoff. -/
theorem coreResidualVector_ae (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) (Y : ℝ) :
    coreResidualVector X ε hX Y =ᵐ[volume]
      (Icc (0 : ℝ) (Real.log Y)).indicator (logResidual X ε) :=
  ((logResidual_memLp X ε hX).indicator measurableSet_Icc).coeFn_toLp

/-- The admitted full vector is exactly its negative tail, expanding core, and positive tail. -/
theorem fullResidualVector_decomposition (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    fullResidualVector X ε hX =
      ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
        ((Iio (0 : ℝ)).indicator (logResidual X ε)) + coreResidualVector X ε hX Y +
      ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
        ((Ioi (Real.log Y)).indicator (logResidual X ε)) := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  have hn : n =ᵐ[volume] (Iio (0 : ℝ)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Iio).coeFn_toLp
  have hp : p =ᵐ[volume] (Ioi (Real.log Y)).indicator (logResidual X ε) :=
    ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).coeFn_toLp
  have hlog : 0 ≤ Real.log Y := Real.log_nonneg hY
  change fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p
  apply Lp.ext
  filter_upwards [fullResidualVector_ae X ε hX, coreResidualVector_ae X ε hX Y,
    hn, hp, Lp.coeFn_add (n + coreResidualVector X ε hX Y) p,
    Lp.coeFn_add n (coreResidualVector X ε hX Y)] with u hfull hcore hn hp hsum hnc
  simp only [Pi.add_apply] at hsum hnc
  rw [hfull, hsum, hnc, hn, hcore, hp]
  by_cases hu : u < 0
  · have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hu hc.1
    have hp : u ∉ Ioi (Real.log Y) := not_lt.mpr (hu.le.trans hlog)
    simp only [indicator_of_mem hu, indicator_of_notMem hc, indicator_of_notMem hp, add_zero]
  · have hnonneg : 0 ≤ u := le_of_not_gt hu
    by_cases hp : Real.log Y < u
    · have hc : u ∉ Icc (0 : ℝ) (Real.log Y) := fun hc => not_le_of_gt hp hc.2
      simp only [indicator_of_notMem hu, indicator_of_notMem hc, indicator_of_mem hp,
        zero_add]
    · have hc : u ∈ Icc (0 : ℝ) (Real.log Y) := ⟨hnonneg, le_of_not_gt hp⟩
      simp only [indicator_of_notMem hu, indicator_of_mem hc, indicator_of_notMem hp,
        zero_add, add_zero]

/-- Only the two tails are bounded absolutely; the expanding core retains its filtered norm. -/
theorem filtered_full_norm_le_core_tails (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)
    (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (fullResidualVector X ε hX)‖ ≤
      ‖sourceMultiplier ε h hε hsmall hh (coreResidualVector X ε hX Y)‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
          (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y := by
  let n : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Iio).toLp
    ((Iio (0 : ℝ)).indicator (logResidual X ε))
  let p : FullH := ((logResidual_memLp X ε hX).indicator measurableSet_Ioi).toLp
    ((Ioi (Real.log Y)).indicator (logResidual X ε))
  let M : FullH →L[ℂ] FullH := sourceMultiplier ε h hε hsmall hh
  let B : ℝ := (4 / 3 : ℝ) * Real.exp (1 / 4)
  have hn : ‖M n‖ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ := by
    have he := sourceMultiplier_norm_le ε h hε hsmall hh n
    rw [show ‖n‖ = ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ from
      logResidual_negative_norm X ε hX] at he
    exact he
  have hp : ‖M p‖ ≤ B *
      ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
    (sourceMultiplier_norm_le ε h hε hsmall hh p).trans
      (mul_le_mul_of_nonneg_left (logResidual_positive_norm_le X ε hX Y hY) (by positivity))
  have he : fullResidualVector X ε hX = n + coreResidualVector X ε hX Y + p :=
    fullResidualVector_decomposition X ε hX Y hY
  change ‖M (fullResidualVector X ε hX)‖ ≤ _
  rw [he, map_add, map_add]
  calc
    ‖M n + M (coreResidualVector X ε hX Y) + M p‖ ≤
        ‖M n‖ + ‖M (coreResidualVector X ε hX Y)‖ + ‖M p‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ ≤ B * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ +
        ‖M (coreResidualVector X ε hX Y)‖ +
        B * ((1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) / Real.sqrt Y) :=
      add_le_add (add_le_add_right hn _) hp
    _ = _ := by dsimp only [M, B]; ring

end
end CoreTailSplitScratch
