# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NegativeDensitySourceExactStatements.Variant9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32cf79a8809536446783e164e7605508111175a2` · SHA-256 `9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace

set_option autoImplicit false

namespace NegativeDensityLaplaceExactStatements

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability
open FormalResearch.RiemannHypothesis.SourceComparison.NegativeDensityLaplace

noncomputable section

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1)) (s : ℂ) (hs : 0 ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (f A : ℂ)) (Ioi 1) :=
  laplace_integrable f hf s hs

example (f : ℝ → ℝ) (hf : IntegrableOn f (Ioi 1))
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ f A) (s : ℂ) (hs : 0 < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (f A : ℂ)) s :=
  laplace_analytic f hf hpos s hs

example (η A : ℝ) (s : ℂ) :
    Complex.exp (-(s - (η : ℂ)) * A) *
        ((Real.exp (-η * A) * negativeSource A : ℝ) : ℂ) =
      Complex.exp (-s * A) * (negativeSource A : ℂ) :=
  negative_tilt_eq η A s

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η ≤ s.re) :
    IntegrableOn (fun A : ℝ ↦ Complex.exp (-s * A) * (negativeSource A : ℂ)) (Ioi 1) :=
  negative_laplace_integrable η hη s hs

example (η : ℝ)
    (hη : IntegrableOn (fun A : ℝ ↦ Real.exp (-η * A) * negativeSource A) (Ioi 1))
    (s : ℂ) (hs : η < s.re) :
    AnalyticAt ℂ (fun z : ℂ ↦ ∫ A in Ioi (1 : ℝ),
      Complex.exp (-z * A) * (negativeSource A : ℂ)) s :=
  negative_laplace_analytic η hη s hs

end
end NegativeDensityLaplaceExactStatements
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=167babc7b194006b0f91f2aa3a9c2baa4b1dda448f44aa36d2008a220aade5e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NegativeDensitySourceExactStatements/Variant9168f097d2dd6d821341c87964564de1847ece7d41639a84e68124d0409a19c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
