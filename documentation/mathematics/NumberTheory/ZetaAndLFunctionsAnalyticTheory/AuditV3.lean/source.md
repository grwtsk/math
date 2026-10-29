# Audit V3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b29c8222cebb090fb38afdc77218af3691c7b921` · SHA-256 `8ee5c6448dbebe55b733699d02babd8bf4d216acff3e723d1c3d399c0500eb2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Cycle14PhaseMassRegent

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC

#check @criticalPrimeTest_sub_one_eq_phase_prefix
#print axioms criticalPrimeTest_sub_one_eq_phase_prefix
#check @positive_phase_prefix_le_mass
#print axioms positive_phase_prefix_le_mass
#check @positiveMass_ge_criticalPrimeTest_sub_one
#print axioms positiveMass_ge_criticalPrimeTest_sub_one
#check @criticalPrimeTest_early_point_ge
#print axioms criticalPrimeTest_early_point_ge
#check @positiveMass_ge_early_exponential
#print axioms positiveMass_ge_early_exponential
#check @negativeMass_ge_early_exponential
#print axioms negativeMass_ge_early_exponential
#check @criticalPrimeTest_variation_ge_early_exponential
#print axioms criticalPrimeTest_variation_ge_early_exponential
#check @pairedTailTest_variation_ge_early_exponential
#print axioms pairedTailTest_variation_ge_early_exponential
#check @positiveMass_ge_linear
#print axioms positiveMass_ge_linear
#check @positiveMass_not_eventually_bounded
#print axioms positiveMass_not_eventually_bounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b172f3f5fb40df1f208dae04fd0f6110a80b3fcb0691b0a9982c2347566d0396 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AuditV3/Variant8ee5c6448dbebe55b733699d02babd8bf4d216acff3e723d1c3d399c0500eb2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
