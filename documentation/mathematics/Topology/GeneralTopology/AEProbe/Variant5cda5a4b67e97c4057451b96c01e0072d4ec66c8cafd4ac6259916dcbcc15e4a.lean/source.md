# Complete source: GRWTSK.Topology.GeneralTopology.AEProbe.Variant5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d2d224e51990fdcad26969943489806f80f8ab7` · SHA-256 `5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation
import Mathlib.Topology.DiscreteSubset
import Mathlib.MeasureTheory.Measure.Typeclasses.NullSingletonClass
open Set Filter MeasureTheory
#check IsDiscrete.countable
#check Set.Countable.preimage
#check Set.Countable.ae_notMem
#check AnalyticOnNhd.eqOn_zero_or_eventually_ne_zero_of_preconnected
#check Differentiable.analyticAt
#check Differentiable.analyticOnNhd
#check Filter.mem_codiscrete'
#check mem_codiscrete'
#check isDiscrete_of_codiscreteWithin
#check Complex.ofReal_injective
#check mul_left_injective₀
#check mul_right_injective₀
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d85730f28b7a7f720741387449c792b93198cb707cf9467d1655baf2a5d3342a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AEProbe/Variant5cda5a4b67e97c4057451b96c01e0072d4ec66c8cafd4ac6259916dcbcc15e4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
