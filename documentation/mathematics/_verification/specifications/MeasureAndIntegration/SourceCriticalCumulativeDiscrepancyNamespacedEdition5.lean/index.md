# Verification target: Source Critical Cumulative Discrepancy Namespaced Edition5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e436b8fd12a98834e52a5d38bca816c941a788b0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant94533bb5efdb53868e0a92ec4d69fb33033392eb007086afceddd64902f616f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e436b8fd12a98834e52a5d38bca816c941a788b0`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant94533bb5efdb53868e0a92ec4d69fb33033392eb007086afceddd64902f616f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant94533bb5efdb53868e0a92ec4d69fb33033392eb007086afceddd64902f616f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalDensityQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.LebesgueDifferentiationThm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalCumulativeDiscrepancy](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticalcumulativediscrepancy.md) | 38 | `declaration-track:058d0330f8a1548308ef468378e1aa8472b1b744664a444df66e72daa771c910` |
| 2 | `def` | [criticalDiscrepancyPrimitive](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive.md) | 42 | `declaration-track:54ab164350ebfca8787375255e77d98c75fafc5fa37e09f2a9a2bed6860a3dd1` |
| 3 | `def` | [criticalDiscrepancyBridge](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge.md) | 46 | `declaration-track:ad7a5009cdb5c0be3a2cc0f7c5e5cfd8fbe4db13e207a60c14313165626f4d44` |
| 4 | `theorem` | [decay_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/decay-continuous.md) | 50 | `result-track:5b957968a8e4ac2c85197a08ec46421f68513160696265f23c87bd61ec96c186` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/decay-hasderivat.md) | 54 | `result-track:b121d4bdd9efa9aa0bf3c3e36cee37a7b28f14c7236f14811b301f3e64737b63` |
| 6 | `theorem` | [density_mass](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/density-mass.md) | 64 | `result-track:3c172d0aef984da3e748f39c40b5f21c32782717796d447ede10a959033187aa` |
| 7 | `theorem` | [density_mass_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/density-mass-continuous.md) | 70 | `result-track:47fb607437488298e686ce1a65cfdd23c0c8cda6eb96f7a293ceb9e5bfcdf335` |
| 8 | `theorem` | [prime_prefix_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/prime-prefix-intervalintegrable.md) | 77 | `result-track:8b235ed52b4d15bc7d1b1fb402376fce87832535e7aafb661cc191aea25edf32` |
| 9 | `theorem` | [criticalCumulativeDiscrepancy_eq](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticalcumulativediscrepancy-eq.md) | 90 | `result-track:68a1a3de99cdce7b29397080afb0c137c772cae52b763e6a356d0fcab83b65eb` |
| 10 | `theorem` | [criticalCumulativeDiscrepancy_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticalcumulativediscrepancy-at-upper.md) | 97 | `result-track:60bf2e305da0d8ff6a7cf02691b3eeb1263ffa0378ad32929df3839843c4db61` |
| 11 | `theorem` | [criticalCumulativeDiscrepancy_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticalcumulativediscrepancy-at-zero.md) | 101 | `result-track:9b6817813a97d1266ee88e98788485a3c7c7002217608f45e4ef330c9a47d3ee` |
| 12 | `theorem` | [criticalCumulativeDiscrepancy_intervalIntegrable](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticalcumulativediscrepancy-intervalintegrable.md) | 105 | `result-track:8eea14fad61d5d1029c3c46ba70073f1097fb6d04391e905c2c34add5f505c30` |
| 13 | `theorem` | [criticalDiscrepancyPrimitive_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-at-zero.md) | 111 | `result-track:89eb56292b5e604d48f6540ff04e5c62cd7b038953eea2c4a77418bff6b02ae1` |
| 14 | `theorem` | [criticalDiscrepancyPrimitive_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-continuous.md) | 115 | `result-track:10ef7c381709a20708c5cdc57f66056b6789ffec6fa77b80526945cd500a501e` |
| 15 | `theorem` | [criticalDiscrepancyPrimitive_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-absolutelycontinuous.md) | 119 | `result-track:6203cdbba3bab59cf8ca26166a4968a17b7b774c563b048c3c5c00e824670e8e` |
| 16 | `theorem` | [criticalDiscrepancyPrimitive_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-ae-hasderivat.md) | 125 | `result-track:c195586b08defe5bcd4b044172daa8ea36a90d365715ca6bf085ae2676a824aa` |
| 17 | `theorem` | [criticalDiscrepancyPrimitive_sub](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-sub.md) | 134 | `result-track:f52a53f1bb7c70036cf10a8651335001207bafd99a7446e5de367acccc301d1f` |
| 18 | `theorem` | [density_mass_integral](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/density-mass-integral.md) | 141 | `result-track:4c08e3644ffe00e597af5608a8f7af367f85441360ca5b0e77f36fde5ed59314` |
| 19 | `theorem` | [criticalDiscrepancyPrimitive_eq_primeLogSum](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancyprimitive-eq-primelogsum.md) | 161 | `result-track:324f5a05923c4f422cfe0f0ecb41757d9434d25b648d5ad440fe548fe061c448` |
| 20 | `theorem` | [criticalDiscrepancyBridge_at_zero](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge-at-zero.md) | 183 | `result-track:4124ee43c661febc5fb7d4b6f30b3699fa87f3823ace06377567eca20249bd0b` |
| 21 | `theorem` | [criticalDiscrepancyBridge_at_upper](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge-at-upper.md) | 188 | `result-track:5c544b296d52ca49303fec6689e324cc0ed7e5b6ea99f2d8e5ed573ca597f469` |
| 22 | `theorem` | [criticalDiscrepancyBridge_continuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge-continuous.md) | 194 | `result-track:9a18016b73f0d7c788f72a4f528bcc3fb1fdc5f62941fa2a27efd4446a04a631` |
| 23 | `theorem` | [criticalDiscrepancyBridge_absolutelyContinuous](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge-absolutelycontinuous.md) | 200 | `result-track:c7a921f4cd8be163a25a44fb61c0656fb78047183861eefed89ff36d4acafeec` |
| 24 | `theorem` | [criticalDiscrepancyBridge_ae_hasDerivAt](../../../../MeasureAndIntegration/SourceCriticalCumulativeDiscrepancyNamespacedEdition5.lean/declarations/criticaldiscrepancybridge-ae-hasderivat.md) | 208 | `result-track:3c30aca352e564947410c3f162240d209c0563d40887aafcf95104e8b214d1ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17091558de346be6d375cccb2341e73c56309013d4aefdf93600f7509a044b35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant94533bb5efdb53868e0a92ec4d69fb33033392eb007086afceddd64902f616f5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SourceCriticalCumulativeDiscrepancy/Variant94533bb5efdb53868e0a92ec4d69fb33033392eb007086afceddd64902f616f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
