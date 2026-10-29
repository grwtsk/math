import FormalResearch.RiemannHypothesis.SourceReflectionDuality
import FormalResearch.RiemannHypothesis.SourceHankelLocalization
import FormalResearch.RiemannHypothesis.SourceDualSupport

/-!
# Conjugated spatial localization on the actual complex L² space

The original spatial mask is literal multiplication by a measurable indicator.
Its Fourier-sign conjugate is a new operator: no commutation with the old mask
is presumed. Both the states and their signed interaction transport together.
The overlap interval is allowed to be empty; no arithmetic estimate follows.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDualLocalization

open MeasureTheory Set
open scoped InnerProductSpace
open SourceReflectionDuality SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- Literal measurable-set multiplication on complex Lebesgue L². -/
def spatialMask (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) : ComplexL2 :=
  ((Lp.memLp f).indicator hs).toLp (s.indicator f)

/-- The mask has exactly the indicator representative, including the zero extension. -/
theorem spatialMask_coe_ae (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    spatialMask s hs f =ᵐ[volume] s.indicator f :=
  ((Lp.memLp f).indicator hs).coeFn_toLp

/-- The spatial mask is idempotent on its actual almost-everywhere classes. -/
theorem spatialMask_idempotent (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    spatialMask s hs (spatialMask s hs f) = spatialMask s hs f := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae s hs (spatialMask s hs f),
    spatialMask_coe_ae s hs f] with x h1 h2
  rw [h1]
  by_cases hx : x ∈ s
  · rw [indicator_of_mem hx]
  · rw [indicator_of_notMem hx, h2, indicator_of_notMem hx]

/-- Signed states retain their signs under literal spatial restriction. -/
theorem spatialMask_neg (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    spatialMask s hs (-f) = -spatialMask s hs f := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae s hs (-f), spatialMask_coe_ae s hs f,
    Lp.coeFn_neg (spatialMask s hs f), Lp.coeFn_neg f] with x h1 h2 h3 h4
  rw [h1, h3]
  simp only [Pi.neg_apply]
  rw [h2]
  by_cases hx : x ∈ s
  · rw [indicator_of_mem hx, indicator_of_mem hx, h4]
    rfl
  · rw [indicator_of_notMem hx, indicator_of_notMem hx, neg_zero]

/-- Empty overlap produces the zero state without an endpoint hypothesis. -/
theorem spatialMask_empty (f : ComplexL2) : spatialMask ∅ MeasurableSet.empty f = 0 := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae ∅ MeasurableSet.empty f,
    Lp.coeFn_zero (ℂ) (2 : ENNReal) (volume : Measure ℝ)] with x hf hz
  rw [hf, indicator_empty, hz]
  rfl

/-- Spatial restriction is a contraction for the actual L² norm. -/
theorem spatialMask_norm_le (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    ‖spatialMask s hs f‖ ≤ ‖f‖ := by
  rw [spatialMask, Lp.norm_toLp, Lp.norm_def]
  exact ENNReal.toReal_mono (Lp.memLp f).2.ne (eLpNorm_indicator_le f)

/-- A compact measurable mask has a compactly supported representative. -/
theorem indicator_hasCompactSupport (s : Set ℝ) (hc : IsCompact s) (f : ℝ → ℂ) :
    HasCompactSupport (s.indicator f) := by
  apply hc.of_isClosed_subset (isClosed_tsupport _)
  apply closure_minimal _ hc.isClosed
  intro x hx
  by_contra hxs
  exact hx (indicator_of_notMem hxs f)

/-- The original literal source is fixed by its original compact spatial mask. -/
theorem originalSource_spatialMask (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume] fun x =>
      (normalizedTest explicitSecondDerivative A x : ℂ)) :
    spatialMask (Icc (-A) A) measurableSet_Icc f = f := by
  apply Lp.ext
  filter_upwards [spatialMask_coe_ae (Icc (-A) A) measurableSet_Icc f, hf] with x hm hq
  rw [hm]
  by_cases hx : x ∈ Icc (-A) A
  · exact indicator_of_mem hx f
  · rw [indicator_of_notMem hx f, hq]
    have hab : A ≤ |x| := by
      have hx' : x < -A ∨ A < x := by simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases hx' with hl | hr
      · have := neg_le_abs x; linarith
      · exact hr.le.trans (le_abs_self x)
    rw [normalizedTest_zero_of_le_abs A x (by linarith) hab]
    rfl

