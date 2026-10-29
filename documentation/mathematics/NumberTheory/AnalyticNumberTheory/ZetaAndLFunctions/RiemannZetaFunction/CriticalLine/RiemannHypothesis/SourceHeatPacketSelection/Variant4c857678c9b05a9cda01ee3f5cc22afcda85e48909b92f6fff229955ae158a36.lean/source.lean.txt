-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGroupedKeyInventory.Variant882e459ae81afda16d3a74209b17f9f73022238d3ce113ce1bb9b4357b3fd12b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"882e459ae81afda16d3a74209b17f9f73022238d3ce113ce1bb9b4357b3fd12b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceGroupedKeyInventory.Variant882e459ae81afda16d3a74209b17f9f73022238d3ce113ce1bb9b4357b3fd12b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"882e459ae81afda16d3a74209b17f9f73022238d3ce113ce1bb9b4357b3fd12b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceHeatPacketSelection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceTupleRationalPackets

/-!
# Selection of complete grouped rational heat packets

Equal exact rational keys first combine their original signed tuple coefficients.
Selecting any subset then retains an exact complement, with the actual source
correlation in every omitted profile budget. The source-relative support boundary
removes touching and exterior keys exactly. Finite heat selection pays both this
complement and the existing sharp absolute high-moment Taylor tail. Every bound
is at the stated source scale; no uniform arithmetic witness is supplied.

Research direction: grwtsk contributors. This finite construction and formal
implementation: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceGroupedKeyInventory.Variant882e459ae81afda16d3a74209b17f9f73022238d3ce113ce1bb9b4357b3fd12b

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceHeatPacketSelection

open MeasureTheory
open SourceTupleRationalPackets SourceTuplePackets SourceMultiplicativePackets
open SourceHeatPacketExpansion SourceSignedHeat SourceCompensatedFourier SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The complete exact rational key inventory at the stated source scale and degree. -/
def sourceGroupedKeyInventory (A : ℝ) (degree : ℕ) : Finset ℚ :=
  (Finset.univ : Finset (SignTuple (SourceIndex A) degree)).image
    (sourceTupleKey A degree)

/-- Original signed coefficients combine within the entire exact rational fiber. -/
def sourceGroupedKeyCoefficient (A : ℝ) (degree : ℕ) (q : ℚ) : ℝ :=
  ∑ p ∈ Finset.univ with sourceTupleKey A degree p = q,
    sourceTupleCoefficient A degree p

/-- The genuine source correlation response at the exact rational key. -/
def sourceGroupedKeyResponse (A : ℝ) (q : ℚ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ))

/-- A selected key retains its complete signed fiber and actual correlation response. -/
def sourceGroupedPacketSum (A : ℝ) (degree : ℕ) (keys : Finset ℚ) : ℝ :=
  ∑ q ∈ keys, sourceGroupedKeyCoefficient A degree q * sourceGroupedKeyResponse A q

/-- Only grouped coefficients are absolutized; cancellation within each fiber is retained. -/
def sourceGroupedOmittedProfileBudget (A : ℝ) (degree : ℕ) (selected : Finset ℚ) : ℝ :=
  ∑ q ∈ sourceGroupedKeyInventory A degree \ selected,
    |sourceGroupedKeyCoefficient A degree q| * |sourceGroupedKeyResponse A q|

/-- A coarser omitted budget keeps the signed fiber combination before absolute values. -/
def sourceGroupedOmittedCoefficientBudget (A : ℝ) (degree : ℕ)
    (selected : Finset ℚ) : ℝ :=
  ∑ q ∈ sourceGroupedKeyInventory A degree \ selected,
    |sourceGroupedKeyCoefficient A degree q|

/-- Combining a complete signed fiber costs no more than its tuplewise variation. -/
theorem sourceGroupedKeyCoefficient_abs_le_fiber_variation (A : ℝ) (degree : ℕ)
    (q : ℚ) :
    |sourceGroupedKeyCoefficient A degree q| ≤
      ∑ p ∈ Finset.univ with sourceTupleKey A degree p = q,
        |sourceTupleCoefficient A degree p| := by
  exact Finset.abs_sum_le_sum_abs _ _

