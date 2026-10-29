-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.StateIncrement.Variant5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.StateIncrement.Variant5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-boundary-next-rate-ingestion/concurrent-native-recovery/bytes/5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e--SourceProjectionReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.CompensatedReadout
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule
import Mathlib.Analysis.Real.Sqrt

/-!
# Finite projection decomposition of the complete signed source readout

The exact telescope retains both the diagonal increment and its crossed interaction with the
earlier state. Projecting their combined readout onto the same orthogonal increment gives a
finite row-square consumer whose state-energy coefficient is the original Hilbert norm.
No uniform norm estimate for the arithmetic operator is assumed or proved.

The native specialization uses the existing complete `mangoldtInteraction`, the unchanged
`originalSourceState`, and its exact `mertensResidual` interpretation. The generic centered
consumer requires a supplied self-adjoint continuum operator with its scalar readout identified
explicitly. The concrete scalar compensation is defined from the independent continuum moment;
it agrees with the centered readout on the original unit source, without identifying its
intermediate projection states with those of the physical continuum translation integral.
This file constructs no such integral operator, source refinement, or uniform row-square witness.
In particular, the
actual uniform combined projection row inequality under
https://github.com/grwtsk/formal-research/issues/443 remains open.

Human direction and formation of the medium: grwtsk contributors. These proof implementations
were developed with OpenAI Codex; kernel checking remains distinct from repository review,
integration, and the open arithmetic estimate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.StateIncrement.Variant5f8af2d9b43ab81e2084bc279f2f5f2d4c8fc037f693242a541cc01dc4d0aa0e

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceProjectionReadout

open scoped InnerProductSpace BigOperators
open CompensatedReadout

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- The complete new-minus-old state, before any readout estimate. -/
def stateIncrement (u : ℕ → H) (j : ℕ) : H := u (j + 1) - u j

/-- A self-adjoint readout has one exact combined diagonal-and-cross increment. -/
theorem quadratic_difference_eq_combined [CompleteSpace H]
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (x y : H) :
    quadraticReadout K x - quadraticReadout K y = (⟪x - y, K (x + y)⟫_ℂ).re := by
  simp only [quadraticReadout, map_add, inner_sub_left, inner_add_right,
    Complex.sub_re, Complex.add_re]
  rw [real_cross_selfAdjoint K hK x y]
  ring

