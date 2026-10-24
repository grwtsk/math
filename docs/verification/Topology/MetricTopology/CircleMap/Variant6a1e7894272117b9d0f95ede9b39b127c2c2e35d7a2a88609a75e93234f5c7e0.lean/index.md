# Verification target: GRWTSK.Topology.MetricTopology.CircleMap.Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe06d0eb417b74d3f1ca8b02658b0615e9869a7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe06d0eb417b74d3f1ca8b02658b0615e9869a7`.

Source path: `GRWTSK/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap--72bda6efdd6e9566e6cd05dc.md) | 27 | `declaration-track:72bda6efdd6e9566e6cd05dc4651bc965aed2d60ff56589b793cf69977500423` |
| 2 | `theorem` | [circleMap_sub_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-sub-center--c42234c23ffaa602f1ff306f.md) | 30 | `result-track:c42234c23ffaa602f1ff306f5d0df0333f0b1ee8b685494e05597c4888ebb3b1` |
| 3 | `theorem` | [circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero--434bf5f3508d54ba73efef70.md) | 33 | `result-track:434bf5f3508d54ba73efef70a01b6a85cd782193048a295ceaaf36c2b7384d6f` |
| 4 | `theorem` | [norm_circleMap_zero](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/norm-circlemap-zero--094de0ef5c1d0aa383c84571.md) | 36 | `result-track:094de0ef5c1d0aa383c84571a0a191d42cc07af53e2b55f8dc2f9e5cb9f5eaed` |
| 5 | `theorem` | [circleMap_notMem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-notmem-ball--043917cdd29547651069ea30.md) | 40 | `result-track:043917cdd29547651069ea30965c1edd45f15d55c8dfa9ceefcd29b75f262b20` |
| 6 | `theorem` | [circleMap_ne_mem_ball](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-ne-mem-ball--12541509871436a480877f42.md) | 45 | `result-track:12541509871436a480877f4277656053315412a9e5db33edaaea7c9a47634cf6` |
| 7 | `theorem` | [circleMap_mem_sphere'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-mem-sphere--adb66f4d3dacece5b8f0ec1f.md) | 49 | `result-track:adb66f4d3dacece5b8f0ec1ff319e1ea2aa1c51794182bf54dfe2a5c79463536` |
| 8 | `theorem` | [circleMap_mem_sphere](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-mem-sphere--881ce2d0cc28248bc0b7b7af.md) | 51 | `result-track:881ce2d0cc28248bc0b7b7af7cfb1bc25eeeaa4ed096ac81b74aba1b6e40fa46` |
| 9 | `theorem` | [circleMap_mem_closedBall](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-mem-closedball--849c7fd56c2fdbc0043598d2.md) | 55 | `result-track:849c7fd56c2fdbc0043598d2a1674031b7e7cdd2fd76b75a16892a9e1656e9b5` |
| 10 | `theorem` | [circleMap_eq_center_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-eq-center-iff--7d1132ca301ede2b8a448c99.md) | 60 | `result-track:7d1132ca301ede2b8a448c99212a83c2384adcf68ed3fae9016fa94bf02a3ad2` |
| 11 | `theorem` | [circleMap_zero_radius](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-radius--6cd6fc1c89a1853dfdbde5ea.md) | 64 | `result-track:6cd6fc1c89a1853dfdbde5eacb5bab3e4f27ec79012215c62046b1fc6d3f100e` |
| 12 | `theorem` | [circleMap_ne_center](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-ne-center--89270a4591b863da3c0fc08b.md) | 67 | `result-track:89270a4591b863da3c0fc08b680c7faf8abcee322e5630abe65cd073032fdf59` |
| 13 | `lemma` | [circleMap_zero_mul](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-mul--c417d3d9299ef90c816edf29.md) | 70 | `result-track:c417d3d9299ef90c816edf29a2a462c64319dd06d89a8e3ae3a3094f976937a2` |
| 14 | `lemma` | [circleMap_zero_div](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-div--554606a4dab875568b2bea45.md) | 75 | `result-track:554606a4dab875568b2bea45218dc61b482f3c0114bf0c71e62348f6f60e9069` |
| 15 | `lemma` | [circleMap_zero_inv](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-inv--76179183c7624fa7bf2c04f5.md) | 80 | `result-track:76179183c7624fa7bf2c04f54811015ddb4458f35d080f512ec07319e5c3cc86` |
| 16 | `lemma` | [circleMap_zero_pow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-pow--9816e429846f6bae0984deb0.md) | 83 | `result-track:9816e429846f6bae0984deb0ff2f916d83c3e3218ad1869b4bf6ffb071baea85` |
| 17 | `lemma` | [circleMap_zero_zpow](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-zero-zpow--b409aa9f259e86c3a6ce8cf5.md) | 87 | `result-track:b409aa9f259e86c3a6ce8cf5170eeabf318f676f607e099893b79996daf4cd23` |
| 18 | `lemma` | [circleMap_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-pi-div-two--be65c877a3be4a575dcb4123.md) | 93 | `result-track:be65c877a3be4a575dcb4123613907b3354bbb9bfe4e35aa15654ebafffca2ff` |
| 19 | `lemma` | [circleMap_neg_pi_div_two](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-neg-pi-div-two--df8cdd7b0b8202d0b732c5bf.md) | 96 | `result-track:df8cdd7b0b8202d0b732c5bf1947450c60ed132cea0b74b7cf85ec5d8689bb28` |
| 20 | `theorem` | [periodic_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/periodic-circlemap--d529ac7e462db666b4ca36ce.md) | 101 | `result-track:d529ac7e462db666b4ca36cec57776b92bd2dcfc21f28533fca4192f316b5032` |
| 21 | `theorem` | [Set.Countable.preimage_circleMap](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/set-countable-preimage-circlemap--df38af239dab466ab783e944.md) | 104 | `result-track:df38af239dab466ab783e944becf442ff8423536c16fe6e581863cd52e81c1c6` |
| 22 | `lemma` | [circleMap_eq_circleMap_iff](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/circlemap-eq-circlemap-iff--20f68ac9578b00e6a4ef47fc.md) | 112 | `result-track:20f68ac9578b00e6a4ef47fc11b93b607b9d70359ad3bb381c9648615475049a` |
| 23 | `lemma` | [eq_of_circleMap_eq](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/eq-of-circlemap-eq--3cb8653a6f78b2fbd6980449.md) | 118 | `result-track:3cb8653a6f78b2fbd6980449c2a4003169dfc1aed6143f41e8c7e8ac83c68956` |
| 24 | `theorem` | [injOn_circleMap_of_abs_sub_le](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/injon-circlemap-of-abs-sub-le--2d17e6f704b91f83c1867eae.md) | 133 | `result-track:2d17e6f704b91f83c1867eaeb798946c23aaa9ecd9a7e7a2acfc38b454f8415b` |
| 25 | `theorem` | [injOn_circleMap_of_abs_sub_le'](../../../../../mathematics/Topology/MetricTopology/CircleMap/Variant6a1e7894272117b9d0f95ede9b39b127c2c2e35d7a2a88609a75e93234f5c7e0.lean/declarations/injon-circlemap-of-abs-sub-le--ca8423175fc8748448c0669f.md) | 141 | `result-track:ca8423175fc8748448c0669f5c348be9fa92611ac2d3281afb5f9febdda1d493` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