/-- Actual-profile omission budgets are nonnegative at every source scale and degree. -/
theorem sourceGroupedOmittedProfileBudget_nonneg (A : ℝ) (degree : ℕ)
    (selected : Finset ℚ) : 0 ≤ sourceGroupedOmittedProfileBudget A degree selected := by
  exact Finset.sum_nonneg (fun _ _ => mul_nonneg (abs_nonneg _) (abs_nonneg _))

/-- Extending a key selection reduces its complete omitted-profile budget. -/
theorem sourceGroupedOmittedProfileBudget_antitone (A : ℝ) (degree : ℕ)
    {selected extended : Finset ℚ} (hextend : selected ⊆ extended) :
    sourceGroupedOmittedProfileBudget A degree extended ≤
      sourceGroupedOmittedProfileBudget A degree selected := by
  unfold sourceGroupedOmittedProfileBudget
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (Finset.sdiff_subset_sdiff_right (sourceGroupedKeyInventory A degree) hextend)
    (fun _ _ _ => mul_nonneg (abs_nonneg _) (abs_nonneg _))

/-- Extending a schedule adds the exact signed contribution of its new keys. -/
theorem sourceGroupedPacketSum_extension (A : ℝ) (degree : ℕ)
    {selected extended : Finset ℚ} (hextend : selected ⊆ extended) :
    sourceGroupedPacketSum A degree extended = sourceGroupedPacketSum A degree selected +
      sourceGroupedPacketSum A degree (extended \ selected) := by
  unfold sourceGroupedPacketSum
  rw [add_comm]
  exact (Finset.sum_sdiff hextend).symm

/-- The full grouped moment is exactly the sum over the complete key inventory. -/
theorem sourceRationalTupleMoment_eq_grouped_sum (A : ℝ) (degree : ℕ) :
    sourceRationalTupleMoment A degree =
      sourceGroupedPacketSum A degree (sourceGroupedKeyInventory A degree) := rfl

/-- Every retained key is a positive rational product or ratio from the original inventory. -/
theorem sourceGroupedKeyInventory_pos {A : ℝ} {degree : ℕ} {q : ℚ}
    (hq : q ∈ sourceGroupedKeyInventory A degree) : 0 < q :=
  grouped_key_pos hq

/-- Selection partitions the full grouped source moment with no omitted signed fiber. -/
theorem sourceRationalTupleMoment_eq_selected_add_complement (A : ℝ) (degree : ℕ)
    (selected : Finset ℚ) (hselected : selected ⊆ sourceGroupedKeyInventory A degree) :
    sourceRationalTupleMoment A degree = sourceGroupedPacketSum A degree selected +
      sourceGroupedPacketSum A degree (sourceGroupedKeyInventory A degree \ selected) := by
  rw [sourceRationalTupleMoment_eq_grouped_sum]
  unfold sourceGroupedPacketSum
  rw [add_comm]
  exact (Finset.sum_sdiff hselected).symm

/-- The full omitted grouped contribution is paid against the actual source profile. -/
theorem sourceRationalTupleMoment_selected_error_le_profile_budget
    (A : ℝ) (degree : ℕ) (selected : Finset ℚ)
    (hselected : selected ⊆ sourceGroupedKeyInventory A degree) :
    |sourceRationalTupleMoment A degree - sourceGroupedPacketSum A degree selected| ≤
      sourceGroupedOmittedProfileBudget A degree selected := by
  rw [sourceRationalTupleMoment_eq_selected_add_complement A degree selected hselected,
    add_sub_cancel_left]
  simpa only [sourceGroupedPacketSum, sourceGroupedOmittedProfileBudget, abs_mul] using
    Finset.abs_sum_le_sum_abs
      (fun q => sourceGroupedKeyCoefficient A degree q * sourceGroupedKeyResponse A q)
      (sourceGroupedKeyInventory A degree \ selected)

