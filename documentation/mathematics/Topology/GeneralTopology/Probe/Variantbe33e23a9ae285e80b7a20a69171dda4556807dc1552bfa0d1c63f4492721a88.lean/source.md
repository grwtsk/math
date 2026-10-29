# Complete source: GRWTSK.Topology.GeneralTopology.Probe.Variantbe33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e4d6e517a5bea36486136e3dca4794a484f4ab7` · SHA-256 `be33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimeSquareTailWork
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
#check @Summable.sum_le_tsum
#check @SummationFilter.instNeBotUnconditional
#synth (SummationFilter.unconditional Nat.Primes).NeBot
example : (SummationFilter.unconditional Nat.Primes).NeBot := by
  constructor
  change (Filter.atTop : Filter (Finset Nat.Primes)).NeBot
  infer_instance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09061d9ff118542e65559dbc2ad6a1a8e8b48780b25cf1fe33f215c4309ac18c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Probe/Variantbe33e23a9ae285e80b7a20a69171dda4556807dc1552bfa0d1c63f4492721a88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