/-- The diagonal and both real cross contributions remain in the signed increment. -/
theorem quadratic_difference_eq_diagonal_cross [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (x y : H) :
    quadraticReadout K x - quadraticReadout K y =
      quadraticReadout K (x - y) + 2 * (⟪x - y, K y⟫_ℂ).re := by
  simp only [quadraticReadout, map_sub, inner_sub_left, inner_sub_right,
    Complex.sub_re]
  rw [real_cross_selfAdjoint K hK x y]
  ring

/-- An arbitrary finite state trajectory telescopes without dropping a cross term. -/
theorem quadratic_finite_telescope [CompleteSpace H]
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (u : ℕ → H) (n : ℕ) :
    quadraticReadout K (u n) - quadraticReadout K (u 0) =
      ∑ j ∈ Finset.range n, (quadraticReadout K (stateIncrement u j) +
        2 * (⟪stateIncrement u j, K (u j)⟫_ℂ).re) := by
  rw [← Finset.sum_range_sub (fun j ↦ quadraticReadout K (u j)) n]
  apply Finset.sum_congr rfl
  intro j hj
  exact quadratic_difference_eq_diagonal_cross K hK _ _

/-- The same finite telescope keeps each complete increment paired with its whole row. -/
theorem quadratic_finite_combined_telescope [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (u : ℕ → H) (n : ℕ) :
    quadraticReadout K (u n) - quadraticReadout K (u 0) =
      ∑ j ∈ Finset.range n, (⟪stateIncrement u j, K (u (j + 1) + u j)⟫_ℂ).re := by
  rw [← Finset.sum_range_sub (fun j ↦ quadraticReadout K (u j)) n]
  apply Finset.sum_congr rfl
  intro j hj
  exact quadratic_difference_eq_combined K hK _ _

/-- Finite Hilbert Cauchy–Schwarz controls the actual prescribed signed pairing. -/
theorem finite_inner_sum_abs_le {ι : Type*} (s : Finset ι) (d g : ι → H) :
    |∑ j ∈ s, (⟪d j, g j⟫_ℂ).re| ≤
      Real.sqrt (∑ j ∈ s, ‖d j‖ ^ 2) * Real.sqrt (∑ j ∈ s, ‖g j‖ ^ 2) := by
  calc
    _ ≤ ∑ j ∈ s, |(⟪d j, g j⟫_ℂ).re| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ s, ‖d j‖ * ‖g j‖ := by
      apply Finset.sum_le_sum
      intro j hj
      exact (Complex.abs_re_le_norm _).trans (norm_inner_le_norm _ _)
    _ ≤ _ := Real.sum_mul_le_sqrt_mul_sqrt s (fun j ↦ ‖d j‖) (fun j ↦ ‖g j‖)

/-- Explicit state and row square budgets are inputs, rather than inferred witnesses. -/
theorem finite_inner_sum_abs_le_of_square_bounds {ι : Type*} (s : Finset ι)
    (d g : ι → H) (E B : ℝ)
    (hE : (∑ j ∈ s, ‖d j‖ ^ 2) ≤ E)
    (hB : (∑ j ∈ s, ‖g j‖ ^ 2) ≤ B) :
    |∑ j ∈ s, (⟪d j, g j⟫_ℂ).re| ≤ Real.sqrt E * Real.sqrt B := by
  apply (finite_inner_sum_abs_le s d g).trans
  exact mul_le_mul (Real.sqrt_le_sqrt hE) (Real.sqrt_le_sqrt hB)
    (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)

section Projections

variable (V : ℕ → Submodule ℂ H) [∀ j, (V j).HasOrthogonalProjection]

/-- The current orthogonal fit of the unchanged state. -/
def projectedState (q : H) (j : ℕ) : H := (V j).starProjection q

/-- The genuine difference of consecutive orthogonal projections. -/
def projectionDifference (j : ℕ) : H →L[ℂ] H :=
  (V (j + 1)).starProjection - (V j).starProjection

/-- The diagonal and crossed readouts are projected together, with the full operator retained. -/
def combinedProjectionRow (K : H →L[ℂ] H) (q : H) (j : ℕ) : H :=
  projectionDifference V j (K (projectedState V q (j + 1) + projectedState V q j))

/-- Refitting in the larger subspace does not change the earlier orthogonal fit. -/
theorem smaller_projection_larger (hV : Monotone V) (q : H) (j : ℕ) :
    (V j).starProjection ((V (j + 1)).starProjection q) = (V j).starProjection q := by
  have h := DFunLike.congr_fun
    (Submodule.starProjection_comp_starProjection_of_le (hV (Nat.le_succ j))) q
  exact h

/-- A vector already in the earlier subspace is fixed by the later fit. -/
theorem larger_projection_smaller (hV : Monotone V) (q : H) (j : ℕ) :
    (V (j + 1)).starProjection ((V j).starProjection q) = (V j).starProjection q := by
  apply Submodule.starProjection_eq_self_iff.mpr
  exact hV (Nat.le_succ j) (Submodule.starProjection_apply_mem _ _)

/-- The new orthogonal state increment belongs to the projection difference's range. -/
theorem projection_difference_fixes_increment (hV : Monotone V) (q : H) (j : ℕ) :
    projectionDifference V j (stateIncrement (projectedState V q) j) =
      stateIncrement (projectedState V q) j := by
  have hprev : (V j).starProjection ((V j).starProjection q) = (V j).starProjection q :=
    Submodule.starProjection_eq_self_iff.mpr (Submodule.starProjection_apply_mem _ _)
  have hnext : (V (j + 1)).starProjection ((V (j + 1)).starProjection q) =
      (V (j + 1)).starProjection q :=
    Submodule.starProjection_eq_self_iff.mpr (Submodule.starProjection_apply_mem _ _)
  simp only [projectionDifference, stateIncrement, projectedState,
    sub_apply, map_sub, hprev, hnext,
    smaller_projection_larger V hV q j, larger_projection_smaller V hV q j, sub_self,
    sub_zero]

/-- Consecutive projection differences preserve the exact adjoint pairing. -/
theorem projection_difference_inner_symmetric (j : ℕ) (x y : H) :
    ⟪projectionDifference V j x, y⟫_ℂ = ⟪x, projectionDifference V j y⟫_ℂ := by
  simp only [projectionDifference, sub_apply, inner_sub_left,
    inner_sub_right, Submodule.inner_starProjection_left_eq_right]

/-- One nested orthogonal increment costs exactly its increase in squared fit norm. -/
theorem projected_increment_norm_sq (hV : Monotone V) (q : H) (j : ℕ) :
    ‖stateIncrement (projectedState V q) j‖ ^ 2 =
      ‖projectedState V q (j + 1)‖ ^ 2 - ‖projectedState V q j‖ ^ 2 := by
  have ho := (V j).starProjection_inner_eq_zero
    ((V (j + 1)).starProjection q) ((V j).starProjection q)
    (Submodule.starProjection_apply_mem _ _)
  rw [smaller_projection_larger V hV q j] at ho
  have hp := norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero
    (𝕜 := ℂ) ((V (j + 1)).starProjection q - (V j).starProjection q)
    ((V j).starProjection q) ho
  rw [sub_add_cancel] at hp
  change ‖(V (j + 1)).starProjection q - (V j).starProjection q‖ ^ 2 =
    ‖(V (j + 1)).starProjection q‖ ^ 2 - ‖(V j).starProjection q‖ ^ 2
  linarith

/-- The finite total increment energy is the exact terminal-minus-initial fit energy. -/
theorem projected_increment_energy_eq (hV : Monotone V) (q : H) (n : ℕ) :
    (∑ j ∈ Finset.range n, ‖stateIncrement (projectedState V q) j‖ ^ 2) =
      ‖projectedState V q n‖ ^ 2 - ‖projectedState V q 0‖ ^ 2 := by
  simp_rw [projected_increment_norm_sq V hV q]
  exact Finset.sum_range_sub (fun j : ℕ ↦ ‖projectedState V q j‖ ^ 2) n

/-- Orthogonal refinement has the unchanged state's norm as its actual energy budget. -/
theorem projected_increment_energy_le (hV : Monotone V) (q : H) (n : ℕ) :
    (∑ j ∈ Finset.range n, ‖stateIncrement (projectedState V q) j‖ ^ 2) ≤ ‖q‖ ^ 2 := by
  rw [projected_increment_energy_eq V hV q n]
  have hn := (V n).norm_starProjection_apply_le q
  have hs : ‖projectedState V q n‖ ^ 2 ≤ ‖q‖ ^ 2 :=
    (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2 hn
  linarith [sq_nonneg ‖projectedState V q 0‖]

/-- Projecting the whole row preserves its pairing with the actual state increment. -/
theorem combined_projection_row_inner (hV : Monotone V)
    (K : H →L[ℂ] H) (q : H) (j : ℕ) :
    ⟪stateIncrement (projectedState V q) j, combinedProjectionRow V K q j⟫_ℂ =
      ⟪stateIncrement (projectedState V q) j,
        K (projectedState V q (j + 1) + projectedState V q j)⟫_ℂ := by
  unfold combinedProjectionRow
  rw [← projection_difference_inner_symmetric V]
  rw [projection_difference_fixes_increment V hV]

/-- The finite projected readout is exactly the sum of its complete signed row pairings. -/
theorem projected_readout_combined_telescope [CompleteSpace H] (hV : Monotone V)
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H) (n : ℕ) :
    quadraticReadout K (projectedState V q n) - quadraticReadout K (projectedState V q 0) =
      ∑ j ∈ Finset.range n,
        (⟪stateIncrement (projectedState V q) j, combinedProjectionRow V K q j⟫_ℂ).re := by
  simp_rw [combined_projection_row_inner V hV]
  exact quadratic_finite_combined_telescope K hK _ n

/-- A supplied combined row-square estimate pays the entire finite readout change. -/
theorem projected_readout_abs_le_of_row_square [CompleteSpace H] (hV : Monotone V)
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H) (n : ℕ) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, ‖combinedProjectionRow V K q j‖ ^ 2) ≤ B) :
    |quadraticReadout K (projectedState V q n) -
      quadraticReadout K (projectedState V q 0)| ≤ ‖q‖ * Real.sqrt B := by
  rw [projected_readout_combined_telescope V hV K hK q n]
  have h := finite_inner_sum_abs_le_of_square_bounds (Finset.range n)
    (stateIncrement (projectedState V q)) (combinedProjectionRow V K q)
    (‖q‖ ^ 2) B (projected_increment_energy_le V hV q n) hB
  simpa only [Real.sqrt_sq (norm_nonneg _)] using h

