import SourceActualPrimeContourResidual
import SourceActualPrimeBumpDictionary
import SourceActualBumpTwoTailBudget

/-!
A phase-preserving finite Euler-source truncation on the initial right line.
The literal closed cutoff floor(exp(2A)) includes the unit zero and every prime
power. Above-support terms vanish only after the genuine full-line inversion;
their finite-height contribution is retained and quantitatively estimated.
No uniform signed bound for the remaining finite head is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
open MeasureTheory Set Complex Filter
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualRightBumpTail SourceActualBumpTwoTailBudget
open SourceActualPrimeContourResidual SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceBumpLaplace
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

/-- Literal closed actual Mangoldt Dirichlet polynomial; n=0 and n=1 are zero. -/
def actualClosedPrimeDirichletPolynomial (A : ℝ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1), LSeries.term actualMangoldtCoefficients s n

/-- The actual exterior Dirichlet series, with the closed endpoint left in the polynomial. -/
def actualExteriorPrimeSeries (A : ℝ) (s : ℂ) : ℂ :=
  ∑' n : {n : ℕ // n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)},
    LSeries.term actualMangoldtCoefficients s n

/-- Exact initial arithmetic decomposition, with no cutoff of the infinite multiplier. -/
theorem actualPrimeSeries_eq_closed_add_exterior (A : ℝ) (s : ℂ) (hs : 1 < s.re) :
    LSeries actualMangoldtCoefficients s =
      actualClosedPrimeDirichletPolynomial A s + actualExteriorPrimeSeries A s := by
  unfold LSeries actualClosedPrimeDirichletPolynomial actualExteriorPrimeSeries
  exact (ArithmeticFunction.LSeriesSummable_vonMangoldt hs).sum_add_tsum_subtype_compl
    (Finset.range (⌊Real.exp (2*A)⌋₊+1)) |>.symm

private theorem term_norm_on_line (c t : ℝ) (n : ℕ) :
    ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ =
      ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ := by
  simp [LSeries.norm_term_eq]

private theorem term_continuous (c : ℝ) (n : ℕ) :
    Continuous (fun t : ℝ => LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp only [LSeries.term_zero]
    exact continuous_const
  · simp only [LSeries.term_of_ne_zero hn]
    refine continuous_const.div ?_ (fun t => ?_)
    · exact Continuous.const_cpow (by fun_prop) (Or.inl (by exact_mod_cast hn))
    · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))

private theorem term_density_integrable (A c : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) := by
  refine (actualInitialPrimeMellin_on_line_integrable A c hA).mul_bdd
    (c := ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖)
    (term_continuous c n).aestronglyMeasurable ?_
  filter_upwards [] with t
  exact (term_norm_on_line c t n).le

private theorem term_density_integral (A c : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n) =
    ((ArithmeticFunction.vonMangoldt n/Real.sqrt n:ℝ):ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n):ℂ) := by
  simp_rw [actualInitialPrimeMellin_eq_Hfn, Zeta23.WeilEF.Hfn_line]
  exact Zeta23.WeilEF.per_n_line_integral (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) n

private theorem closed_actual_weight_sum (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
      ((ArithmeticFunction.vonMangoldt n/Real.sqrt n:ℝ):ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n):ℂ)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  rw [← actualInitialPrime_tsum_eq_strict A hA]
  symm
  apply tsum_eq_sum
  intro n hn
  have hN : ⌊Real.exp (2*A)⌋₊ < n := by simpa only [Finset.mem_range, not_lt] using hn
  have hnr : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
  have hl : 2*A ≤ Real.log n := by
    simpa only [Real.log_exp] using (Real.log_le_log (Real.exp_pos _) hnr.le)
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n)
    (by linarith) (hl.trans (le_abs_self _))]
  simp

/-- The finite polynomial's full line already gives the complete original strict inventory. -/
theorem actualClosedPrimePolynomial_fullLine (A c : ℝ) (hA : 1 ≤ A) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  rw [integral_finset_sum _ (fun n _ => term_density_integrable A c hA n), Finset.mul_sum]
  simp_rw [term_density_integral A c hA]
  exact closed_actual_weight_sum A hA

