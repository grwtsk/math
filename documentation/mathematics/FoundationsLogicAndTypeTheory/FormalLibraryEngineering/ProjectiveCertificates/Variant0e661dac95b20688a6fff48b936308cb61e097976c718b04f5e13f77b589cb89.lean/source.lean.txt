-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectLimitWassersteinCertificate.Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DirectLimitWassersteinCertificate.Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b","mathematical_subject":"Foundations.Unclassified","original_sha256":"f20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Boundary/ProjectiveCertificates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Projective coupling and invariant-law certificates

Finite marginal contraction does not manufacture a contraction on the
projective law.  A common coupling can prove that bridge.  Invariant-law
existence, marginal compatibility, and support are recorded independently.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectLimitWassersteinCertificate.Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uLimitLaw uCoupling

structure DirectLimitWassersteinCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) : Prop where
  sourceMatches :
    kernel.contractionSource =
      .directLimitWasserstein
  contractionIsCertifiedDirectly :
    ∀ schedule left right,
      kernel.wasserstein
          (kernel.push schedule left)
          (kernel.push schedule right) ≤
        system.uniformContraction *
          kernel.wasserstein left right

structure ProjectiveContractiveCoupling
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) where
  sourceMatches :
    kernel.contractionSource =
      .projectivelyCompatibleCoupling
  Coupling :
    kernel.Law → kernel.Law → Type uCoupling
  choose :
    ∀ left right,
      Coupling left right
  expectedCost :
    ∀ {left right},
      Coupling left right → ℝ≥0
  realizesMarginals : Prop
  marginalProof :
    realizesMarginals
  initialCostBound :
    ∀ left right,
      expectedCost (choose left right) ≤
        kernel.wasserstein left right
  pushedCoupling :
    ∀ schedule {left right},
      Coupling left right →
        Coupling
          (kernel.push schedule left)
          (kernel.push schedule right)
  pushedCostContracts :
    ∀ schedule {left right}
      (coupling : Coupling left right),
      expectedCost
          (pushedCoupling schedule coupling) ≤
        system.uniformContraction *
          expectedCost coupling
  couplingBoundsWasserstein :
    ∀ schedule left right,
      kernel.wasserstein
          (kernel.push schedule left)
          (kernel.push schedule right) ≤
        expectedCost
          (pushedCoupling schedule
            (choose left right))

theorem projective_coupling_derives_contraction
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
    (certificate :
      ProjectiveContractiveCoupling
        (uCoupling := uCoupling) kernel)
    (schedule : CompatibleSchedule system)
    (left right : kernel.Law) :
    kernel.wasserstein
        (kernel.push schedule left)
        (kernel.push schedule right) ≤
      system.uniformContraction *
        kernel.wasserstein left right :=
  le_trans
    (certificate.couplingBoundsWasserstein
      schedule left right)
    (le_trans
      (certificate.pushedCostContracts
        schedule
        (certificate.choose left right))
      (mul_le_mul_left'
        (certificate.initialCostBound left right)
        system.uniformContraction))

structure ProjectiveInvariantLawCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) where
  finiteLaw :
    ∀ stage,
      (system.cut stage).Law
  finiteLawIsInvariant :
    ∀ stage,
      finiteLaw stage =
        (system.cut stage).closure.dynamics.invariantLaw
  marginalCompatible :
    ∀ {high low}
      (low_le : low ≤ high),
      system.projectLaw low_le (finiteLaw high) =
        finiteLaw low
  limitLaw : kernel.Law
  limitLaw_eq_invariant :
    limitLaw = kernel.invariantLaw
  limitMarginal :
    ∀ stage,
      kernel.marginal stage limitLaw =
        finiteLaw stage
  supportOnCompatibleBoundaryStates : Prop
  supportProof :
    supportOnCompatibleBoundaryStates

end Mathematics.StratifiedBoundary.Boundary
