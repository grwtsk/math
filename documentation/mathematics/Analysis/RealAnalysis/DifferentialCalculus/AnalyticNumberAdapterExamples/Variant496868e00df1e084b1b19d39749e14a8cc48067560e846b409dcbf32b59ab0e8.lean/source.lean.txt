-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExampleRhSpineThroughBoundaryCalculus.Variant993ea6d35e78fd6366957a49ceb4c4f19ba374d4b4067766dd86e9985fcc5246","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"993ea6d35e78fd6366957a49ceb4c4f19ba374d4b4067766dd86e9985fcc5246","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ExampleRhSpineThroughBoundaryCalculus.Variant993ea6d35e78fd6366957a49ceb4c4f19ba374d4b4067766dd86e9985fcc5246","mathematical_subject":"Analysis.Calculus","original_sha256":"993ea6d35e78fd6366957a49ceb4c4f19ba374d4b4067766dd86e9985fcc5246","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/Presentation/AnalyticNumberAdapterExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.AnalyticNumberAdapter
import Presentation.SpineExamples

/-!
# Presentation adapter examples

This file is an architectural smoke test. It intentionally uses toy
propositions such as `True` to exercise routing and firewall statements. It
is not a Mathlib-backed analytic proof and is not imported by
`AnalyticNumberMathlib`.

It exercises the full route for all four spines:

  finite presentation syntax
      → spine realization certificate
      → analytic certificate
      → analytic authority token
      → analytic boundary calculus.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExampleRhSpineThroughBoundaryCalculus.Variant993ea6d35e78fd6366957a49ceb4c4f19ba374d4b4067766dd86e9985fcc5246

namespace AnalyticNumber
namespace PresentationAdapterExamples

open Presentation.SpineExamples

theorem example_rh_spine_through_boundary_calculus :
    exampleRHSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleRHSpinePresentation rfl)

theorem example_trace_formula_spine_through_boundary_calculus :
    exampleTraceFormulaSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleTraceFormulaSpinePresentation rfl)

theorem example_langlands_spine_through_boundary_calculus :
    exampleLanglandsSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate exampleLanglandsSpinePresentation rfl)

theorem example_prismatic_spine_through_boundary_calculus :
    examplePrismaticSpinePresentation.claimStatement :=
  PresentationAdapter.spine_realization_through_boundary_calculus
    (toyRealizationCertificate examplePrismaticSpinePresentation rfl)

/-- Raw toy presentations remain non-authority even with the adapter
imported. -/
theorem example_raw_presentations_still_not_authority :
    ¬ Presentation.SpinePresentationOwnsClaim exampleRHSpinePresentation ∧
      ¬ Presentation.SpinePresentationOwnsClaim
          examplePrismaticSpinePresentation :=
  ⟨PresentationAdapter.raw_spine_presentation_not_analytic_authority _,
    PresentationAdapter.raw_spine_presentation_not_analytic_authority _⟩

end PresentationAdapterExamples
end AnalyticNumber
