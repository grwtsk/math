# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteLatticeArithmetic.Variant39376515aa0f49f315fc80a01e5ae9e4ee11d9d8d6dcf096ad0617f2a0236763

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b8ae63869389fc21793018894da2e7abd74ce89` · SHA-256 `39376515aa0f49f315fc80a01e5ae9e4ee11d9d8d6dcf096ad0617f2a0236763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.FiniteLatticeArithmetic.GraphCriterion
import FormalResearch.FiniteLatticeArithmetic.DivisorRepresentation
import FormalResearch.FiniteLatticeArithmetic.CyclicGraphWitness
import FormalResearch.FiniteLatticeArithmetic.DivisorSourceBridge
import FormalResearch.FiniteLatticeArithmetic.DivisorFixtures
import FormalResearch.FiniteLatticeArithmetic.PerfectImageIntersection
import FormalResearch.PositiveAtlas.FeshbachEquationIdeal
import FormalResearch.PositiveAtlas.FeshbachInertia
import FormalResearch.PositiveAtlas.FiniteHeightMaximalDefect
import FormalResearch.PositiveAtlas.QuadraticDefect
import FormalResearch.PositiveAtlas.QuantitativeGapIteration
import FormalResearch.PositiveAtlas.QuantitativeGapMetric
import FormalResearch.PositiveAtlas.QuantitativeGapSchur
import FormalResearch.PositiveAtlas.QuantitativeGapSourceMetric
import FormalResearch.PositiveAtlas.QuantitativeGapSourceSchur
import FormalResearch.PositiveAtlas.QuantitativeGapSourceCertificate
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeArithmetic
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram

/-!
# Finite lattice arithmetic and quantitative transport

Native draft results under the repository pins. Reviewed historical Vaughan
adapters are replayed separately and are not silently imported into this root.
The uniform RH witness and the physical Yang--Mills realization remain open.

Direction, theorem selection and evaluation: grwtsk contributors.
Construction and source-scoped independent review: OpenAI Codex.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b43dd02e60df21d5be9cc38eaeee6a840093bde89ff624940accfb9373a82099 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteLatticeArithmetic/Variant39376515aa0f49f315fc80a01e5ae9e4ee11d9d8d6dcf096ad0617f2a0236763.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