private theorem closed_density_integrable (A c : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  exact integrable_finset_sum _ (fun n _ => term_density_integrable A c hA n)

/-- Genuine full-line L1 of the discarded actual multiplier. -/
theorem actualExteriorPrimeDensity_integrable (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    Integrable (fun t : ℝ => actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)) := by
  have he (t : ℝ) : actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I) =
      actualInitialPrimeDensity A c t - actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) := by
    rw [actualInitialPrimeDensity_eq_series A c t hc,
      actualPrimeSeries_eq_closed_add_exterior A _ (by simpa using hc)]
    ring
  simp_rw [he]
  exact (actualInitialPrimeDensity_integrable A c hA hc).sub (closed_density_integrable A c hA)

/-- The exterior source disappears only after the complete actual full-line inversion. -/
theorem actualExteriorPrimeDensity_fullLine_zero (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)) = 0 := by
  have hs (t : ℝ) : actualInitialPrimeDensity A c t =
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I) +
      actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
        actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I) := by
    rw [actualInitialPrimeDensity_eq_series A c t hc,
      actualPrimeSeries_eq_closed_add_exterior A _ (by simpa using hc)]
    ring
  have hi := actualInitialPrimeContour_eq_strict A c hA hc
  change (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeDensity A c t) = _ at hi
  simp_rw [hs] at hi
  rw [integral_add (closed_density_integrable A c hA)
    (actualExteriorPrimeDensity_integrable A c hA hc), mul_add,
    actualClosedPrimePolynomial_fullLine A c hA] at hi
  exact add_left_cancel (a := (primePowerContribution explicitSecondDerivative A:ℂ))
    (by simpa using hi)

/-- The actual exterior series has an exponential support-distance payment on c>d>1. -/
theorem actualExteriorPrimeSeries_norm_le (A c d t : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖actualExteriorPrimeSeries A ((c:ℂ)+(t:ℂ)*I)‖ ≤
      actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
  let S := {n : ℕ // n ∉ Finset.range (⌊Real.exp (2*A)⌋₊+1)}
  have hs : Summable (fun n : S =>
      ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖) :=
    (ArithmeticFunction.LSeriesSummable_vonMangoldt
      (show 1 < ((c:ℂ)+(t:ℂ)*I).re by simp; linarith)).norm.subtype _
  have hD : Summable (fun n : ℕ => ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) :=
    actualRightLineMass_summable d hd
  have hb (n : S) : ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ ≤
      ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ * Real.exp (-2*(c-d)*A) := by
    have hN : ⌊Real.exp (2*A)⌋₊ < (n:ℕ) := by
      simpa only [Finset.mem_range, not_lt] using n.2
    have hn : Real.exp (2*A) < (n:ℝ) := Nat.lt_of_floor_lt hN
    have hn0 : 0 < (n:ℝ) := (Real.exp_pos _).trans hn
    have hnz : (n:ℕ) ≠ 0 := by exact_mod_cast hn0.ne'
    have hl : 2*A ≤ Real.log (n:ℝ) := by
      simpa using Real.log_le_log (Real.exp_pos _) hn.le
    have he : Real.exp (-Real.log (n:ℝ)*(c-d)) ≤ Real.exp (-2*(c-d)*A) := by
      apply Real.exp_le_exp.mpr
      nlinarith
    simp only [LSeries.norm_term_eq, hnz, if_false, actualMangoldtCoefficients,
      Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
      Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
      Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
    rw [Real.rpow_def_of_pos hn0, Real.rpow_def_of_pos hn0]
    simp only [div_eq_mul_inv, ← Real.exp_neg]
    have hx : Real.exp (-(Real.log (n:ℝ)*c)) =
        Real.exp (-(Real.log (n:ℝ)*d)) * Real.exp (-Real.log (n:ℝ)*(c-d)) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [hx]
    exact mul_le_mul_of_nonneg_left he (by positivity)
  unfold actualExteriorPrimeSeries
  calc
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ :=
      norm_tsum_le_tsum_norm hs
    _ ≤ ∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖ *
        Real.exp (-2*(c-d)*A) := hs.tsum_le_tsum hb ((hD.subtype _).mul_right _)
    _ = (∑' n : S, ‖LSeries.term actualMangoldtCoefficients (d:ℂ) n‖) *
        Real.exp (-2*(c-d)*A) := tsum_mul_right
    _ ≤ actualRightLineMass d * Real.exp (-2*(c-d)*A) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact hD.tsum_subtype_le (fun _ => norm_nonneg _) _

end
end FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
