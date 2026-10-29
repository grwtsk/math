# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHFollowThrough.Variant73c463a5f3e98153ea651297f51b9c2046d39e9e21aa25c6d2fae8fcf518aa7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `095b116202eabf087f302eb4a7a63a1c466b9489` · SHA-256 `73c463a5f3e98153ea651297f51b9c2046d39e9e21aa25c6d2fae8fcf518aa7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.KQHArithmeticCompression
import FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates
import FormalResearch.RiemannHypothesis.KQHArithmeticRankCompletion
import FormalResearch.RiemannHypothesis.KQHBootstrap
import FormalResearch.RiemannHypothesis.KQHSourceBootstrap
import FormalResearch.RiemannHypothesis.KQHSourceCompression
import FormalResearch.RiemannHypothesis.KQHPoleExclusion
import FormalResearch.RiemannHypothesis.KQHPoleRelativeForm
import FormalResearch.RiemannHypothesis.KQHPoleNativeGuard
import FormalResearch.PositiveAtlas.KQHContactGeometry
import FormalResearch.PositiveAtlas.KQHContactNative

/-!
# KQH source comparisons and quantitative obstructions

grwtsk contributors supplied the originating research direction and evaluation.
OpenAI Codex supplied these supporting derivations and formalizations.
The actual uniform signed arithmetic cap remains an independent premise.
This aggregate exports no unconditional proof of EstimateObligation or RH.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe84be602219025c17f2d1b9fe468ce11c502eefa764db6016a779211f4f0688 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHFollowThrough/Variant73c463a5f3e98153ea651297f51b9c2046d39e9e21aa25c6d2fae8fcf518aa7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
