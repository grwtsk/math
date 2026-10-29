-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DirichletNumerator.Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6","mathematical_subject":"Analysis.Calculus","original_sha256":"73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-mobius-normalization/MobiusPrefixTiltAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.AbelSummation
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.Analysis.Complex.RemovableSingularity

/-! The actual corrected finite Möbius numerator and its removable one-half value. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DirichletNumerator.Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6

set_option autoImplicit false
namespace MobiusPoleNumeratorScratch
open Finset MeasureTheory Filter
open scoped ComplexConjugate Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController
noncomputable section

/-- The original finite signed reciprocal Dirichlet numerator in exponential coordinates. -/
def dirichletNumerator (X : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ))

/-- The complete corrected numerator, retaining the actual endpoint coefficient. -/
def correctedNumerator (X : ℕ) (z : ℂ) : ℂ :=
  dirichletNumerator X z - (mobiusReciprocalSum X : ℂ) *
    Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ))

/-- The signed logarithmic normalization required at the removed source pole. -/
def logNormalization (X : ℕ) : ℝ :=
  ∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℝ) / (n : ℝ) *
    Real.log ((X : ℝ) / (n : ℝ))

/-- Positive integer logarithms give the exact reciprocal coefficient at one half. -/
theorem exponential_at_half (n : ℕ) (hn : 1 ≤ n) :
    Complex.exp (-(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have h : -(1 / 2 + (1 / 2 : ℂ)) * (Real.log (n : ℝ) : ℂ) =
      ((-Real.log (n : ℝ) : ℝ) : ℂ) := by push_cast; ring
  rw [h, ← Complex.ofReal_exp, Real.exp_neg, Real.exp_log hn0, Complex.ofReal_inv]
  rfl

/-- The finite numerator at one half is exactly the original signed reciprocal sum. -/
theorem dirichletNumerator_half (X : ℕ) :
    dirichletNumerator X (1 / 2) = (mobiusReciprocalSum X : ℂ) := by
  unfold dirichletNumerator mobiusReciprocalSum
  simp only [Complex.ofReal_sum, Complex.ofReal_div, Complex.ofReal_natCast,
    Complex.ofReal_intCast]
  apply sum_congr rfl
  intro n hn
  rw [exponential_at_half n (mem_Icc.mp hn).1]
  rfl

/-- The actual endpoint correction cancels the numerator at one half exactly. -/
theorem correctedNumerator_half (X : ℕ) : correctedNumerator X (1 / 2) = 0 := by
  rw [correctedNumerator, dirichletNumerator_half]
  simp

/-- The finite exponential numerator is entire; no zeta inverse is taken here. -/
theorem correctedNumerator_differentiable (X : ℕ) : Differentiable ℂ (correctedNumerator X) := by
  unfold correctedNumerator dirichletNumerator
  fun_prop

end
end MobiusPoleNumeratorScratch

set_option autoImplicit false
namespace MobiusPrefixTiltScratch
open Finset MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController MobiusPoleNumeratorScratch
noncomputable section

private def reciprocalCoefficient (n : ℕ) : ℂ :=
  (ArithmeticFunction.moebius n : ℂ) / (n : ℂ)

private theorem reciprocalCoefficient_zero : reciprocalCoefficient 0 = 0 := by
  simp [reciprocalCoefficient]

private theorem reciprocal_prefix_eq (N : ℕ) :
    (∑ n ∈ Finset.Icc 0 N, reciprocalCoefficient n) = (mobiusReciprocalSum N : ℂ) := by
  have he : ∑ n ∈ Finset.Icc 1 N, reciprocalCoefficient n =
      ∑ n ∈ Finset.Icc 0 N, reciprocalCoefficient n := by
    apply sum_subset
    · intro n hn
      exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
    · intro n hn hnot
      have hn0 : n = 0 := by
        have hnle := (Finset.mem_Icc.mp hn).2
        by_contra h
        exact hnot (Finset.mem_Icc.mpr ⟨by omega, hnle⟩)
      simp [hn0, reciprocalCoefficient_zero]
  rw [← he]
  simp only [mobiusReciprocalSum, reciprocalCoefficient, Complex.ofReal_sum,
    Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast]

private def powerWeight (z : ℂ) (x : ℝ) : ℂ :=
  Complex.exp ((1 / 2 - z) * (Real.log x : ℂ))

private theorem powerWeight_hasDerivAt (z : ℂ) (x : ℝ) (hx : 0 < x) :
    HasDerivAt (powerWeight z)
      ((1 / 2 - z) * powerWeight z x / (x : ℂ)) x := by
  have h := (((Real.hasDerivAt_log hx.ne').ofReal_comp.const_mul (1 / 2 - z)).cexp)
  unfold powerWeight
  convert h using 1
  rw [Complex.ofReal_inv]
  ring

private theorem powerWeight_deriv (z : ℂ) (x : ℝ) (hx : 0 < x) :
    deriv (powerWeight z) x = (1 / 2 - z) * powerWeight z x / (x : ℂ) :=
  (powerWeight_hasDerivAt z x hx).deriv

private theorem weight_deriv_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (deriv (powerWeight z)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => (1 / 2 - z) * powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (continuousOn_const.mul (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl))).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (powerWeight_deriv z x (lt_of_lt_of_le zero_lt_one hx.1)).symm
  · exact measurableSet_Icc

/-- The actual reciprocal-prefix product is genuinely integrable on the full finite interval. -/
theorem reciprocal_prefix_power_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (fun x : ℝ => (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl)).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hi := integrableOn_mul_sum_Icc reciprocalCoefficient
    (m := 0) (by norm_num : (0 : ℝ) ≤ 1) hc.integrableOn_Icc
  simp_rw [reciprocal_prefix_eq] at hi
  convert hi using 1
  funext x
  simp only [powerWeight]
  ring

private theorem weighted_coefficient_eq (z : ℂ) (n : ℕ) (hn : 1 ≤ n) :
    powerWeight z (n : ℝ) * reciprocalCoefficient n =
      (ArithmeticFunction.moebius n : ℂ) *
        Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Complex.exp (-(Real.log (n : ℝ) : ℂ)) = (n : ℂ)⁻¹ := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hn0, Complex.ofReal_inv]
    rfl
  unfold powerWeight reciprocalCoefficient
  simp only [div_eq_mul_inv]
  rw [← he]
  calc
    _ = (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp ((1 / 2 - z) * (Real.log (n : ℝ) : ℂ)) *
        Complex.exp (-(Real.log (n : ℝ) : ℂ))) := by ring
    _ = _ := by
      rw [← Complex.exp_add]
      congr 2
      ring

/-- Exact finite complex Abel transport retains the endpoint and every signed coefficient. -/
theorem correctedNumerator_eq_prefix_integral (X : ℕ) (z : ℂ) :
    correctedNumerator X z = (z - 1 / 2) *
      ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ) := by
  have h := sum_mul_eq_sub_integral_mul₀'
    (f := powerWeight z) reciprocalCoefficient reciprocalCoefficient_zero X
    (fun x hx => (powerWeight_hasDerivAt z x
      (lt_of_lt_of_le zero_lt_one hx.1)).differentiableAt) (weight_deriv_integrable X z)
  have hs : (∑ n ∈ Finset.Icc 0 X, powerWeight z (n : ℝ) * reciprocalCoefficient n) =
      dirichletNumerator X z := by
    have he : (∑ n ∈ Finset.Icc 1 X, powerWeight z (n : ℝ) * reciprocalCoefficient n) =
        ∑ n ∈ Finset.Icc 0 X, powerWeight z (n : ℝ) * reciprocalCoefficient n := by
      apply sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨Nat.zero_le _, (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnot
        have hn0 : n = 0 := by
          have hnle := (Finset.mem_Icc.mp hn).2
          by_contra hn0
          exact hnot (Finset.mem_Icc.mpr ⟨by omega, hnle⟩)
        simp [hn0, reciprocalCoefficient_zero]
    rw [← he]
    apply sum_congr rfl
    intro n hn
    exact weighted_coefficient_eq z n (Finset.mem_Icc.mp hn).1
  rw [hs, reciprocal_prefix_eq] at h
  unfold correctedNumerator
  rw [h]
  have ht : (∫ x : ℝ in Set.Ioc 1 (X : ℝ),
      deriv (powerWeight z) x * ∑ n ∈ Finset.Icc 0 ⌊x⌋₊, reciprocalCoefficient n) =
      (1 / 2 - z) * ∫ x : ℝ in Set.Ioc 1 (X : ℝ),
        (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
          Complex.exp ((1 / 2 - z) * (Real.log x : ℂ)) / (x : ℂ) := by
    rw [← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    dsimp only
    rw [powerWeight_deriv z x (lt_trans zero_lt_one hx.1), reciprocal_prefix_eq]
    simp only [powerWeight]
    ring
  rw [ht]
  simp only [powerWeight]
  ring

end
end MobiusPrefixTiltScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 10000000
set_option pp.deepTerms true
#print MobiusPrefixTiltScratch.reciprocal_prefix_power_integrable
#print axioms MobiusPrefixTiltScratch.reciprocal_prefix_power_integrable
#print MobiusPrefixTiltScratch.correctedNumerator_eq_prefix_integral
#print axioms MobiusPrefixTiltScratch.correctedNumerator_eq_prefix_integral
