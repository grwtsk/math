-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DyadicOccurrence.Variant8070ffb5f99c2958ffd9a18f868cbfa8fdb8e1187f9afb59b6ace56d111b81c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8070ffb5f99c2958ffd9a18f868cbfa8fdb8e1187f9afb59b6ace56d111b81c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DyadicOccurrence.Variant8070ffb5f99c2958ffd9a18f868cbfa8fdb8e1187f9afb59b6ace56d111b81c1","mathematical_subject":"Analysis.Integration","original_sha256":"8070ffb5f99c2958ffd9a18f868cbfa8fdb8e1187f9afb59b6ace56d111b81c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass11/spectral_density_review/ActualLayerCake.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceZeroTail
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-! Existing #325: oriented finite layer-cake on actual multiplicity slots.
Research direction grwtsk contributors; scratch proof OpenAI Codex.
No density estimate, signed-head bound, or RH witness is assumed or proved. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.DyadicOccurrence.Variant8070ffb5f99c2958ffd9a18f868cbfa8fdb8e1187f9afb59b6ace56d111b81c1

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLayerCake
open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject
open ContinuousResearch.SourceZeroTail

/-- Positive-height dyadic window, strict below and closed above. -/
def DyadicOccurrence (T : ℝ) :=
  {o : ZeroOccurrence // T < (shiftedValue o).im ∧ (shiftedValue o).im ≤ 2*T}

theorem dyadicOccurrence_finite (T : ℝ) : Finite (DyadicOccurrence T) := by
  have := heightRetained_finite (2*T)
  let f : DyadicOccurrence T → HeightRetained (2*T) := fun o =>
    ⟨o.val, by
      have hT : 0 < T := by linarith [o.property.1, o.property.2]
      rw [abs_of_pos (hT.trans o.property.1)]
      exact o.property.2⟩
  exact Finite.of_injective f (fun x y h =>
    Subtype.ext (congrArg (fun z : HeightRetained (2*T) => z.val) h))

instance dyadicOccurrence_fintype (T : ℝ) : Fintype (DyadicOccurrence T) := by
  have := dyadicOccurrence_finite T
  exact Fintype.ofFinite _

/-- The unshifted real part from the actual zeta zero predicate. -/
def beta {T : ℝ} (o : DyadicOccurrence T) : ℝ := o.val.1.val.re

theorem beta_lt_one {T : ℝ} (o : DyadicOccurrence T) : beta o < 1 :=
  o.val.1.property.2.2

/-- Literal finite count; repeated zero points retain their occurrence slots. -/
def nT (T σ : ℝ) : ℝ :=
  ∑ o : DyadicOccurrence T, if σ < beta o then 1 else 0

theorem nT_eq_card (T σ : ℝ) :
    nT T σ = (Fintype.card {o : DyadicOccurrence T // σ < beta o} : ℝ) := by
  classical
  rw [Fintype.card_subtype, Finset.card_filter]
  simp only [nT, Nat.cast_sum, Nat.cast_ite, Nat.cast_one, Nat.cast_zero]

/-- Flattening keeps the exact multiplicity slot, not just the zero point. -/
def countWindowEquiv (T σ : ℝ) :
    {o : DyadicOccurrence T // σ < beta o} ≃
      {o : ZeroOccurrence // σ < o.1.val.re ∧
        T < (shiftedValue o).im ∧ (shiftedValue o).im ≤ 2*T} where
  toFun o := ⟨o.val.val,⟨o.property,o.val.property⟩⟩
  invFun o := ⟨⟨o.val,o.property.2⟩,o.property.1⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Exact dictionary to the issue's actual occurrence cardinality. -/
theorem nT_eq_actual_count (T σ : ℝ) :
    nT T σ = (Nat.card {o : ZeroOccurrence // σ < o.1.val.re ∧
      T < (shiftedValue o).im ∧ (shiftedValue o).im ≤ 2*T} : ℝ) := by
  rw [nT_eq_card,← Nat.card_eq_fintype_card]
  exact congrArg (fun n : ℕ => (n : ℝ)) (Nat.card_congr (countWindowEquiv T σ))

theorem nT_nonneg (T σ : ℝ) : 0 ≤ nT T σ := by
  classical
  exact Finset.sum_nonneg (fun o _ => by split_ifs <;> norm_num)

theorem nT_antitone (T : ℝ) : Antitone (nT T) := by
  classical
  intro σ τ hστ
  unfold nT
  apply Finset.sum_le_sum
  intro o _
  by_cases hτ : τ < beta o
  · have hσ : σ < beta o := hστ.trans_lt hτ
    simp [hτ,hσ]
  · by_cases hσ : σ < beta o <;> simp [hτ,hσ]

/-- Positive derivative of the exponential weight. -/
def densityWeight (A σ : ℝ) : ℝ := 2*A*Real.exp (2*A*(σ-1/2))

theorem densityWeight_nonneg (A σ : ℝ) (hA : 0 ≤ A) :
    0 ≤ densityWeight A σ :=
  mul_nonneg (mul_nonneg (by norm_num) hA) (Real.exp_pos _).le

theorem densityWeight_continuous (A : ℝ) : Continuous (densityWeight A) := by
  unfold densityWeight
  fun_prop

theorem densityWeight_integrable (A a b : ℝ) :
    IntervalIntegrable (densityWeight A) volume a b :=
  (densityWeight_continuous A).intervalIntegrable a b

theorem strict_indicator_integrable (A β a b : ℝ) :
    IntervalIntegrable (fun σ => if σ < β then densityWeight A σ else 0) volume a b := by
  change IntervalIntegrable ((Iio β).indicator (densityWeight A)) volume a b
  constructor
  · exact (densityWeight_integrable A a b).1.indicator measurableSet_Iio
  · exact (densityWeight_integrable A a b).2.indicator measurableSet_Iio

/-- The strict cut and the closed cut differ only at one Lebesgue-null point. -/
theorem strict_indicator_integral (A β : ℝ) (hβ : 1/2 ≤ β ∧ β ≤ 1) :
    (∫ σ in (1/2 : ℝ)..1, if σ < β then densityWeight A σ else 0) =
      ∫ σ in (1/2 : ℝ)..β, densityWeight A σ := by
  calc
    _ = ∫ σ in (1/2 : ℝ)..1, (Iic β).indicator (densityWeight A) σ := by
      apply intervalIntegral.integral_congr_ae
      filter_upwards [volume.ae_ne β] with σ hσ _
      simp only [indicator_apply, mem_Iic]
      congr 1
      exact propext (lt_iff_le_and_ne.trans (and_iff_left hσ))
    _ = _ := intervalIntegral.integral_indicator hβ

theorem exp_weight_primitive (A β : ℝ) :
    (∫ σ in (1/2 : ℝ)..β, densityWeight A σ) =
      Real.exp (2*A*(β-1/2))-1 := by
  have hd (σ : ℝ) : HasDerivAt (fun x => Real.exp (2*A*(x-1/2)))
      (densityWeight A σ) σ := by
    convert (((hasDerivAt_id σ).sub_const (1/2)).const_mul (2*A)).exp using 1 <;>
      simp [densityWeight, mul_comm]
  simpa using intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun σ _ => hd σ) (densityWeight_integrable A (1/2) β)

/-- Per occurrence identity, including points on or left of the critical line. -/
theorem per_occurrence_integral (A β : ℝ) (hβ : β ≤ 1) :
    (∫ σ in (1/2 : ℝ)..1, if σ < β then densityWeight A σ else 0) =
      if 1/2 < β then Real.exp (2*A*(β-1/2))-1 else 0 := by
  by_cases h : 1/2 < β
  · rw [if_pos h, strict_indicator_integral A β ⟨h.le,hβ⟩, exp_weight_primitive]
  · rw [if_neg h]
    apply intervalIntegral.integral_zero_ae
    filter_upwards with σ hσ
    have hσ' : 1/2 < σ := by
      have hh : 1/2 < σ ∨ 1 < σ := by simpa using hσ.1
      rcases hh with hh | hh <;> linarith
    simp only [not_lt] at h
    exact if_neg (by linarith)

theorem nT_measurable (T : ℝ) : Measurable (nT T) := by
  classical
  unfold nT
  apply Finset.measurable_sum
  intro o _
  exact Measurable.ite measurableSet_Iio measurable_const measurable_const

/-- Integrability is established before exchanging the finite occurrence sum. -/
theorem weighted_count_integrable (A T a b : ℝ) :
    IntervalIntegrable (fun σ => densityWeight A σ * nT T σ) volume a b := by
  have heq : (fun σ => densityWeight A σ * nT T σ) =
      (fun σ => ∑ o : DyadicOccurrence T,
        if σ < beta o then densityWeight A σ else 0) := by
    funext σ
    simp only [nT, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro o _
    split_ifs <;> simp
  rw [heq]
  convert! IntervalIntegrable.sum Finset.univ
    (fun (o : DyadicOccurrence T) _ => strict_indicator_integrable A (beta o) a b) using 1
  ext σ
  simp

/-- The requested actual finite layer-cake, in the positive −dn orientation. -/
theorem actual_layer_cake (A T : ℝ) :
    (∑ o : DyadicOccurrence T,
      if 1/2 < beta o then Real.exp (2*A*(beta o-1/2)) else 0) =
      nT T (1/2) + 2*A*∫ σ in (1/2 : ℝ)..1,
        Real.exp (2*A*(σ-1/2)) * nT T σ := by
  have heq : (fun σ => densityWeight A σ * nT T σ) =
      (fun σ => ∑ o : DyadicOccurrence T,
        if σ < beta o then densityWeight A σ else 0) := by
    funext σ
    simp only [nT, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro o _
    split_ifs <;> simp
  have hi := intervalIntegral.integral_finsetSum (s := Finset.univ)
    (f := fun o : DyadicOccurrence T =>
      fun σ => if σ < beta o then densityWeight A σ else 0)
    (fun o _ => strict_indicator_integrable A (beta o) (1/2) 1)
  have hl : (∫ σ in (1/2 : ℝ)..1, densityWeight A σ * nT T σ) =
      ∑ o : DyadicOccurrence T,
        if 1/2 < beta o then Real.exp (2*A*(beta o-1/2))-1 else 0 := by
    rw [heq,hi]
    apply Finset.sum_congr rfl
    intro o _
    exact per_occurrence_integral A (beta o) (beta_lt_one o).le
  have hm : 2*A*(∫ σ in (1/2 : ℝ)..1,
      Real.exp (2*A*(σ-1/2))*nT T σ) =
      ∫ σ in (1/2 : ℝ)..1, densityWeight A σ*nT T σ := by
    rw [← intervalIntegral.integral_const_mul]
    congr 1
    funext σ
    simp only [densityWeight]
    ring
  rw [hm,hl,nT,← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro o _
  split_ifs <;> ring

#print axioms DyadicOccurrence
#print axioms dyadicOccurrence_finite
#print axioms dyadicOccurrence_fintype
#print axioms beta
#print axioms beta_lt_one
#print axioms nT
#print axioms nT_eq_card
#print axioms countWindowEquiv
#print axioms nT_eq_actual_count
#print axioms nT_nonneg
#print axioms nT_antitone
#print axioms densityWeight
#print axioms densityWeight_nonneg
#print axioms densityWeight_continuous
#print axioms densityWeight_integrable
#print axioms strict_indicator_integrable
#print axioms strict_indicator_integral
#print axioms exp_weight_primitive
#print axioms per_occurrence_integral
#print axioms nT_measurable
#print axioms weighted_count_integrable
#print axioms actual_layer_cake
end ContinuousResearch.ActualLayerCake
