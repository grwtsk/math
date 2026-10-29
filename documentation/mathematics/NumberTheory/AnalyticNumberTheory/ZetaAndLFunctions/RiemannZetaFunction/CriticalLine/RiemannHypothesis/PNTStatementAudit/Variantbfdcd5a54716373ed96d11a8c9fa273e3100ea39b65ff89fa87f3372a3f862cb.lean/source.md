# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PNTStatementAudit.Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d02e2bec232b81cf7dd943b4a4704939064e8da9` · SHA-256 `bfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

open Filter Asymptotics

example : ∃ c > 0,
    (Chebyshev.psi - id) =O[Filter.atTop]
      fun (x : ℝ) ↦ x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) :=
  _root_.MediumPNT

#check @MediumPNT
#print axioms MediumPNT
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7aca1332c35b38da63166ce02db760679699374096619c3564fc828a6d5ee952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PNTStatementAudit/Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