/-- Exact source reconstruction and a zero initial fit expose the full conditional readout. -/
theorem full_readout_abs_le_of_projection_rows [CompleteSpace H] (hV : Monotone V)
    (hzero : V 0 = ⊥) (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H)
    (n : ℕ) (hq : q ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, ‖combinedProjectionRow V K q j‖ ^ 2) ≤ B) :
    |quadraticReadout K q| ≤ ‖q‖ * Real.sqrt B := by
  have hn : projectedState V q n = q := Submodule.starProjection_eq_self_iff.mpr hq
  have h0 : projectedState V q 0 = 0 := by simp [projectedState, hzero]
  have h := projected_readout_abs_le_of_row_square V hV K hK q n B hB
  simpa only [hn, h0, quadraticReadout, map_zero, inner_zero_left, Complex.zero_re,
    sub_zero] using h

end Projections

section NativeSource

open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

variable (V : ℕ → Submodule ℂ ComplexL2) [∀ j, (V j).HasOrthogonalProjection]

/-- Native specialization retains the complete literal Mangoldt inventory and initial fit. -/
theorem mertensResidual_eq_projection_telescope (hV : Monotone V)
    (A : ℝ) (hA : 1 ≤ A) (n : ℕ) (hq : originalSourceState A ∈ V n) :
    mertensResidual A =
      quadraticReadout (mangoldtInteraction A) (projectedState V (originalSourceState A) 0) +
        ∑ j ∈ Finset.range n,
          (⟪stateIncrement (projectedState V (originalSourceState A)) j,
            combinedProjectionRow V (mangoldtInteraction A) (originalSourceState A) j⟫_ℂ).re := by
  have hn : projectedState V (originalSourceState A) n = originalSourceState A :=
    Submodule.starProjection_eq_self_iff.mpr hq
  have ht := projected_readout_combined_telescope V hV (mangoldtInteraction A)
    (mangoldtInteraction_selfAdjoint A) (originalSourceState A) n
  rw [hn] at ht
  have hr := mertensResidual_eq_quadratic hA
  change mertensResidual A = quadraticReadout (mangoldtInteraction A) (originalSourceState A) at hr
  rw [hr]
  linarith

