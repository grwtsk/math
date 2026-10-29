-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormalizedTransformEqActualDiv.Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NormalizedTransformEqActualDiv.Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse
import FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta
import Mathlib.Analysis.SpecialFunctions.Complex.Log

/-!
# Actual zero-orbit algebra and the obstruction to termwise Gram positivity

The exact native transform is that of the unnormalized actual test. Its four
labelled symmetry slots add to four times the real part of an ordinary square,
which is a signed difference rather than a Hermitian norm square. Native
occurrence involutions retain each finite analytic multiplicity slot. On the
critical line the labelled quartet repeats two occurrences; no four-point
orbit count is asserted there.

An explicit arbitrary off-axis strip point gives a compiled negative square
for infinitely many actual real radii. It is not asserted to be a zeta zero.
Positivity restricted to actual zeta occurrences is separately proved
RH-equivalent and remains uninhabited unconditionally. The actual frequency
transform also fails the strict Hermite–Biehler norm condition as a real
component, because its prescribed pole factors give a nonreal frequency zero.
No de Branges space or new arithmetic estimate is constructed.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormalizedTransformEqActualDiv.Variantf6647e08cf01b1f2f99ee982972a7c1b054e76f6b1cf8b66e578332e662cbe4a

namespace FormalResearch.RiemannHypothesis.ZeroOrbitGramAudit
open MeasureTheory Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets ZeroObject Realization SourceLaplaceDetection SourceLaplaceEndpoint
open RiemannHypothesisEstimateConverse
noncomputable section

/-- The actual test is unnormalized; its normalized transform divides by the genuine √Z. -/
theorem normalized_transform_eq_actual_div (A : ℝ) (z : ℂ) :
    bilateralLaplace (normalizedTest explicitSecondDerivative A) z =
      bilateralTransform A z / (Real.sqrt (sourceNormalization A) : ℂ) := by
  unfold bilateralLaplace normalizedTest bilateralTransform actualTest
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  rw [integral_div]

