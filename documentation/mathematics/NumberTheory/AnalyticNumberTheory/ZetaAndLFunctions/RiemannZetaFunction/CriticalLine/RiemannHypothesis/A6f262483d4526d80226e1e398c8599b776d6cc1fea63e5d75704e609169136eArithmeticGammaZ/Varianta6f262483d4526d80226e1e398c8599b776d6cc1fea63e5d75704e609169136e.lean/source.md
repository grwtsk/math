# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.A6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136eArithmeticGammaZ.Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f59d06f7bf1cb8140fc873b1d6d9ac055b15ee9d` · SHA-256 `a6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.FullQuadraticObstruction
import Zeta23.GammaFacts.Mu
import Mathlib.Analysis.Complex.ExponentialBounds
open FormalResearch.RiemannHypothesis.SourcePairing
open scoped BigOperators
#check Real.exp_one_lt_three
#check Real.one_half_lt_eulerMascheroniConstant
#check Real.pi_gt_three
#check Real.lt_log_iff_exp_lt
#check Finset.sum_range_sub
#check Finset.sum_range_sub'
#check Zeta23.MuFields.re_digamma_vertical
#check Zeta23.MuFields.summable_re_terms
#check le_of_tendsto
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24182feadd6f6674459cdea88c827405169819a389e3a8cded1bd5317279727a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136eArithmeticGammaZ/Varianta6f262483d4526d80226e1e398c8599b776d6cc1fea63e5d75704e609169136e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