/-- A supplied row-square budget bounds the literal residual; no such budget is constructed. -/
theorem mertensResidual_abs_le_of_projection_rows (hV : Monotone V) (hzero : V 0 = ⊥)
    (A : ℝ) (hA : 1 ≤ A) (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (mangoldtInteraction A) (originalSourceState A) j‖ ^ 2) ≤ B) :
    |mertensResidual A| ≤ Real.sqrt B := by
  have h := full_readout_abs_le_of_projection_rows V hV hzero (mangoldtInteraction A)
    (mangoldtInteraction_selfAdjoint A) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul] at h
  simpa only [mertensResidual_eq_quadratic hA, quadraticReadout] using h

/-- Centering uses a supplied independent continuum anchor and keeps it in every full row. -/
theorem mertensResidual_centered_abs_le_of_projection_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (L : ComplexL2 →L[ℂ] ComplexL2) (hL : IsSelfAdjoint L)
    (hanchor : quadraticReadout L (originalSourceState A) = criticalContinuousMoment A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (mangoldtInteraction A - L) (originalSourceState A) j‖ ^ 2) ≤ B) :
    |mertensResidual A - criticalContinuousMoment A| ≤ Real.sqrt B := by
  have h := full_readout_abs_le_of_projection_rows V hV hzero (mangoldtInteraction A - L)
    ((mangoldtInteraction_selfAdjoint A).sub hL) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul,
    quadraticReadout_sub, hanchor] at h
  simpa only [mertensResidual_eq_quadratic hA, quadraticReadout] using h

