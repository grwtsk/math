# Source Actual Early Fractional Limit Audit2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a5e2cf38185b15c8e6da3fa06489e6fb3c1a31f` · SHA-256 `54903b926ae08f809585a1c5a2d00a36ee7a2640d02e3d61a3554e9d5f679dbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEarlyFractionalLimit

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.all true
set_option pp.maxSteps 1000000

#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integrable
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integral
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integral
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCriticalDeviation_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCriticalDeviation_abs_le
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyFloorDifference_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyFloorDifference_abs_le
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualHeadUnitErrorBudget
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualHeadUnitErrorBudget
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyBaseline_sub_unit_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyBaseline_sub_unit_abs_le
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyFractionalDensity_split
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyFractionalDensity_split
#check FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCutoff_sqrt_gap_bounds
#print axioms FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCutoff_sqrt_gap_bounds
set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integrable
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyUnitFloorDensity_integral
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCriticalDeviation_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyFloorDifference_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualHeadUnitErrorBudget
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualEarlyBaseline_sub_unit_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.earlyFractionalDensity_split
#print FormalResearch.RiemannHypothesis.SourceActualEarlyFractionalLimit.actualCutoff_sqrt_gap_bounds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc90065707639a3f2f580b429d04617fd5dd8567f2a7e8843c6b03e4d6d12d41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEarlyFractionalLimitAudit2/Variant54903b926ae08f809585a1c5a2d00a36ee7a2640d02e3d61a3554e9d5f679dbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
