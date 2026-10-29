-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectiveProbabilityLaw.Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProjectiveProbabilityLaw.Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Boundary/LimitKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Mathematics.StratifiedBoundary.Boundary.LimitState

/-!
# Contractive kernel on the projective boundary

Existence of a law on the formal limit is explicit certificate data.
Contraction then proves uniqueness; it is not used to fabricate existence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProjectiveProbabilityLaw.Variantc5d96094c54c458b48afe4f221adba1750751878f960422506e1d3f3cf3df1c9

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uLimitLaw

structure ProjectiveProbabilityLaw
    (State : Type*) where
  measurableEvent : Set State → Prop
  eventMass : Set State → ℝ≥0∞
  emptyMeasurable :
    measurableEvent ∅
  univMeasurable :
    measurableEvent Set.univ
  massEmpty :
    eventMass ∅ = 0
  massUniv :
    eventMass Set.univ = 1
  countableAdditivityOnMeasurableEvents : Prop
  countableAdditivityProof :
    countableAdditivityOnMeasurableEvents

structure CompatibleSchedule
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  component : Nat → Schedule
  compatible :
    ∀ stage,
      system.restrictSchedule
          (Nat.le_succ stage)
          (component (stage + 1)) =
        component stage

def ProjectiveBoundarySystem.defaultLimitSchedule
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) :
    CompatibleSchedule system where
  component := fun stage =>
    (system.cut stage).closure.dynamics.defaultSchedule
  compatible := fun stage =>
    system.defaultScheduleCompatible
      (Nat.le_succ stage)

inductive LimitContractionSource
  | directLimitWasserstein
  | projectivelyCompatibleCoupling
  deriving DecidableEq, Repr, Fintype

structure ProjectiveLimitKernel
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  Law : Type uLimitLaw
  wasserstein : Law → Law → ℝ≥0
  wassersteinSelf :
    ∀ law,
      wasserstein law law = 0
  wassersteinSymmetric :
    ∀ left right,
      wasserstein left right =
        wasserstein right left
  wassersteinTriangle :
    ∀ left middle right,
      wasserstein left right ≤
        wasserstein left middle +
          wasserstein middle right
  separated :
    ∀ {left right},
      wasserstein left right = 0 →
      left = right
  marginal :
    ∀ stage,
      Law → (system.cut stage).Law
  marginalDetermining :
    ∀ {left right},
      (∀ stage,
        marginal stage left =
          marginal stage right) →
      left = right
  boundaryStateNonempty :
    Nonempty (LimitBoundaryState system)
  realize :
    Law →
      ProjectiveProbabilityLaw
        (LimitBoundaryState system)
  push :
    CompatibleSchedule system →
      Law → Law
  invariantLaw : Law
  commonInvariant :
    ∀ schedule,
      push schedule invariantLaw =
        invariantLaw
  contractionSource :
    LimitContractionSource
  uniformlyContractive :
    ∀ schedule left right,
      wasserstein
          (push schedule left)
          (push schedule right) ≤
        system.uniformContraction *
          wasserstein left right
  marginalPushCompatible :
    ∀ schedule law stage,
      marginal stage (push schedule law) =
        (system.cut stage).closure.lawCarrier.push
          ((system.cut stage).closure.dynamics.kernel
            (schedule.component stage))
          (marginal stage law)
  invariantMarginal :
    ∀ stage,
      marginal stage invariantLaw =
      (system.cut stage).closure.dynamics.invariantLaw

def ProjectiveLimitKernel.invariantLawRealization
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) :
    ProjectiveProbabilityLaw
      (LimitBoundaryState system) :=
  kernel.realize kernel.invariantLaw

theorem projective_limit_kernel_contractive
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system)
    (schedule : CompatibleSchedule system)
    (left right : kernel.Law) :
    kernel.wasserstein
        (kernel.push schedule left)
        (kernel.push schedule right) ≤
      system.uniformContraction *
        kernel.wasserstein left right :=
  kernel.uniformlyContractive
    schedule left right

theorem projective_limit_invariant_law_unique
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system)
    (candidate : kernel.Law)
    (candidateFixed :
      ∀ schedule,
        kernel.push schedule candidate =
          candidate) :
    candidate = kernel.invariantLaw := by
  apply kernel.separated
  let schedule :=
    system.defaultLimitSchedule
  have contractionBound :=
    kernel.uniformlyContractive
      schedule candidate kernel.invariantLaw
  rw [candidateFixed, kernel.commonInvariant] at
    contractionBound
  have contractionReal :
      (system.uniformContraction : ℝ) < 1 := by
    exact_mod_cast system.uniformContraction_lt_one
  have distanceReal :
      (kernel.wasserstein
        candidate kernel.invariantLaw : ℝ) ≤
        (system.uniformContraction : ℝ) *
          (kernel.wasserstein
            candidate kernel.invariantLaw : ℝ) := by
    exact_mod_cast contractionBound
  have distanceNonnegative :
      0 ≤
        (kernel.wasserstein
          candidate kernel.invariantLaw : ℝ) :=
    NNReal.coe_nonneg _
  have distanceZero :
      (kernel.wasserstein
        candidate kernel.invariantLaw : ℝ) = 0 := by
    nlinarith
  exact_mod_cast distanceZero

end Mathematics.StratifiedBoundary.Boundary