/-- The existing continuum bound converts the explicitly assumed centered row estimate. -/
theorem mertensResidual_le_two_add_sqrt_of_centered_projection_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (L : ComplexL2 →L[ℂ] ComplexL2) (hL : IsSelfAdjoint L)
    (hanchor : quadraticReadout L (originalSourceState A) = criticalContinuousMoment A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (mangoldtInteraction A - L) (originalSourceState A) j‖ ^ 2) ≤ B) :
    mertensResidual A ≤ 2 + Real.sqrt B := by
  have h := (abs_le.mp (mertensResidual_centered_abs_le_of_projection_rows V hV hzero
    A hA L hL hanchor n hq B hB)).2
  have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  linarith

/-- Independent scalar readout compensation, not the continuum translation integral operator. -/
def scalarContinuumAnchor (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  (criticalContinuousMoment A : ℂ) • ContinuousLinearMap.id ℂ ComplexL2

/-- The independent real scalar compensation is a self-adjoint bounded operator. -/
theorem scalarContinuumAnchor_selfAdjoint (A : ℝ) : IsSelfAdjoint (scalarContinuumAnchor A) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
  intro x y
  change ⟪(criticalContinuousMoment A : ℂ) • x, y⟫_ℂ =
    ⟪x, (criticalContinuousMoment A : ℂ) • y⟫_ℂ
  simp only [inner_smul_left, inner_smul_right, Complex.conj_ofReal]

/-- Unit normalization identifies this scalar compensation on the original source only. -/
theorem scalarContinuumAnchor_source_readout (A : ℝ) (hA : 0 < A) :
    quadraticReadout (scalarContinuumAnchor A) (originalSourceState A) =
      criticalContinuousMoment A := by
  change (⟪originalSourceState A,
    (criticalContinuousMoment A : ℂ) • originalSourceState A⟫_ℂ).re = criticalContinuousMoment A
  rw [inner_smul_right, inner_self_eq_norm_sq_to_K, originalSourceState_norm hA]
  simp

/-- The complete prime operator retains the independently defined scalar compensation. -/
def scalarCompensatedPrimeOperator (A : ℝ) : ComplexL2 →L[ℂ] ComplexL2 :=
  mangoldtInteraction A - scalarContinuumAnchor A

/-- Scalar readout compensation preserves signed self-adjointness. -/
theorem scalarCompensatedPrimeOperator_selfAdjoint (A : ℝ) :
    IsSelfAdjoint (scalarCompensatedPrimeOperator A) :=
  (mangoldtInteraction_selfAdjoint A).sub (scalarContinuumAnchor_selfAdjoint A)

/-- Agreement with the centered arithmetic readout is on the unchanged source state.
This does not identify this operator on intermediate fits with a continuum translation integral. -/
theorem scalarCompensatedPrimeOperator_source_readout (A : ℝ) (hA : 1 ≤ A) :
    quadraticReadout (scalarCompensatedPrimeOperator A) (originalSourceState A) =
      mertensResidual A - criticalContinuousMoment A := by
  rw [scalarCompensatedPrimeOperator, quadraticReadout_sub,
    scalarContinuumAnchor_source_readout A (by linarith)]
  exact congrArg (fun z ↦ z - criticalContinuousMoment A)
    (mertensResidual_eq_quadratic hA).symm

/-- No continuum-operator witness is needed for this explicitly scalar-compensated consumer.
Its arithmetic row-square bound remains an input and is not supplied here. -/
theorem mertensResidual_le_two_add_sqrt_of_scalar_compensated_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (scalarCompensatedPrimeOperator A)
        (originalSourceState A) j‖ ^ 2) ≤ B) :
    mertensResidual A ≤ 2 + Real.sqrt B :=
  mertensResidual_le_two_add_sqrt_of_centered_projection_rows V hV hzero A hA
    (scalarContinuumAnchor A) (scalarContinuumAnchor_selfAdjoint A)
    (scalarContinuumAnchor_source_readout A (by linarith)) n hq B hB

end NativeSource

end FormalResearch.RiemannHypothesis.SourceProjectionReadout
