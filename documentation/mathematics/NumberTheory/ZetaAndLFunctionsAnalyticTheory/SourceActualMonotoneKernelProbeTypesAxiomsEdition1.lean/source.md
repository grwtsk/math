# Source Actual Monotone Kernel Probe Types Axioms Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbfafeb62b83149fe7f3474a77d555d8de16b812` · SHA-256 `3b905f7dab48968283202a669534a2ffd6f966f16bb747b1f9efe1877db1f189`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualMonotoneKernelProbe
set_option autoImplicit false
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.proofs true
set_option pp.maxSteps 100000000
set_option pp.rawOnError false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000

#check FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.syntheticRelativeProbe
#print axioms FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.syntheticRelativeProbe

#check FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout
#print axioms FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout

#check FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_intervalIntegrable

#check FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_eq
#print axioms FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_eq

#check FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_normalized_tendsto
#print axioms FormalResearch.RiemannHypothesis.SourceActualMonotoneKernelProbe.actualKernelProbeReadout_normalized_tendsto
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5b6606e7d14cf3d6f6b3a5dd05cd2069efe83fdc6d30d13f921f01e8c6fabf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeTypesAxioms/Variant3b905f7dab48968283202a669534a2ffd6f966f16bb747b1f9efe1877db1f189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
