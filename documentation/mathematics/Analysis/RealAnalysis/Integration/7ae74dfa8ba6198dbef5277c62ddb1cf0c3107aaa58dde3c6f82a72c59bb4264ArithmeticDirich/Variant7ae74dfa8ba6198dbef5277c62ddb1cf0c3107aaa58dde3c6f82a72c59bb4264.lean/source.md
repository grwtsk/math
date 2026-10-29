# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264ArithmeticDirich.Variant7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1a99beb8b716fd465dabb2f6c0d33fdd6757621` · SHA-256 `7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace
import Mathlib.MeasureTheory.Integral.DominatedConvergence
open MeasureTheory Set
#check ENNReal.ofReal_tsum_of_nonneg
#check hasFiniteIntegral_iff_ofReal
#check MeasureTheory.Integrable.ofReal
#check integral_exp_mul_complex_Ioi
#check MeasureTheory.integral_re
#check lintegral_tsum
#check MeasureTheory.integral_sub
#check ENNReal.tsum_coe_ne_top_iff_summable
#check MeasureTheory.hasFiniteIntegral_iff_enorm
#check Real.enorm_eq_ofReal
#check L2.inner_self_eq_norm_sq
#check inner_self_eq_norm_sq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f34e5787ac22e369fe15e228a7f83b793b565c9b5a0daf4a5f3e567db94a486 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264ArithmeticDirich/Variant7ae74dfa8ba6198dbef5277c62ddb1cf0c3107aaa58dde3c6f82a72c59bb4264.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
