# APIEdition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee2ecdaa32d58d362b68a2b8018c988f27408f9b` · SHA-256 `01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.FrullaniIntegral
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic
open MeasureTheory Set Filter
open scoped Topology
#check Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
#check Integrable.mono'
#check ContinuousOn.aestronglyMeasurable
#check integrable_tsum
#check integrable_tsum_of_summable_integral_norm
#check MeasureTheory.integrable_tsum
#check Real.tendsto_exp_atBot
#check Real.tendsto_exp_neg_atTop_nhds_zero
#check Real.tendsto_exp_neg_atTop
#check HasSum.mul_left
#check HasSum.mul_right
#check hasSum_geometric_of_abs_lt_one
#check hasSum_geometric_of_norm_lt_one
#check integral_tsum_of_summable_integral_norm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6699f24efe704344ed8e0df12a3c01e2a074b713e4ad0f7e06cd8127d4bf4219 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/API/Variant01096e8bba19dc41545ca3211f9696a3ea582297613cf92ec160af4ce031f076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
