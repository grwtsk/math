# Verification target: GRWTSK.Topology.MetricTopology.Constructions.Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70664b1c0bc6b68440f54304f1fe5f2cc01f2906",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70664b1c0bc6b68440f54304f1fe5f2cc01f2906`.

Source path: `GRWTSK/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PseudoMetricSpace.induced](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/pseudometricspace-induced--017e66aa12e338f7dd1d5861.md) | 23 | `declaration-track:017e66aa12e338f7dd1d586184165401fe41ae63efb1fd510ef7fcea1bb0816e` |
| 2 | `def` | [Topology.IsInducing.comapPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/topology-isinducing-comappseudometricspace--7e21ed50111f601d6938ce32.md) | 40 | `declaration-track:7e21ed50111f601d6938ce322ea805724d2351ff68c2cc68258deba548924b30` |
| 3 | `def` | [IsUniformInducing.comapPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/isuniforminducing-comappseudometricspace--4a88612217103cb1228a0a4a.md) | 50 | `declaration-track:4a88612217103cb1228a0a4a1aa257adaf64e8467c40559ef1e476e11fb5c51c` |
| 4 | `instance` | [Subtype.pseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/subtype-pseudometricspace--e896b3b2be24a98e9a40e33d.md) | 54 | `declaration-track:e896b3b2be24a98e9a40e33dc998aa8c707d085a0566f3c13d1b7ab224c42f28` |
| 5 | `lemma` | [Subtype.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/subtype-dist-eq--31a92019294371e8670e19f3.md) | 57 | `result-track:31a92019294371e8670e19f327e8e1ca417b0fe27c92b61cb6e542cdc49b2f3c` |
| 6 | `lemma` | [Subtype.nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/subtype-nndist-eq--99fe99b572fa56e7fd71192c.md) | 59 | `result-track:99fe99b572fa56e7fd71192ccd75d44ce47c691f8ce5aae917efe7299e1b197c` |
| 7 | `instance` | [instPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/instpseudometricspace--ca8fb2809a6961648d6fb1ed.md) | 64 | `declaration-track:ca8fb2809a6961648d6fb1ed6133f4d31147d1a3c0347b28718d882cea854775` |
| 8 | `lemma` | [dist_unop](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-unop--1cd30652dcb4fa6034930247.md) | 68 | `result-track:1cd30652dcb4fa60349302476c9089b22e8b6df29f022b09775e24b377c8f51f` |
| 9 | `lemma` | [dist_op](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-op--eba460a8d4b1ffe628876b1a.md) | 71 | `result-track:eba460a8d4b1ffe628876b1a5d9393ddaaee386358f11fc7f1d99cc9176da0ec` |
| 10 | `lemma` | [nndist_unop](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nndist-unop--0eb28c16a5a2e1884061f4b1.md) | 74 | `result-track:0eb28c16a5a2e1884061f4b101010f4e61c740546adc0547b3deb80db372e0b2` |
| 11 | `lemma` | [nndist_op](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nndist-op--bfcc1efc9a9dbd1a60888a2e.md) | 77 | `result-track:bfcc1efc9a9dbd1a60888a2ef9b2fbf6bf1ec60ff4cd22f2765399e25e761b20` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/instance--c6844e30822a8d1243e1b493.md) | 83 | `declaration-track:c6844e30822a8d1243e1b4934c9200bc257f3054e508c7912b2d321810fb0966` |
| 13 | `lemma` | [NNReal.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-dist-eq--0cea48288528fd25c5db5c73.md) | 85 | `result-track:0cea48288528fd25c5db5c734ca8e089c7166078b6aa124d80f4ce0a541310a5` |
| 14 | `lemma` | [NNReal.nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-nndist-eq--4a142f84bc429e49a465a1bc.md) | 87 | `result-track:4a142f84bc429e49a465a1bcccdc8b39faddc169d7e05f67204ef31a2c0fcc27` |
| 15 | `lemma` | [NNReal.nndist_zero_eq_val](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-nndist-zero-eq-val--5e40ac203aafcb606e8650ed.md) | 94 | `result-track:5e40ac203aafcb606e8650ed78c1909ac282b0c0bf96fbb3b711cef8bb6aa237` |
| 16 | `lemma` | [NNReal.nndist_zero_eq_val'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-nndist-zero-eq-val--00a718cd907be91055245b50.md) | 98 | `result-track:00a718cd907be91055245b5036231f1cefd34c40806a8e28450361a326221b15` |
| 17 | `lemma` | [NNReal.le_add_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-le-add-nndist--e79ca43a9be9a07968903c73.md) | 102 | `result-track:e79ca43a9be9a07968903c7347fef776b36405375ed68aa8b6221b14fe5e46c9` |
| 18 | `lemma` | [NNReal.ball_zero_eq_Ico'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-ball-zero-eq-ico--40240713c19f4f739017144d.md) | 108 | `result-track:40240713c19f4f739017144d27826809c9e8a3873dbb2215e347a63d115acbd9` |
| 19 | `lemma` | [NNReal.ball_zero_eq_Ico](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-ball-zero-eq-ico--87a63cfcb2bc5187e8c756de.md) | 111 | `result-track:87a63cfcb2bc5187e8c756dec6484e54aef76b19f917943a024dd438aa6ef068` |
| 20 | `lemma` | [NNReal.closedBall_zero_eq_Icc'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-closedball-zero-eq-icc--69ea34e29266266835b28104.md) | 118 | `result-track:69ea34e29266266835b28104080ede49c07db4b59fd63e95cd008f38f29a6b04` |
| 21 | `lemma` | [NNReal.closedBall_zero_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nnreal-closedball-zero-eq-icc--d4e9a2b138acc5fc2605f10b.md) | 121 | `result-track:d4e9a2b138acc5fc2605f10bb526406597169fd5c8ec964d74eebf21f6862c25` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/instance--07dbebd4f71d64acc3f1741d.md) | 131 | `declaration-track:07dbebd4f71d64acc3f1741d83619f030d77bfef0ed51b6ea84c07b824910877` |
| 23 | `lemma` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-eq--f2e94715d93a7873a3ab0ef5.md) | 133 | `result-track:f2e94715d93a7873a3ab0ef5950cd96f205527e236f0d023740978eb9a03aec7` |
| 24 | `lemma` | [nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nndist-eq--00be4defbd00480e20a382e3.md) | 135 | `result-track:00be4defbd00480e20a382e3b9304614caa8cd2de53e4a9f3b51b9746341defa` |
| 25 | `lemma` | [dist_up_up](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-up-up--fcb5d5c5f80d6e9c0767d27c.md) | 137 | `result-track:fcb5d5c5f80d6e9c0767d27c611761dd2e6debcf6fef08175606da4a03c3f13c` |
| 26 | `lemma` | [nndist_up_up](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/nndist-up-up--5a70c706f9f35fc8de5626dd.md) | 139 | `result-track:5a70c706f9f35fc8de5626dd893c2df462ebdd433d35bb7a5f296268d3f0b306` |
| 27 | `instance` | [Prod.pseudoMetricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/prod-pseudometricspacemax--d0dc0bb62e75f6e183f63c54.md) | 146 | `declaration-track:d0dc0bb62e75f6e183f63c5432404233baa3769209e4717e943d91c7ed122bca` |
| 28 | `lemma` | [Prod.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/prod-dist-eq--14245119764fa83a11dd817b.md) | 157 | `result-track:14245119764fa83a11dd817b50f3beaecd5a5f04aa0bd7e0b9037c08cc9f43eb` |
| 29 | `lemma` | [dist_prod_same_left](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-prod-same-left--64e5cd1743c123c920a46f5d.md) | 160 | `result-track:64e5cd1743c123c920a46f5d445e3ba88951776ba370134037dfea716d0f3935` |
| 30 | `lemma` | [dist_prod_same_right](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/dist-prod-same-right--517d3f4c8b62a7b67622cd4a.md) | 164 | `result-track:517d3f4c8b62a7b67622cd4a2acf77bffb30ffd89bbd759ae91ba568ab05ce16` |
| 31 | `lemma` | [ball_prod_same](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/ball-prod-same--6a1fc423160d5d169f02977f.md) | 167 | `result-track:6a1fc423160d5d169f02977fe7faf60360481da2e1519e9545f9f0c514a6b900` |
| 32 | `lemma` | [closedBall_prod_same](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/closedball-prod-same--58f56e614aead4000558203d.md) | 170 | `result-track:58f56e614aead4000558203db235ba62fc80e22167f1450e7fff31a5047add70` |
| 33 | `lemma` | [sphere_prod](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/sphere-prod--d00ed0a404430091b688eed7.md) | 173 | `result-track:d00ed0a404430091b688eed72e66dc69a15c168c0bbae7e89e6b9d5337af429e` |
| 34 | `lemma` | [uniformContinuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/uniformcontinuous-dist--b1c12abc60d97460e668668f.md) | 187 | `result-track:b1c12abc60d97460e668668fef5f2d8bc81502d1c29303391d5125e7484bbe2b` |
| 35 | `lemma` | [UniformContinuous.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/uniformcontinuous-dist--8c9f5c019ed4da98a539e4e6.md) | 196 | `result-track:8c9f5c019ed4da98a539e4e66210a11cf305056b20d096bb5aea9577876281ad` |
| 36 | `lemma` | [continuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/continuous-dist--a939a537a6e9d14b89ff5d2d.md) | 201 | `result-track:a939a537a6e9d14b89ff5d2ddc6b50933305396a1b0375e51b52d47d49ed1550` |
| 37 | `lemma` | [Continuous.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/continuous-dist--27ef2ad24f6fa9fd721db7b6.md) | 204 | `result-track:27ef2ad24f6fa9fd721db7b6057b56d97632f4a2cdcbba0b0f7bb660445ea1a2` |
| 38 | `lemma` | [Filter.Tendsto.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/filter-tendsto-dist--23ca39506f1182d5716572fb.md) | 208 | `result-track:23ca39506f1182d5716572fb284d6fdc5f6b43bde9f6687391e62c4222f0aa7f` |
| 39 | `lemma` | [continuous_iff_continuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/continuous-iff-continuous-dist--428bd29eb66fdd48bca483be.md) | 213 | `result-track:428bd29eb66fdd48bca483be369a5f6628bef8ce7d231884b4f24f148f2f5312` |
| 40 | `lemma` | [uniformContinuous_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/uniformcontinuous-nndist--9d02edb0fefe04dcdb884d7a.md) | 219 | `result-track:9d02edb0fefe04dcdb884d7acd42516d8763ac9f810d1f1bc75155fba1a322b8` |
| 41 | `lemma` | [UniformContinuous.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/uniformcontinuous-nndist--a3dec3b71cd6f2f7c1c27471.md) | 222 | `result-track:a3dec3b71cd6f2f7c1c274719722814b807f9a96bbd857df45f7c792a784f96f` |
| 42 | `lemma` | [continuous_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/continuous-nndist--ec2d4a45a20fa3ff84199e49.md) | 226 | `result-track:ec2d4a45a20fa3ff84199e49229c17945edea219f026e50c4c8ba56527dd2966` |
| 43 | `lemma` | [Continuous.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/continuous-nndist--193aa7b8da9b9a8fe8e3d261.md) | 230 | `result-track:193aa7b8da9b9a8fe8e3d261d0fc5b3c3daf2bec0c72961e1080b4c3c8985989` |
| 44 | `lemma` | [Filter.Tendsto.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantb5af1a23ad0929503e49a6e21c7de6c59e646f0745f32e911e83a9ee0a244122.lean/declarations/filter-tendsto-nndist--56212b051ac64257c15d8519.md) | 234 | `result-track:56212b051ac64257c15d85197ec857cb2818114b1dc6a53889fbb9721328ca9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
