# Complete source: GRWTSK.Topology.GeneralTopology.FixedLaplaceBoundaryLiteralSnippet.Variantf02c05aee969e9836b2af48f1d618b628b4463a901373a06cfadb1710e796ca5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `880a706178fde5ae9e6aa461ff64971e4d3ae9a3` · SHA-256 `f02c05aee969e9836b2af48f1d618b628b4463a901373a06cfadb1710e796ca5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace FixedLaplaceBoundaryLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedLaplaceContinuation MobiusSourceFilterQuotient
open FixedLaplaceBoundaryScratch
noncomputable section
example : Continuous V := V_continuous
example : ContinuousOn actualLaplace {z : ℂ | 0 ≤ z.re} :=
  actualLaplace_continuousOn_closed
example (z : ℂ) (hz : z ≠ 1 / 2) :
    ContinuousAt (fun w : ℂ => W w * riemannZeta (1 / 2 + w)) z :=
  sourceProduct_continuousAt z hz
example (z : ℂ) (hz : 0 ≤ z.re) (hzp : z ≠ 1 / 2) :
    actualLaplace z = W z * riemannZeta (1 / 2 + z) :=
  actualLaplace_eq_product_closed z hz hzp
example (t : ℝ) :
    (∫ u : ℝ in Ioi 0, (FixedSourceKernel.fixedKernel u : ℂ) *
      Complex.exp ((-((t : ℂ) * Complex.I)) * (u : ℂ))) =
      W ((t : ℂ) * Complex.I) * riemannZeta (1 / 2 + (t : ℂ) * Complex.I) :=
  actualLaplace_boundary t
end
end FixedLaplaceBoundaryLiteral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36239c0b89c5849782ae5ba3c50fc50d7fe697823be7017fe5e05b08b41d4c46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FixedLaplaceBoundaryLiteralSnippet/Variantf02c05aee969e9836b2af48f1d618b628b4463a901373a06cfadb1710e796ca5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
