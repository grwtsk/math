# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PresentationAdapterExamples.Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b8a6e20fdca12502f38410ff526ddbdad6f35de` · SHA-256 `74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.PresentationAdapter
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca15c4a10cdbcb2e57972799a77358494ca581f262612a924c576d502c2055d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PresentationAdapterExamples/Variant74bd8e300c6f875e209122a49b5c77adaf5f4420c92a3e5c1cb67602ef553367.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
