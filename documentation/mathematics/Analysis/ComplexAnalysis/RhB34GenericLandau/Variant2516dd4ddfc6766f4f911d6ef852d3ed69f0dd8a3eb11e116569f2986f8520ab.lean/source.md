# Complete source: GRWTSK.Analysis.ComplexAnalysis.RhB34GenericLandau.Variant2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `464a968b60d707ecb31628f59396a470ae0282fe` · SHA-256 `2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Laplace.Continuation

#print axioms FormalResearch.MathematicalTooling.Laplace.Positivity.not_analyticAt_laplace_of_finite_abscissa
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.integrable_positive_of_continuation
#print axioms FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation

example
    {Ω : Type*} [MeasurableSpace Ω] {μ : Measure Ω} {X : Ω → ℝ}
    (hXm : AEMeasurable X μ)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hconv : ∀ t : ℝ, 1 < t →
      Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hreal : ∀ t : ℝ, 0 < t → AnalyticAt ℂ F (t : ℂ))
    (hinit : ∀ s : ℂ, 1 < s.re →
      F s =
        FormalResearch.MathematicalTooling.Laplace.Continuation.transform X μ s)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt F s :=
  FormalResearch.MathematicalTooling.Laplace.Continuation.order_nonneg_of_continuation
    hXm hX hconv F hF hreal hinit s hs
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc18672c2bc94f59cab94ff437ea5751a554581780784d408ed4ecd78225cfe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/RhB34GenericLandau/Variant2516dd4ddfc6766f4f911d6ef852d3ed69f0dd8a3eb11e116569f2986f8520ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
