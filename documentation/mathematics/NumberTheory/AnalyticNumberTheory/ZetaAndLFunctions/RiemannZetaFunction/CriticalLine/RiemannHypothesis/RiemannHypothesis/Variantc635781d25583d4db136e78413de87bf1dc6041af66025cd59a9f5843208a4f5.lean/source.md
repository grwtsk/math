# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannHypothesis.Variantc635781d25583d4db136e78413de87bf1dc6041af66025cd59a9f5843208a4f5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c6a5a7f53ad6a88d7f00718d9b5eb850252f9a0` · SHA-256 `c635781d25583d4db136e78413de87bf1dc6041af66025cd59a9f5843208a4f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Defect
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import FormalResearch.RiemannHypothesis.TargetComparator
import FormalResearch.RiemannHypothesis.InferenceGuards
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.RiemannHypothesis.Laplace.Algebra
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.RiemannHypothesis.Landau.Correction
import FormalResearch.RiemannHypothesis.Landau.Bridge

/-!
# Riemann Hypothesis

Exact target comparisons, zero symmetries, equivalent formulations, and scoped
inference guards. No theorem asserting the Riemann Hypothesis is supplied.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40d11dc7f00f1331e603c77abbdcd9664ff535a7647d8c8f2ade9dfa1a15fb89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesis/Variantc635781d25583d4db136e78413de87bf1dc6041af66025cd59a9f5843208a4f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
