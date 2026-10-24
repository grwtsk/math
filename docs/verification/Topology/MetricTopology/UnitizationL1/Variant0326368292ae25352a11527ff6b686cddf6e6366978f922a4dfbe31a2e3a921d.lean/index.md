# Verification target: GRWTSK.Topology.MetricTopology.UnitizationL1.Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240ef7cffdec19da2e6eca3ddf1306b2808e371f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240ef7cffdec19da2e6eca3ddf1306b2808e371f`.

Source path: `GRWTSK/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-addequiv-prod--97b0dac23fe625ee26e3a590.md) | 35 | `declaration-track:97b0dac23fe625ee26e3a5904dc758a48e465042ff9de824e4ce3fa96bd271fe` |
| 2 | `instance` | [instUnitizationNormedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instunitizationnormedaddcommgroup--411e0f2a31938e5ac9561c70.md) | 39 | `declaration-track:411e0f2a31938e5ac9561c70c4129987cd33f37a55b135d690288d36ca15105c` |
| 3 | `def` | [uniformEquiv_unitization_addEquiv_prod](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/uniformequiv-unitization-addequiv-prod--88789ae27ea6ffbdd103654b.md) | 45 | `declaration-track:88789ae27ea6ffbdd103654be14cfc0ee0507d016cd92931abec07852343d0de` |
| 4 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instcompletespace--eca3c07b4755df7fc64a6197.md) | 51 | `declaration-track:eca3c07b4755df7fc64a61974c65f8dca5115e627e023111f631ef5f65467211` |
| 5 | `lemma` | [unitization_norm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-norm-def--360d6cd05c187429e135b4c4.md) | 59 | `result-track:360d6cd05c187429e135b4c4a1d81179700aa8185df6b1aef704d78b1e0949c3` |
| 6 | `lemma` | [unitization_nnnorm_def](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-nnnorm-def--7a683f007afebda93a8a92c3.md) | 66 | `result-track:7a683f007afebda93a8a92c3faff35659677365ffe705fd4a1146fe55c7be2c0` |
| 7 | `lemma` | [unitization_norm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-norm-inr--49ad6412ed17803d2bad8f72.md) | 70 | `result-track:49ad6412ed17803d2bad8f7278c2b5b35ee4a32e493ea597362e32007e670433` |
| 8 | `lemma` | [unitization_nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-nnnorm-inr--53032a95bd730eaee20831d9.md) | 73 | `result-track:53032a95bd730eaee20831d9ceb82231ff2476e793cea5be6d27b043f3fc55ab` |
| 9 | `lemma` | [unitization_isometry_inr](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-isometry-inr--6079f79ad57d53c2ba346a81.md) | 76 | `result-track:6079f79ad57d53c2ba346a81bebd09f5e989a8a10fdd6c790d0fd7a620f3d906` |
| 10 | `instance` | [instUnitizationRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instunitizationring--3fb346e7bff438594d28d9e7.md) | 84 | `declaration-track:3fb346e7bff438594d28d9e70eb358bdb43246b31fb77030b10fe91d97a37868` |
| 11 | `lemma` | [unitization_mul](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-mul--e6f94725c45c19a70a2f641d.md) | 88 | `result-track:e6f94725c45c19a70a2f641dc475bae13412ca87da072a4ee5e86d1e0e512d5b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instance--8d80dca851caec63f6a36c7e.md) | 92 | `declaration-track:8d80dca851caec63f6a36c7ec37627b109940351eb9a84ec24239f66e0185189` |
| 13 | `lemma` | [unitization_algebraMap](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitization-algebramap--e48c65fafbfef5e4a2c694cf.md) | 97 | `result-track:e48c65fafbfef5e4a2c694cfb12867840eb59b21e8d58e5ae94970ba23a40251` |
| 14 | `def` | [unitizationAlgEquiv](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/unitizationalgequiv--caed266a110df8270c5cd5c5.md) | 104 | `declaration-track:caed266a110df8270c5cd5c5340367fc6bfaf9440f021092015e06df6950c879` |
| 15 | `instance` | [instUnitizationNormedRing](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instunitizationnormedring--fc92424b9673f5bafa83a805.md) | 111 | `declaration-track:fc92424b9673f5bafa83a805c5c461496e5fa9e288dca5d3e8e61e987d31022a` |
| 16 | `instance` | [instUnitizationNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/UnitizationL1/Variant0326368292ae25352a11527ff6b686cddf6e6366978f922a4dfbe31a2e3a921d.lean/declarations/instunitizationnormedalgebra--8a8b27c834cf102b481a95bb.md) | 126 | `declaration-track:8a8b27c834cf102b481a95bb25e10f8466dac971a47d108fefa77ff3555f0eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