/-- Actual-source hostile fixture: the original compact mask cannot commute with T. -/
theorem originalSource_mask_not_commute (A : ℝ) (hA : 1 ≤ A) (f : ComplexL2)
    (hf : (f : ℝ → ℂ) =ᵐ[volume] fun x =>
      (normalizedTest explicitSecondDerivative A x : ℂ)) :
    spatialMask (Icc (-A) A) measurableSet_Icc (angularSignDuality f) ≠
      angularSignDuality (spatialMask (Icc (-A) A) measurableSet_Icc f) := by
  intro he
  apply SourceDualSupport.angular_dual_no_compact_representative A hA f hf
  refine ⟨(Icc (-A) A).indicator (angularSignDuality f),
    indicator_hasCompactSupport _ isCompact_Icc _, ?_⟩
  have hm : spatialMask (Icc (-A) A) measurableSet_Icc (angularSignDuality f) =
      angularSignDuality f := he.trans (congrArg angularSignDuality
        (originalSource_spatialMask A hA f hf))
  simpa only [hm] using spatialMask_coe_ae (Icc (-A) A) measurableSet_Icc (angularSignDuality f)

/-- The transported mask is defined independently as T P T. -/
def dualMask (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) : ComplexL2 :=
  angularSignDuality (spatialMask s hs (angularSignDuality f))

/-- Applying the transported mask to T f is exactly T(P f). -/
theorem dualMask_dual (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    dualMask s hs (angularSignDuality f) = angularSignDuality (spatialMask s hs f) := by
  unfold dualMask
  rw [angular_duality_involutive]

/-- The reflected right state carries its minus sign through localization. -/
theorem dualMask_neg_dual (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    dualMask s hs (-angularSignDuality f) = -angularSignDuality (spatialMask s hs f) := by
  simp only [dualMask, map_neg, angular_duality_involutive, spatialMask_neg]

/-- Unitary conjugation retains idempotence, without a spatial commutation premise. -/
theorem dualMask_idempotent (s : Set ℝ) (hs : MeasurableSet s) (f : ComplexL2) :
    dualMask s hs (dualMask s hs f) = dualMask s hs f := by
  unfold dualMask
  rw [angular_duality_involutive, spatialMask_idempotent]

/-- Both transported localized states retain the original signed pairing reversal. -/
theorem localized_dual_pairing (s : Set ℝ) (hs : MeasurableSet s) (f g : ComplexL2) :
    ⟪dualMask s hs (angularSignDuality f),
      dualMask s hs (-angularSignDuality g)⟫_ℂ =
      -⟪spatialMask s hs f, spatialMask s hs g⟫_ℂ := by
  rw [dualMask_dual, dualMask_neg_dual, inner_neg_right]
  rw [angular_stationary_inner_dual]

/-- The exact original source-overlap mask, including reversed-endpoint intervals. -/
def overlapMask (A : ℝ) (B : ℕ) (f : ComplexL2) : ComplexL2 :=
  spatialMask (SourceHankelLocalization.overlapWindow A B)
    (SourceHankelLocalization.overlapWindow_measurable A B) f

/-- Its transported counterpart is T P T, rather than the old interval indicator. -/
def dualOverlapMask (A : ℝ) (B : ℕ) (f : ComplexL2) : ComplexL2 :=
  dualMask (SourceHankelLocalization.overlapWindow A B)
    (SourceHankelLocalization.overlapWindow_measurable A B) f

/-- The actual overlap state transports through the conjugated operator. -/
theorem dualOverlapMask_dual (A : ℝ) (B : ℕ) (f : ComplexL2) :
    dualOverlapMask A B (angularSignDuality f) = angularSignDuality (overlapMask A B f) :=
  dualMask_dual _ _ _

/-- The complete localized signed interaction reverses, with no absolute envelope. -/
theorem overlap_dual_pairing (A : ℝ) (B : ℕ) (f g : ComplexL2) :
    ⟪dualOverlapMask A B (angularSignDuality f),
      dualOverlapMask A B (-angularSignDuality g)⟫_ℂ =
      -⟪overlapMask A B f, overlapMask A B g⟫_ℂ :=
  localized_dual_pairing _ _ _ _

end
end FormalResearch.RiemannHypothesis.SourceDualLocalization
