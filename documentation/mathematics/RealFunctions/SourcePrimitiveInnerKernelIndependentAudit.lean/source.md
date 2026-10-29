# Source Primitive Inner Kernel Independent Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc7d5fe656260d7f4c130b405bc96fe825c6df60` · SHA-256 `b06c49da6a4240bb3768c32a814b0c7f9b71101c7c9c3542e21d1610428ec51b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimitiveInnerKernel
set_option linter.hashCommand false
namespace RH16PrimitiveInnerKernel
#check timeFirst
#print timeFirst
#print axioms timeFirst
#check innerPrimitive
#print innerPrimitive
#print axioms innerPrimitive
#check literalXiWeight_time_hasDerivAt
#print literalXiWeight_time_hasDerivAt
#print axioms literalXiWeight_time_hasDerivAt
#check timeFirst_hasDerivAt
#print timeFirst_hasDerivAt
#print axioms timeFirst_hasDerivAt
#check innerPrimitive_hasDerivAt
#print innerPrimitive_hasDerivAt
#print axioms innerPrimitive_hasDerivAt
#check actual_upper_traces
#print actual_upper_traces
#print axioms actual_upper_traces
#check literal_lower_traces
#print literal_lower_traces
#print axioms literal_lower_traces
#check inner_kernel_eq_actual_plain_derivative
#print inner_kernel_eq_actual_plain_derivative
#print axioms inner_kernel_eq_actual_plain_derivative
end RH16PrimitiveInnerKernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=068aa86ed826ec0042b8ff12440b6245ed5447be89da02d446ce811a7754e317 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePrimitiveInnerKernelIndependentAudit/Variantb06c49da6a4240bb3768c32a814b0c7f9b71101c7c9c3542e21d1610428ec51b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
