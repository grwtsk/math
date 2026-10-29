# Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cd53738d1b0086139807316a1df4754ec91f1ee` · SHA-256 `772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Topology.Instances.ENNReal.Lemmas
open MeasureTheory Set Filter
open scoped Topology NNReal
#check NNReal.continuous_coe
#check NNReal.measurable_coe
#check continuous_subtype_val
#check measurable_subtype_coe
#check self_mem_nhdsWithin
#check eventually_mem_nhdsWithin
#check nhdsWithin_le_nhds
#check Integrable.mono'
#check integral_mono
#check integral_nonneg
#check integral_const_mul
#check Measurable.div
#check Continuous.div
#check Set.indicator_of_mem
#check Set.indicator_of_notMem
#check tendsto_nhdsWithin_of_tendsto_nhds
#check Filter.Tendsto.congr'
#check integral_indicator_one
#check Measure.real_singleton
#check le_div_iff₀
#check div_le_one
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a526f47d470f4f4d1a45eaff53c677f5e588f6ca5362e723046d187d7c7a3117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Check/Variant772bc4f005a59601de46c3131d5342a16bf534d86c2ec4f18a05b1c39a25f218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