/-- Mass-one normalization bounds the grouped profile budget by its coefficient budget. -/
theorem sourceGroupedOmittedProfileBudget_le_coefficientBudget {A : ℝ} (hA : 1 ≤ A)
    (degree : ℕ) (selected : Finset ℚ) :
    sourceGroupedOmittedProfileBudget A degree selected ≤
      sourceGroupedOmittedCoefficientBudget A degree selected := by
  unfold sourceGroupedOmittedProfileBudget sourceGroupedOmittedCoefficientBudget
  apply Finset.sum_le_sum
  intro q _
  exact mul_le_of_le_one_right (abs_nonneg _)
    (EstimateCorrelation.actual_correlation_abs_le_one A _ hA)

/-- Every touching or exterior response vanishes at the actual source-relative boundary. -/
theorem sourceGroupedKeyResponse_eq_zero_of_one_le_distance {A : ℝ} (hA : 0 < A)
    (q : ℚ) (hd : 1 ≤ multiplicativeDistance A (q : ℝ) 1) :
    sourceGroupedKeyResponse A q = 0 := by
  simpa only [sourceGroupedKeyResponse, div_one] using
    sourceCorrelation_eq_zero_of_one_le_distance hA (q : ℝ) 1 hd

/-- The strict interior of the complete exact rational key inventory. -/
def sourceGroupedInteriorKeyInventory (A : ℝ) (degree : ℕ) : Finset ℚ :=
  (sourceGroupedKeyInventory A degree).filter
    (fun q => multiplicativeDistance A (q : ℝ) 1 < 1)

/-- Support pruning selects a subset of the complete key inventory. -/
theorem sourceGroupedInteriorKeyInventory_subset (A : ℝ) (degree : ℕ) :
    sourceGroupedInteriorKeyInventory A degree ⊆ sourceGroupedKeyInventory A degree :=
  Finset.filter_subset _ _

/-- Pruning touching and exterior keys preserves any grouped packet sum exactly. -/
theorem sourceGroupedPacketSum_eq_interior {A : ℝ} (hA : 0 < A)
    (degree : ℕ) (keys : Finset ℚ) :
    sourceGroupedPacketSum A degree keys = sourceGroupedPacketSum A degree
      (keys.filter (fun q => multiplicativeDistance A (q : ℝ) 1 < 1)) := by
  unfold sourceGroupedPacketSum
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro q _
  by_cases hd : multiplicativeDistance A (q : ℝ) 1 < 1
  · simp only [hd, ↓reduceIte]
  · rw [if_neg hd, sourceGroupedKeyResponse_eq_zero_of_one_le_distance hA q
      (le_of_not_gt hd), mul_zero]

/-- The complete grouped moment equals its strict interior packet readout. -/
theorem sourceRationalTupleMoment_eq_interior_grouped_keys {A : ℝ} (hA : 0 < A)
    (degree : ℕ) :
    sourceRationalTupleMoment A degree =
      sourceGroupedPacketSum A degree (sourceGroupedInteriorKeyInventory A degree) := by
  rw [sourceRationalTupleMoment_eq_grouped_sum]
  exact sourceGroupedPacketSum_eq_interior hA degree _

/-- The exact support complement has zero actual-profile budget at every degree. -/
theorem sourceGroupedOmittedProfileBudget_interior_eq_zero {A : ℝ} (hA : 0 < A)
    (degree : ℕ) :
    sourceGroupedOmittedProfileBudget A degree (sourceGroupedInteriorKeyInventory A degree) =
      0 := by
  unfold sourceGroupedOmittedProfileBudget
  apply Finset.sum_eq_zero
  intro q hq
  obtain ⟨hq, hnot⟩ := Finset.mem_sdiff.mp hq
  have hd : 1 ≤ multiplicativeDistance A (q : ℝ) 1 := by
    apply le_of_not_gt
    intro hd
    exact hnot (Finset.mem_filter.mpr ⟨hq, hd⟩)
  rw [sourceGroupedKeyResponse_eq_zero_of_one_le_distance hA q hd, abs_zero, mul_zero]

