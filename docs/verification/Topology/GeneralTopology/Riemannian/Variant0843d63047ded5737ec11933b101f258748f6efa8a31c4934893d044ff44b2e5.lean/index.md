# Verification target: GRWTSK.Topology.GeneralTopology.Riemannian.Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebda3116c139628e9ea1fce3605620b5cc09653",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebda3116c139628e9ea1fce3605620b5cc09653`.

Source path: `GRWTSK/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsContinuousRiemannianBundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/iscontinuousriemannianbundle--2a32d0263441895b60d4d5cf.md) | 60 | `declaration-track:2a32d0263441895b60d4d5cf4470641dc760bd40e374627d7048ff1f5bee832e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/instance--ed1c62ac44ae772e89416474.md) | 74 | `declaration-track:ed1c62ac44ae772e894164746ea611099d4f938deca7c87f42353c2cc725f179` |
| 3 | `lemma` | [ContinuousWithinAt.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuouswithinat-inner-bundle--e8b02d1b8c86c1cb0666b4a7.md) | 94 | `result-track:e8b02d1b8c86c1cb0666b4a7218e75cbb46c2763edb82a263a8442064a34a382` |
| 4 | `lemma` | [ContinuousAt.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuousat-inner-bundle--c44f0b8c13c817098414fd56.md) | 111 | `result-track:c44f0b8c13c817098414fd56af8888b138f34e243f59011543bafdda5e3974fc` |
| 5 | `lemma` | [ContinuousOn.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuouson-inner-bundle--5c59e7e32412f988bad05a34.md) | 120 | `result-track:5c59e7e32412f988bad05a34e4cb6d24f72d7198eca91b288141333f78d54f29` |
| 6 | `lemma` | [Continuous.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuous-inner-bundle--d50c3a2b0a3b3d112353a5b5.md) | 128 | `result-track:d50c3a2b0a3b3d112353a5b5254cb3c69105cd381d8d408ec9e4b6ede5870dd7` |
| 7 | `lemma` | [eventually_norm_symmL_trivializationAt_self_comp_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/eventually-norm-symml-trivializationat-self-comp-lt--1f40583b01412d7bf44030c8.md) | 139 | `result-track:1f40583b01412d7bf44030c80f4e2f44ba11b280f916ca2cba303ef2725ef473` |
| 8 | `lemma` | [eventually_norm_trivializationAt_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/eventually-norm-trivializationat-lt--04ecd3f9948e42d3d1bc5a32.md) | 223 | `result-track:04ecd3f9948e42d3d1bc5a3217fc3d06d138d789ff1d08cd24d90ea36db020a0` |
| 9 | `lemma` | [eventually_norm_symmL_trivializationAt_comp_self_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/eventually-norm-symml-trivializationat-comp-self-lt--f55b330f6a43e479243e5092.md) | 243 | `result-track:f55b330f6a43e479243e50922a78f57bd48b20c43e33c51d9018353a99345e87` |
| 10 | `lemma` | [eventually_norm_symmL_trivializationAt_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/eventually-norm-symml-trivializationat-lt--87ccf0a981f4ec7109be23aa.md) | 328 | `result-track:87ccf0a981f4ec7109be23aa90f36242ff6a1274a42a0229197fca3044a6e28d` |
| 11 | `structure` | [RiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/riemannianmetric--0dd304020823f8bb2b4f2322.md) | 370 | `declaration-track:0dd304020823f8bb2b4f2322b4c9698672b506c720ad154e37e81b4dfcee0822` |
| 12 | `def` | [RiemannianMetric.toCore](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/riemannianmetric-tocore--d97108ca519999daf6429046.md) | 386 | `declaration-track:d97108ca519999daf6429046a825cf4c01df193954d5ca0d01cb66f435476783` |
| 13 | `class` | [RiemannianBundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/riemannianbundle--12355f93eac4a9119d09a599.md) | 420 | `declaration-track:12355f93eac4a9119d09a59965b244a841f0cbf40b403349c895d816a5d1ab9a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/instance--cc99d4808e1c2c9813f8839e.md) | 431 | `declaration-track:cc99d4808e1c2c9813f8839e9572dd99640cbdd8b0e293e81771a2136950be41` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/instance--3247a37143f24b1c69c9b20f.md) | 453 | `declaration-track:3247a37143f24b1c69c9b20f80bd05442d3184ef477f1a22d25e1970084ab838` |
| 16 | `structure` | [ContinuousRiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuousriemannianmetric--205d9793fae7662c622d36b3.md) | 468 | `declaration-track:205d9793fae7662c622d36b3f79fa1855738d13468449319e4d5e686f490beb4` |
| 17 | `def` | [ContinuousRiemannianMetric.toRiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/continuousriemannianmetric-toriemannianmetric--809e91aad9669ff2b3ebbc22.md) | 477 | `declaration-track:809e91aad9669ff2b3ebbc2274c722944d494b83d3522091640c1262d22b5281` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant0843d63047ded5737ec11933b101f258748f6efa8a31c4934893d044ff44b2e5.lean/declarations/instance--9ecafef12c126aa7df16184f.md) | 497 | `declaration-track:9ecafef12c126aa7df16184f7abeb91137dc122a926290ccff0e433190566d6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
