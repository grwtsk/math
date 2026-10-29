-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ProjectiveAutomorphismSystem.Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.ProjectiveAutomorphismSystem.Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"b15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Symmetry/LimitAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitKernel
import Mathematics.StratifiedBoundary.Symmetry.CutAction

/-!
# Compatible automorphisms at a projective limit

The limit action is supplied through compatible finite actions.  Kernel
equivariance makes the transformed invariant law fixed; contraction then
proves that it is the same law.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ProjectiveAutomorphismSystem.Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uLimitLaw

structure ProjectiveAutomorphismSystem
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  reduce :
    ∀ {high low},
      low ≤ high →
      (system.cut high).Automorphism →
      (system.cut low).Automorphism
  reduceIdentity :
    ∀ {high low}
      (low_le : low ≤ high),
      reduce low_le 1 = 1
  reduceMultiplication :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      reduce low_le (left * right) =
        reduce low_le left *
          reduce low_le right
  reduce_refl :
    ∀ stage automorphism,
      reduce (le_refl stage) automorphism =
        automorphism
  reduce_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      automorphism,
      reduce low_le
          (reduce middle_le automorphism) =
        reduce
          (low_le.trans middle_le)
          automorphism
  stateProjectionEquivariant :
    ∀ {high low}
      (low_le : low ≤ high)
      automorphism state,
      system.projectState low_le
          ((system.cut high).closure.crossedProduct.action.act
            automorphism state) =
        (system.cut low).closure.crossedProduct.action.act
          (reduce low_le automorphism)
          (system.projectState low_le state)
  lawProjectionEquivariant :
    ∀ {high low}
      (low_le : low ≤ high)
      automorphism law,
      system.projectLaw low_le
          ((system.cut high).cutEquivariance.lawAction
            automorphism law) =
        (system.cut low).cutEquivariance.lawAction
          (reduce low_le automorphism)
          (system.projectLaw low_le law)

structure CompatibleLimitAutomorphism
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (symmetry :
      ProjectiveAutomorphismSystem system) where
  component :
    ∀ stage,
      (system.cut stage).Automorphism
  compatible :
    ∀ stage,
      symmetry.reduce
          (Nat.le_succ stage)
          (component (stage + 1)) =
        component stage

structure LimitAutomorphismAction
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
    (symmetry :
      ProjectiveAutomorphismSystem system) where
  lawAction :
    CompatibleLimitAutomorphism symmetry →
      kernel.Law → kernel.Law
  wassersteinInvariant :
    ∀ automorphism left right,
      kernel.wasserstein
          (lawAction automorphism left)
          (lawAction automorphism right) =
        kernel.wasserstein left right
  marginalEquivariant :
    ∀ automorphism law stage,
      kernel.marginal stage
          (lawAction automorphism law) =
        (system.cut stage).cutEquivariance.lawAction
          (automorphism.component stage)
          (kernel.marginal stage law)
  kernelEquivariant :
    ∀ automorphism schedule law,
      lawAction automorphism
          (kernel.push schedule law) =
        kernel.push schedule
          (lawAction automorphism law)

theorem limit_automorphism_preserves_boundary_law
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system}
    {symmetry :
      ProjectiveAutomorphismSystem system}
    (action :
      LimitAutomorphismAction kernel symmetry)
    (automorphism :
      CompatibleLimitAutomorphism symmetry) :
    action.lawAction
        automorphism kernel.invariantLaw =
      kernel.invariantLaw := by
  apply kernel.projective_limit_invariant_law_unique
  intro schedule
  rw [← action.kernelEquivariant]
  rw [kernel.commonInvariant]

end Mathematics.StratifiedBoundary.Symmetry
