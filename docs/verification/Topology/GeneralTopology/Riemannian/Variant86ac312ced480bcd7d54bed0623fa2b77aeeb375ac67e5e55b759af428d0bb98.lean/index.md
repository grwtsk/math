# Verification target: GRWTSK.Topology.GeneralTopology.Riemannian.Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1846c1475dfe7bb95a80b4497bdd70622b7f61bd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1846c1475dfe7bb95a80b4497bdd70622b7f61bd`.

Source path: `GRWTSK/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean.json)

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
| 1 | `class` | [IsContinuousRiemannianBundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/iscontinuousriemannianbundle--d000fd7df0858b78e13a7d8a.md) | 68 | `declaration-track:d000fd7df0858b78e13a7d8a75b05a8e2bdd165574d71e5f8cfde4ac5cd8fc69` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/instance--cf9292eb7f20adc8e90d9b12.md) | 82 | `declaration-track:cf9292eb7f20adc8e90d9b1273fa67500c4f62caddf54feb7bfcc2f933d933db` |
| 3 | `lemma` | [ContinuousWithinAt.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuouswithinat-inner-bundle--6c48ceb490fe251affcd8760.md) | 102 | `result-track:6c48ceb490fe251affcd8760bc40eaaef7190e33ae3f58d8257e2cca00da45ba` |
| 4 | `lemma` | [ContinuousAt.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuousat-inner-bundle--3032a4f2d465443949f3e5d3.md) | 119 | `result-track:3032a4f2d465443949f3e5d39d90ecc3ff4a72f502887fd9696b3b745fd6306a` |
| 5 | `lemma` | [ContinuousOn.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuouson-inner-bundle--9c241cf8d6b80823a08c1722.md) | 128 | `result-track:9c241cf8d6b80823a08c17220534e585a455db76ccde01366e06541985879737` |
| 6 | `lemma` | [Continuous.inner_bundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuous-inner-bundle--4bf5adfc45a268d3317fa617.md) | 136 | `result-track:4bf5adfc45a268d3317fa617406286c1443b8eb92060231a626a023937e75e69` |
| 7 | `lemma` | [eventually_norm_symmL_trivializationAt_self_comp_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/eventually-norm-symml-trivializationat-self-comp-lt--13ad42a032b981cd5df926d5.md) | 147 | `result-track:13ad42a032b981cd5df926d5e5a2f0674b0d188e74a420859ffc57c66b68dd9b` |
| 8 | `lemma` | [eventually_norm_trivializationAt_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/eventually-norm-trivializationat-lt--e3c122efd85c82f18415f5d4.md) | 231 | `result-track:e3c122efd85c82f18415f5d4d0a2b8fff2fe2d1801934de6902f09203300c7c4` |
| 9 | `lemma` | [eventually_norm_symmL_trivializationAt_comp_self_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/eventually-norm-symml-trivializationat-comp-self-lt--3111ec7d0f493209e7caafd7.md) | 251 | `result-track:3111ec7d0f493209e7caafd7a8c5593cdfe614fc126caee71507828399056be0` |
| 10 | `lemma` | [eventually_norm_symmL_trivializationAt_lt](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/eventually-norm-symml-trivializationat-lt--c6707e1521560c4775f16fe6.md) | 336 | `result-track:c6707e1521560c4775f16fe6d75e837e083a5a5a48cc095c3726e73f15b1092e` |
| 11 | `structure` | [RiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/riemannianmetric--9a9b1fe976d3f1d45d1b9103.md) | 378 | `declaration-track:9a9b1fe976d3f1d45d1b910395682f11a6461d68d36aa32bf6afd696451aa914` |
| 12 | `def` | [RiemannianMetric.toCore](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/riemannianmetric-tocore--23b7118738fea5bb67672f3e.md) | 394 | `declaration-track:23b7118738fea5bb67672f3eec75ead57df061e3c3b06481e13f5b9b5f7cf4f1` |
| 13 | `class` | [RiemannianBundle](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/riemannianbundle--bd132c1d8bf4beee7fd3442c.md) | 428 | `declaration-track:bd132c1d8bf4beee7fd3442c00ccff8b1ab8b51f2ae59235853cd38621bf4cf2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/instance--4240eb5306695833f70fb995.md) | 439 | `declaration-track:4240eb5306695833f70fb995c2df5fc8c34cef791ce31ba36cec4814e09cf6a4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/instance--0134a7bba245b6a979347b4c.md) | 461 | `declaration-track:0134a7bba245b6a979347b4ce15fcc1d47e79666fb79e8f6bd95ce11f4c06e36` |
| 16 | `structure` | [ContinuousRiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuousriemannianmetric--2dc1ca85a1ce4c000da819d2.md) | 476 | `declaration-track:2dc1ca85a1ce4c000da819d2ee42dee0a0a8dfcceeb04d5d6a25426c34e1d6a4` |
| 17 | `def` | [ContinuousRiemannianMetric.toRiemannianMetric](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/continuousriemannianmetric-toriemannianmetric--454516f54a98e14dbd528032.md) | 485 | `declaration-track:454516f54a98e14dbd5280322b51bc66cc0b5206766684b25336fa9fdebfb5db` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Riemannian/Variant86ac312ced480bcd7d54bed0623fa2b77aeeb375ac67e5e55b759af428d0bb98.lean/declarations/instance--0a7fb7eedf3bea6e56e9bbdf.md) | 505 | `declaration-track:0a7fb7eedf3bea6e56e9bbdff3cd8f25f64d33b1639d57c9574e51b42416560e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