/-- The actual ordinary square equals Z times the normalized correlation transform. -/
theorem actual_transform_square_eq_source (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    bilateralTransform A z ^ 2 = (sourceNormalization A : ℂ) * sourceLaplace A z := by
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (Real.sqrt_pos.mpr (source_normalization_pos A hA))
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ) ^ 2 =
      (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt (source_normalization_pos A hA).le
  rw [source_laplace_eq_test_product A z hA, normalized_transform_eq_actual_div,
    normalized_transform_eq_actual_div, actual_transform_even A hA]
  rw [← hsq]
  field_simp

/-- Four labelled symmetry slots; stabilizers are deliberately not deduplicated. -/
def fourSlotSquare (A : ℝ) (z : ℂ) : ℂ :=
  bilateralTransform A z ^ 2 + bilateralTransform A (-z) ^ 2 +
    bilateralTransform A (conj z) ^ 2 + bilateralTransform A (-conj z) ^ 2

/-- A symmetry quartet gives a real ordinary square sum, rather than a norm square. -/
theorem four_slot_square_eq_real (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    fourSlotSquare A z = ((4 * (bilateralTransform A z ^ 2).re : ℝ) : ℂ) := by
  unfold fourSlotSquare
  rw [actual_transform_even A hA z, actual_transform_even A hA (conj z),
    ← actual_transform_conjugate]
  simp only [← map_pow]
  apply Complex.ext <;>
    simp only [Complex.add_re, Complex.add_im, Complex.conj_re, Complex.conj_im,
      Complex.ofReal_re, Complex.ofReal_im] <;> ring

/-- The quartet is the signed difference of real and imaginary squares. -/
theorem four_slot_square_re_eq_difference (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    (fourSlotSquare A z).re = 4 * (bilateralTransform A z).re ^ 2 -
      4 * (bilateralTransform A z).im ^ 2 := by
  rw [four_slot_square_eq_real A hA, Complex.ofReal_re]
  simp only [pow_two, Complex.mul_re]
  ring

/-- Replacing the quartet by a positive norm square drops its explicit imaginary correction. -/
theorem four_slot_square_re_eq_norm_sub (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    (fourSlotSquare A z).re = 4 * Complex.normSq (bilateralTransform A z) -
      8 * (bilateralTransform A z).im ^ 2 := by
  rw [four_slot_square_re_eq_difference A hA]
  simp only [Complex.normSq_apply]
  ring

/-- Native zeta involutions preserve every multiplicity slot in the labelled sum. -/
theorem occurrence_four_slot_square_eq_real (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    bilateralTransform A (shiftedValue o) ^ 2 +
      bilateralTransform A (shiftedValue (reflectOccurrence o)) ^ 2 +
      bilateralTransform A (shiftedValue (conjugateOccurrence o)) ^ 2 +
      bilateralTransform A (shiftedValue (reflectOccurrence (conjugateOccurrence o))) ^ 2 =
        ((4 * (bilateralTransform A (shiftedValue o) ^ 2).re : ℝ) : ℂ) := by
  rw [shiftedValue_reflect, shiftedValue_conjugate, shiftedValue_reflect,
    shiftedValue_conjugate]
  exact four_slot_square_eq_real A hA (shiftedValue o)

/-- The proved real-zero exclusion prevents a native conjugation fixed point. -/
theorem conjugate_occurrence_ne_self (o : ZeroOccurrence) : conjugateOccurrence o ≠ o := by
  intro h
  have hi := shiftedValue_im_ne_zero_of_realZeroExclusion ZeroEta.real_zero_exclusion o
  have he := congrArg (fun q : ZeroOccurrence ↦ (shiftedValue q).im) h
  rw [shiftedValue_conjugate, Complex.conj_im] at he
  apply hi
  linarith

/-- Reflection and conjugation commute on the actual point and its unchanged finite slot. -/
theorem reflect_conjugate_occurrence_commute (o : ZeroOccurrence) :
    reflectOccurrence (conjugateOccurrence o) = conjugateOccurrence (reflectOccurrence o) := by
  rcases o with ⟨ρ, i⟩
  apply Sigma.ext
  · apply Subtype.ext
    simp [reflectOccurrence, conjugateOccurrence, reflectPoint, conjugatePoint]
  · apply (Fin.heq_ext_iff (by simp [reflectOccurrence, conjugateOccurrence,
      multiplicity_reflect, multiplicity_conjugate])).mpr
    rfl

/-- Critical-line occurrences have a stabilizer, so four labelled slots are not four zeros. -/
theorem reflect_occurrence_eq_conjugate_iff (o : ZeroOccurrence) :
    reflectOccurrence o = conjugateOccurrence o ↔ (shiftedValue o).re = 0 := by
  constructor
  · intro h
    have he := congrArg (fun q : ZeroOccurrence ↦ (shiftedValue q).re) h
    rw [shiftedValue_reflect, shiftedValue_conjugate, Complex.neg_re, Complex.conj_re] at he
    linarith
  · intro h
    rcases o with ⟨ρ, i⟩
    apply Sigma.ext
    · apply Subtype.ext
      apply Complex.ext
      · simp only [reflectOccurrence, reflectPoint, conjugateOccurrence, conjugatePoint,
          Complex.sub_re, Complex.one_re, Complex.conj_re]
        simp only [shiftedValue, Complex.sub_re, Complex.div_ofNat_re, Complex.one_re] at h
        linarith
      · simp [reflectOccurrence, reflectPoint, conjugateOccurrence, conjugatePoint]
    · apply (Fin.heq_ext_iff (by simp [reflectOccurrence, conjugateOccurrence,
      multiplicity_reflect, multiplicity_conjugate])).mpr
      rfl

/-- Away from both axes the four parameter values are genuinely distinct. -/
theorem parameter_four_slots_nodup (z : ℂ) (hre : z.re ≠ 0) (him : z.im ≠ 0) :
    List.Nodup [z, -z, conj z, -conj z] := by
  have h0 : z ≠ -z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re] at he
    apply hre
    linarith
  have h1 : z ≠ conj z := by
    intro h
    have he := congrArg Complex.im h
    simp only [Complex.conj_im] at he
    apply him
    linarith
  have h2 : z ≠ -conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  have h3 : -z ≠ conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  have h4 : -z ≠ -conj z := by
    intro h
    exact h1 (neg_inj.mp h)
  have h5 : conj z ≠ -conj z := by
    intro h
    have he := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.conj_re] at he
    apply hre
    linarith
  simp [h0, h1, h2, h3, h4, h5]

/-- A native off-line occurrence has four distinct partners, each keeping the same slot. -/
theorem occurrence_four_slots_nodup_of_re_ne_zero (o : ZeroOccurrence)
    (hre : (shiftedValue o).re ≠ 0) :
    List.Nodup [o, reflectOccurrence o, conjugateOccurrence o,
      reflectOccurrence (conjugateOccurrence o)] := by
  apply List.Nodup.of_map shiftedValue
  simpa only [List.map_cons, List.map_nil, shiftedValue_reflect, shiftedValue_conjugate] using
    parameter_four_slots_nodup (shiftedValue o) hre
      (shiftedValue_im_ne_zero_of_realZeroExclusion ZeroEta.real_zero_exclusion o)

/-- A critical-line orbit has two distinct occurrences and two repeated labelled partners. -/
theorem critical_line_four_slots_repeat (o : ZeroOccurrence) (h : (shiftedValue o).re = 0) :
    reflectOccurrence o = conjugateOccurrence o ∧
      reflectOccurrence (conjugateOccurrence o) = o ∧ conjugateOccurrence o ≠ o := by
  have he := reflect_occurrence_eq_conjugate_iff o |>.mpr h
  refine ⟨he, ?_, conjugate_occurrence_ne_self o⟩
  rw [reflect_conjugate_occurrence_commute, he, conjugateOccurrence_involutive]

/-- A fixed arbitrary off-axis point strictly inside the native shifted strip. -/
def counterexampleParameter : ℂ := (1 + Complex.I) / 4

/-- These actual real radii remove the chosen parameter’s oscillating exponential phase. -/
def counterexampleRadius (n : ℕ) : ℝ := 4 * Real.pi * n

/-- Both coordinates of the explicit witness are exactly one quarter. -/
theorem counterexample_parameter_components :
    counterexampleParameter.re = 1 / 4 ∧ counterexampleParameter.im = 1 / 4 := by
  norm_num [counterexampleParameter, Complex.div_re, Complex.div_im]

/-- The frozen source asymptotic has this exact negative real leading coefficient. -/
theorem counterexample_leading_coefficient_re :
    (((147456 / (4096 / 109395) : ℂ) *
      (counterexampleParameter ^ 2 - 1 / 4) ^ 2 / counterexampleParameter ^ 10).re) =
        -8065474560 := by
  norm_num [counterexampleParameter, Complex.div_re, Complex.div_im, Complex.mul_re,
    Complex.mul_im, Complex.normSq_apply, pow_succ, pow_zero]

/-- The asymptotic coefficient has strictly negative real part. -/
theorem counterexample_leading_coefficient_negative :
    (((147456 / (4096 / 109395) : ℂ) *
      (counterexampleParameter ^ 2 - 1 / 4) ^ 2 / counterexampleParameter ^ 10).re) < 0 := by
  rw [counterexample_leading_coefficient_re]
  norm_num

/-- The explicit witness radii tend to infinity. -/
theorem counterexample_radius_tendsto : Tendsto counterexampleRadius atTop atTop := by
  exact (tendsto_natCast_atTop_atTop : Tendsto (fun n : ℕ ↦ (n : ℝ)) atTop atTop).const_mul_atTop
    (by positivity : 0 < 4 * Real.pi)

/-- Exponential periodicity makes the witness exponential exactly positive real. -/
theorem counterexample_exponential_real (n : ℕ) :
    Complex.exp (-2 * (counterexampleRadius n : ℂ) * counterexampleParameter) =
      (Real.exp (-(counterexampleRadius n / 2)) : ℂ) := by
  have hp : Complex.exp (-((n : ℂ) * (2 * Real.pi * Complex.I))) = 1 := by
    rw [Complex.exp_neg, Complex.exp_nat_mul_two_pi_mul_I]
    simp
  have he : -2 * (counterexampleRadius n : ℂ) * counterexampleParameter =
      (-(counterexampleRadius n / 2) : ℝ) - (n : ℂ) * (2 * Real.pi * Complex.I) := by
    unfold counterexampleRadius counterexampleParameter
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add, hp, mul_one, ← Complex.ofReal_exp]

/-- The actual normalized source response is eventually negative in real part. -/
theorem actual_source_negative_on_sequence :
    ∀ᶠ n : ℕ in atTop, 1 ≤ counterexampleRadius n ∧
      (sourceLaplace (counterexampleRadius n) counterexampleParameter).re < 0 := by
  have hr : 0 < counterexampleParameter.re := by
    rw [counterexample_parameter_components.1]
    norm_num
  have ht := (source_laplace_scaled_tendsto counterexampleParameter hr).comp
    counterexample_radius_tendsto
  have hreal := Complex.continuous_re.continuousAt.tendsto.comp ht
  have hneg := hreal.eventually (gt_mem_nhds counterexample_leading_coefficient_negative)
  have hlarge := counterexample_radius_tendsto.eventually (eventually_ge_atTop (1 : ℝ))
  filter_upwards [hneg, hlarge] with n hn hA
  refine ⟨hA, ?_⟩
  change (sourceLaplace (counterexampleRadius n) counterexampleParameter *
    (counterexampleRadius n : ℂ) ^ 9 *
      Complex.exp (-2 * (counterexampleRadius n : ℂ) * counterexampleParameter)).re < 0 at hn
  rw [counterexample_exponential_real, ← Complex.ofReal_pow] at hn
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    mul_zero, sub_zero] at hn
  have hp : 0 < counterexampleRadius n ^ 9 * Real.exp (-(counterexampleRadius n / 2)) := by
    positivity
  nlinarith

/-- The actual unnormalized transform has a negative ordinary square on the explicit strip ray. -/
theorem actual_transform_square_negative_on_sequence :
    ∀ᶠ n : ℕ in atTop, 1 ≤ counterexampleRadius n ∧
      (bilateralTransform (counterexampleRadius n) counterexampleParameter ^ 2).re < 0 := by
  filter_upwards [actual_source_negative_on_sequence] with n hn
  refine ⟨hn.1, ?_⟩
  rw [actual_transform_square_eq_source _ hn.1]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  exact mul_neg_of_pos_of_neg (source_normalization_pos _ hn.1) hn.2

/-- Negative actual squares occur above every prescribed real radius. -/
theorem exists_actual_transform_square_negative_above (R : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ R ≤ A ∧
      (bilateralTransform A counterexampleParameter ^ 2).re < 0 := by
  have hR := counterexample_radius_tendsto.eventually (eventually_ge_atTop R)
  obtain ⟨n, hn, hnR⟩ := (actual_transform_square_negative_on_sequence.and hR).exists
  exact ⟨counterexampleRadius n, hn.1, hnR, hn.2⟩

/-- An actual-source counterexample is an arbitrary strip parameter, not an asserted zeta zero. -/
theorem exists_actual_transform_square_negative :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ z : ℂ, -(1 / 2) < z.re ∧ z.re < 1 / 2 ∧
      z.re ≠ 0 ∧ z.im ≠ 0 ∧ (bilateralTransform A z ^ 2).re < 0 := by
  obtain ⟨n, hn⟩ := actual_transform_square_negative_on_sequence.exists
  refine ⟨counterexampleRadius n, hn.1, counterexampleParameter, ?_, ?_, ?_, ?_, hn.2⟩
  all_goals
    first | rw [counterexample_parameter_components.1] | rw [counterexample_parameter_components.2]
    norm_num

/-- The labelled quartet itself can be strictly negative on an arbitrary off-axis strip point. -/
theorem exists_four_slot_square_negative :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ z : ℂ, -(1 / 2) < z.re ∧ z.re < 1 / 2 ∧
      z.re ≠ 0 ∧ z.im ≠ 0 ∧ (fourSlotSquare A z).re < 0 := by
  obtain ⟨A, hA, z, hz0, hz1, hzr, hzi, hn⟩ := exists_actual_transform_square_negative
  refine ⟨A, hA, z, hz0, hz1, hzr, hzi, ?_⟩
  rw [four_slot_square_eq_real A hA z, Complex.ofReal_re]
  linarith

/-- Positivity at actual zeta occurrences is a precise retained proposition. -/
def ActualOccurrenceSquareNonneg : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ o : ZeroOccurrence,
    0 ≤ (bilateralTransform A (shiftedValue o) ^ 2).re

/-- The strong actual-occurrence positivity condition gives the original exact estimate. -/
theorem estimate_of_actual_occurrence_square_nonneg (h : ActualOccurrenceSquareNonneg) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨0, fun A hA ↦ ?_⟩
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    exact tsum_nonneg (h A hA)
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

/-- The actual-occurrence condition is RH-equivalent; the arbitrary-strip one is false. -/
theorem actual_occurrence_square_nonneg_iff_riemann_hypothesis :
    ActualOccurrenceSquareNonneg ↔ _root_.RiemannHypothesis := by
  constructor
  · exact fun h ↦ estimate_iff_riemann_hypothesis.mp (estimate_of_actual_occurrence_square_nonneg h)
  · intro hRH A hA o
    have hi := actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
    simp only [pow_two, Complex.mul_re, hi, mul_zero, sub_zero]
    exact mul_self_nonneg _

/-- The two prescribed pole factors remain zeros of the actual unnormalized test transform. -/
theorem actual_transform_poles_zero (A : ℝ) (hA : 1 ≤ A) :
    bilateralTransform A (1 / 2) = 0 ∧ bilateralTransform A (-1 / 2) = 0 := by
  have hp := source_laplace_poles_zero A hA
  constructor
  · apply sq_eq_zero_iff.mp
    rw [actual_transform_square_eq_source A hA, hp.1, mul_zero]
  · apply sq_eq_zero_iff.mp
    rw [actual_transform_square_eq_source A hA, hp.2, mul_zero]

/-- The actual test transform in the real-frequency coordinate. -/
def sourceFrequencyTransform (A : ℝ) (w : ℂ) : ℂ :=
  bilateralTransform A (Complex.I * w)

/-- Reality and evenness give the native frequency transform exact sharp symmetry. -/
theorem source_frequency_transform_sharp (A : ℝ) (hA : 1 ≤ A) (w : ℂ) :
    conj (sourceFrequencyTransform A (conj w)) = sourceFrequencyTransform A w := by
  unfold sourceFrequencyTransform
  rw [actual_transform_conjugate]
  have he : conj (Complex.I * conj w) = -(Complex.I * w) := by simp
  rw [he, actual_transform_even A hA]

/-- The prescribed real Laplace pole produces a nonreal frequency zero. -/
theorem source_frequency_transform_nonreal_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceFrequencyTransform A (Complex.I / 2) = 0 := by
  unfold sourceFrequencyTransform
  have he : Complex.I * (Complex.I / 2) = -1 / 2 := by
    rw [← mul_div_assoc, Complex.I_mul_I]
  rw [he]
  exact (actual_transform_poles_zero A hA).2

/-- Only the strict norm inequality is named here; no de Branges space is constructed. -/
def StrictHermiteBiehlerNormCondition (E : ℂ → ℂ) : Prop :=
  ∀ w : ℂ, 0 < w.im → ‖conj (E (conj w))‖ < ‖E w‖

/-- The actual frequency transform cannot be the real part of a strict HB candidate.
The second component is any function with sharp symmetry; entire functions are included. -/
theorem source_frequency_hb_norm_obstruction (A : ℝ) (hA : 1 ≤ A) (h : ℂ → ℂ)
    (hsharp : ∀ w : ℂ, conj (h (conj w)) = h w) :
    ¬ StrictHermiteBiehlerNormCondition
      (fun w ↦ sourceFrequencyTransform A w - Complex.I * h w) := by
  intro hHB
  have hp := source_frequency_transform_nonreal_zero A hA
  have hc : conj (sourceFrequencyTransform A (conj (Complex.I / 2)) -
      Complex.I * h (conj (Complex.I / 2))) =
        -(sourceFrequencyTransform A (Complex.I / 2) - Complex.I * h (Complex.I / 2)) := by
    rw [map_sub, map_mul, source_frequency_transform_sharp A hA, hsharp, hp]
    simp
  have hn := hHB (Complex.I / 2) (by norm_num [Complex.div_im])
  rw [hc, norm_neg] at hn
  exact lt_irrefl _ hn

end
end FormalResearch.RiemannHypothesis.ZeroOrbitGramAudit