/-- The signed coefficient of the Taylor term indexed by `j`. -/
def sourceHeatSelectionCoefficient (tau : ℝ) (j : ℕ) : ℝ :=
  (-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial

/-- Selected grouped keys at degree `2*j+3` in each finite Taylor term. -/
def sourceHeatSelectionApproximation (A tau : ℝ) (N : ℕ)
    (selected : ℕ → Finset ℚ) : ℝ :=
  ∑ j ∈ Finset.range (N + 1), sourceHeatSelectionCoefficient tau j *
    sourceGroupedPacketSum A (2 * j + 3) (selected j)

/-- The exact complementary grouped heat readout, retaining every unselected key. -/
def sourceHeatSelectionComplement (A tau : ℝ) (N : ℕ)
    (selected : ℕ → Finset ℚ) : ℝ :=
  ∑ j ∈ Finset.range (N + 1), sourceHeatSelectionCoefficient tau j *
    sourceGroupedPacketSum A (2 * j + 3)
      (sourceGroupedKeyInventory A (2 * j + 3) \ selected j)

/-- Finite omitted-profile budget, with the absolute coefficient of each Taylor term. -/
def sourceHeatSelectionProfileBudget (A tau : ℝ) (N : ℕ)
    (selected : ℕ → Finset ℚ) : ℝ :=
  ∑ j ∈ Finset.range (N + 1), |sourceHeatSelectionCoefficient tau j| *
    sourceGroupedOmittedProfileBudget A (2 * j + 3) (selected j)

/-- The existing sharp high-moment Taylor tail at the stated source scale. -/
def sourceHeatTaylorBudget (A tau : ℝ) (N : ℕ) : ℝ :=
  tau ^ (N + 2) / (N + 2).factorial *
    (∫ xi : ℝ, |compensatedFourierSymbol A xi| ^ (2 * N + 5)
      ∂sourceProbabilityMeasure A)

/-- Finite heat omission budgets are nonnegative, including alternating Taylor signs. -/
theorem sourceHeatSelectionProfileBudget_nonneg (A tau : ℝ) (N : ℕ)
    (selected : ℕ → Finset ℚ) :
    0 ≤ sourceHeatSelectionProfileBudget A tau N selected := by
  exact Finset.sum_nonneg (fun _ _ => mul_nonneg (abs_nonneg _)
    (sourceGroupedOmittedProfileBudget_nonneg _ _ _))

/-- Extending each finite-degree selection reduces the paid heat profile budget. -/
theorem sourceHeatSelectionProfileBudget_antitone (A tau : ℝ) (N : ℕ)
    {selected extended : ℕ → Finset ℚ}
    (hextend : ∀ j ∈ Finset.range (N + 1), selected j ⊆ extended j) :
    sourceHeatSelectionProfileBudget A tau N extended ≤
      sourceHeatSelectionProfileBudget A tau N selected := by
  unfold sourceHeatSelectionProfileBudget
  apply Finset.sum_le_sum
  intro j hj
  exact mul_le_mul_of_nonneg_left
    (sourceGroupedOmittedProfileBudget_antitone A (2 * j + 3) (hextend j hj))
    (abs_nonneg _)

/-- Nonnegative heat time gives a nonnegative sharp absolute Taylor budget. -/
theorem sourceHeatTaylorBudget_nonneg (A : ℝ) {tau : ℝ} (htau : 0 ≤ tau)
    (N : ℕ) : 0 ≤ sourceHeatTaylorBudget A tau N := by
  unfold sourceHeatTaylorBudget
  apply mul_nonneg (by positivity)
  exact integral_nonneg (fun _ => pow_nonneg (abs_nonneg _) _)

/-- Finite heat selection retains an exact signed complement at every degree. -/
theorem sourceHeatRationalPacketApproximation_eq_selected_add_complement
    (A tau : ℝ) (N : ℕ) (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) :
    sourceHeatRationalPacketApproximation A tau N =
      sourceHeatSelectionApproximation A tau N selected +
        sourceHeatSelectionComplement A tau N selected := by
  unfold sourceHeatRationalPacketApproximation sourceHeatSelectionApproximation
    sourceHeatSelectionComplement sourceHeatSelectionCoefficient
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  rw [sourceRationalTupleMoment_eq_selected_add_complement A (2 * j + 3)
    (selected j) (hselected j hj)]
  ring

/-- The finite heat approximation pays every omitted grouped source profile. -/
theorem sourceHeatRationalPacketApproximation_selected_error_le_profile_budget
    (A tau : ℝ) (N : ℕ) (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) :
    |sourceHeatRationalPacketApproximation A tau N -
      sourceHeatSelectionApproximation A tau N selected| ≤
      sourceHeatSelectionProfileBudget A tau N selected := by
  unfold sourceHeatRationalPacketApproximation sourceHeatSelectionApproximation
    sourceHeatSelectionProfileBudget sourceHeatSelectionCoefficient
  rw [← Finset.sum_sub_distrib]
  calc
    _ = |∑ j ∈ Finset.range (N + 1),
        ((-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial) *
          (sourceRationalTupleMoment A (2 * j + 3) -
            sourceGroupedPacketSum A (2 * j + 3) (selected j))| := by
      congr 1
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ ≤ ∑ j ∈ Finset.range (N + 1),
        |((-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial) *
          (sourceRationalTupleMoment A (2 * j + 3) -
            sourceGroupedPacketSum A (2 * j + 3) (selected j))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ _ := by
      apply Finset.sum_le_sum
      intro j hj
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left
        (sourceRationalTupleMoment_selected_error_le_profile_budget A (2 * j + 3)
          (selected j) (hselected j hj)) (abs_nonneg _)

/-- Selecting every strict interior key preserves the complete finite heat approximation. -/
theorem sourceHeatRationalPacketApproximation_eq_interior_selection {A : ℝ}
    (hA : 0 < A) (tau : ℝ) (N : ℕ) :
    sourceHeatRationalPacketApproximation A tau N =
      sourceHeatSelectionApproximation A tau N
        (fun j => sourceGroupedInteriorKeyInventory A (2 * j + 3)) := by
  unfold sourceHeatRationalPacketApproximation sourceHeatSelectionApproximation
    sourceHeatSelectionCoefficient
  simp_rw [sourceRationalTupleMoment_eq_interior_grouped_keys hA]

/-- The complete support-pruned finite heat selection has zero omitted profile cost. -/
theorem sourceHeatSelectionProfileBudget_interior_eq_zero {A : ℝ} (hA : 0 < A)
    (tau : ℝ) (N : ℕ) :
    sourceHeatSelectionProfileBudget A tau N
      (fun j => sourceGroupedInteriorKeyInventory A (2 * j + 3)) = 0 := by
  simp only [sourceHeatSelectionProfileBudget,
    sourceGroupedOmittedProfileBudget_interior_eq_zero hA, mul_zero, Finset.sum_const_zero]

/-- Actual signed heat selection pays the complete Taylor tail and grouped complement. -/
theorem sourceHeatRemainder_selected_error (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {tau : ℝ} (htau : 0 ≤ tau) (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) :
    |sourceHeatRemainder A tau - sourceHeatSelectionApproximation A tau N selected| ≤
      sourceHeatTaylorBudget A tau N + sourceHeatSelectionProfileBudget A tau N selected := by
  calc
    _ ≤ |sourceHeatRemainder A tau - sourceHeatRationalPacketApproximation A tau N| +
        |sourceHeatRationalPacketApproximation A tau N -
          sourceHeatSelectionApproximation A tau N selected| := abs_sub_le _ _ _
    _ ≤ _ := add_le_add (sourceHeatRemainder_rational_packet_error A hA N htau)
      (sourceHeatRationalPacketApproximation_selected_error_le_profile_budget
        A tau N selected hselected)

/-- One-sided consumer retains both paid error budgets and the complete signed selection. -/
theorem sourceHeatRemainder_le_selected_add_error (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {tau : ℝ} (htau : 0 ≤ tau) (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) :
    sourceHeatRemainder A tau ≤ sourceHeatSelectionApproximation A tau N selected +
      (sourceHeatTaylorBudget A tau N + sourceHeatSelectionProfileBudget A tau N selected) := by
  have h := (le_abs_self
    (sourceHeatRemainder A tau - sourceHeatSelectionApproximation A tau N selected)).trans
      (sourceHeatRemainder_selected_error A hA N htau selected hselected)
  linarith

end FormalResearch.RiemannHypothesis.SourceHeatPacketSelection
