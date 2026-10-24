# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorff.Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d14b4e4a378ba13143b6a683a028f724e8b75bb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d14b4e4a378ba13143b6a683a028f724e8b75bb`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Closeds` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.GromovHausdorffRealized` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Kuratowski` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/isometryrel--bd094afff1af5e86ffe8bb97.md) | 74 | `declaration-track:bd094afff1af5e86ffe8bb973ea8ee4d9ee9172609588b389c17421d6dae1104` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/equivalence-isometryrel--4e67839f2215ecea2aafea72.md) | 78 | `result-track:4e67839f2215ecea2aafea723fa9e23f2d167dcff4c516c3b6d0c18bf77c77b4` |
| 3 | `instance` | [IsometryRel.setoid](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/isometryrel-setoid--e2105223304976db9159d5b9.md) | 82 | `declaration-track:e2105223304976db9159d5b97f17b7ae80470404467c674dc5e17d71f4c00f70` |
| 4 | `def` | [GHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghspace--376a555b23cd019779881eb5.md) | 86 | `declaration-track:376a555b23cd019779881eb55b1369e0cccbf0d53f1da852379934abfd6261d8` |
| 5 | `def` | [toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/toghspace--cd8fbb62b3d9c339bd612538.md) | 90 | `declaration-track:cd8fbb62b3d9c339bd612538a4b089182d955c10b6c1cb929e428c6ce733bc95` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--35f276c096141e0840c1b46a.md) | 93 | `declaration-track:35f276c096141e0840c1b46a3d54b26662aca8da7a4d3b16de02fba3bc282eb4` |
| 7 | `def` | [GHSpace.Rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghspace-rep--cd5337027896b91ed5af389b.md) | 97 | `declaration-track:cd5337027896b91ed5af389befd52ba87c01481d0d3f55b3d7ac4099e408d4a2` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/eq-toghspace-iff--536caee801f20fed2870c506.md) | 100 | `result-track:536caee801f20fed2870c50659a1534941a7970c5c8533fe09bc2a7463d7e04b` |
| 9 | `theorem` | [eq_toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/eq-toghspace--edbd2ed0f25c55e6ace0d309.md) | 118 | `result-track:edbd2ed0f25c55e6ace0d3098ad347b7ea812d8c5da73e4a8da611a95df9a77c` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/repghspacemetricspace--5188a19d6d2ad0470c1bddfc.md) | 123 | `declaration-track:5188a19d6d2ad0470c1bddfc6a7d76f5fe1249f2b7a42040cf9fa233df7b1ae1` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/rep-ghspace-compactspace--cc978f98ef3ee7e5b08a8311.md) | 126 | `declaration-track:cc978f98ef3ee7e5b08a8311544a9e0b3a758bf07c67520b9526b5577d1b0f63` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/rep-ghspace-nonempty--5d854a83628261daea6ddabf.md) | 129 | `declaration-track:5d854a83628261daea6ddabf0fff008e57de71b59bcf12abe8d8c0f765d312ed` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghspace-toghspace-rep--0335c1b9eae8b7452ceb50f6.md) | 134 | `result-track:0335c1b9eae8b7452ceb50f6287f675cba75f06da47dd5eab928dc07f41468eb` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv--221e85f5f1c45551827be2d0.md) | 141 | `result-track:221e85f5f1c45551827be2d0991cd25b026d970eae4c949ca1ea34b551d1d862` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--822db7c8b8a0b82425efe04a.md) | 169 | `declaration-track:822db7c8b8a0b82425efe04aa4a3874e2964ab327c588f23eddeb1c713688e43` |
| 16 | `def` | [ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghdist--79b1e5360c096381a4ee9ffb.md) | 175 | `declaration-track:79b1e5360c096381a4ee9ffb5f8ed716c4c55b3fe11793de7bdce11935becb6d` |
| 17 | `theorem` | [dist_ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/dist-ghdist--46b6868c74f3f40440e5821a.md) | 179 | `result-track:46b6868c74f3f40440e5821a08ea37ff329331ad647e31e0433b0b93ab06862a` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghdist-le-hausdorffdist--1fed137e1364c9a4b67bbeeb.md) | 184 | `result-track:1fed137e1364c9a4b67bbeeb608f0be8841e6bc45e65183a5d00a5c47b48e6e2` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/hausdorffdist-optimal--f9a0fe67011ae5b4091e9471.md) | 240 | `result-track:f9a0fe67011ae5b4091e9471d5248eb5d64a28f502d8c0730fc125ec5c9c065c` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghdist-eq-hausdorffdist--1f6eb1d0c9f2dfd03c0f42f3.md) | 384 | `result-track:1f6eb1d0c9f2dfd03c0f42f39705c31eca73973bc53f187e0a308123d698d158` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--8bf40af73b3c096c982ccb9c.md) | 400 | `declaration-track:8bf40af73b3c096c982ccb9ce3f587ad6416b68e3d94ee5ba83bb0150cc7c725` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/topologicalspace-nonemptycompacts-toghspace--ee40c4693061ef9bd5f63a78.md) | 509 | `declaration-track:ee40c4693061ef9bd5f63a78d2d14d5d709a17ecc4992536446ca34ecd68da76` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghdist-le-nonemptycompacts-dist--c6c664cea3fad821663f8354.md) | 521 | `result-track:c6c664cea3fad821663f83549af1f0a8330f52367f906f019b0d95b22a56ef83` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/toghspace-lipschitz--9a57d2ee9057433a56a2b2f3.md) | 531 | `result-track:9a57d2ee9057433a56a2b2f3379dde9c0a2edf7cb9e427be44a14a886de060b6` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/toghspace-continuous--634d123f6e5eae3134b5ef7e.md) | 535 | `result-track:634d123f6e5eae3134b5ef7e115ab597d8b6af29a83aef3f8031cf7e6a467236` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/ghdist-le-of-approx-subsets--21aebc6cc4b4a6b6a878a39e.md) | 554 | `result-track:21aebc6cc4b4a6b6a878a39edfed7f4cadd8dffbf04f95014556c9249568e69a` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--8319212a5a3c36e9008581cf.md) | 632 | `declaration-track:8319212a5a3c36e9008581cfb5789b53232fc16e81037e59de233969e974f8ca` |
| 28 | `theorem` | [totallyBounded](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/totallybounded--af837c23e3fbb3c8a0693efc.md) | 767 | `result-track:af837c23e3fbb3c8a0693efca544a5538c84f176ac7a1bf9ae0508c5aed2e850` |
| 29 | `structure` | [AuxGluingStruct](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/auxgluingstruct--1ac621d4941a11a3b0d29291.md) | 953 | `declaration-track:1ac621d4941a11a3b0d292911f4427e8218ba572f16ee3cef3ad0c42d5a60d78` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--b33827182bb1430db149f967.md) | 961 | `declaration-track:b33827182bb1430db149f9675070c1e5afd0dbeaa382947a9f27ea8a64656260` |
| 31 | `def` | [auxGluing](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/auxgluing--788de66ca3fa53ccb303c52c.md) | 971 | `declaration-track:788de66ca3fa53ccb303c52c511e644ed0d7abf856386503488ce0b17108e963` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/declarations/instance--411216bcb60b4c1408afe8a4.md) | 980 | `declaration-track:411216bcb60b4c1408afe8a4610b40443e0ce89452110cc7ef485cb4bb37a610` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
