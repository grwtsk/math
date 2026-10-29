import FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidual
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel

/-! Genuine L2 admission and complete endpoint tails of the actual signed logarithmic residual. -/
set_option autoImplicit false
namespace LogarithmicResidualTailScratch
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
end LogarithmicResidualTailScratch
