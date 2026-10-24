# Verification target: GRWTSK.Topology.MetricTopology.Lipschitz.Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1068dde9909b6c61147ae0cef8c7cb96c4ce2327",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1068dde9909b6c61147ae0cef8c7cb96c4ce2327`.

Source path: `GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean.json)

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
| 1 | `theorem` | [lipschitzWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/lipschitzwith-iff-dist-le-mul--941a8284d092a86c7d153540.md) | 53 | `result-track:941a8284d092a86c7d15354035006712584987edba7da4e4f1e8b5159a8ac567` |
| 2 | `theorem` | [lipschitzOnWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/lipschitzonwith-iff-dist-le-mul--b05af56b5e757590a77fce93.md) | 60 | `result-track:b05af56b5e757590a77fce93d263547e8ad055999f438d5c02d006467aed85d2` |
| 3 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-dist-le--2d5cbc3188ed97d5f0b5310d.md) | 76 | `result-track:2d5cbc3188ed97d5f0b5310daf594feaeea9a7a27dc6a860fe797b97eca04124` |
| 4 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/mk-one--b7fd8bbb8a665e3569604390.md) | 81 | `result-track:b7fd8bbb8a665e356960439039f6f06a0d7473036bde2e314b68b2606d5c6453` |
| 5 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add-mul--f8043e2e7ac1523d060b44fb.md) | 86 | `result-track:f8043e2e7ac1523d060b44fb16a98ba4084c7f90a71eb32cc9c5fba108d53817` |
| 6 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add-mul--f324b57566df026c8c7ffd77.md) | 93 | `result-track:f324b57566df026c8c7ffd7755b9a5ab14f8889903c46a53a6bb01a0357564d7` |
| 7 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add--a234c9a94197ded09413dfdb.md) | 96 | `result-track:a234c9a94197ded09413dfdb3ad00c9411c0e092458a9fb5badbb71425ef254d` |
| 8 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/le-add-mul--db7ea72b51ca939f6cc943c1.md) | 99 | `result-track:db7ea72b51ca939f6cc943c1a63fffae4c4ca7090737bc67ba1888cd51e4c14b` |
| 9 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/iff-le-add-mul--7e20fc4f93a3557d6697d992.md) | 103 | `result-track:7e20fc4f93a3557d6697d9924e8b9f2fc1c356a1e5d07fbe4a9e3e3874e689bb` |
| 10 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/nndist-le--c09fa5d6f55a056383998520.md) | 107 | `result-track:c09fa5d6f55a0563839985208d4434617dfa93cad7fbfb9cf7aa0023b6188c79` |
| 11 | `theorem` | [dist_le_mul_of_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist-le-mul-of-le--542a4127fb11f4c768622ec6.md) | 110 | `result-track:542a4127fb11f4c768622ec64d531a28e6845c576d8d870ecce5a0d9a43e3bd9` |
| 12 | `theorem` | [mapsTo_closedBall](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/mapsto-closedball--f6342d890278f900d7e9527b.md) | 113 | `result-track:f6342d890278f900d7e9527b92a56d1c5621fab63621a22f85e5b8389c05d823` |
| 13 | `theorem` | [dist_lt_mul_of_lt](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist-lt-mul-of-lt--62359d22509cd6487fdf6bc4.md) | 117 | `result-track:62359d22509cd6487fdf6bc40a1ad6b550ecfb918e718ae4bcce65c1dc806359` |
| 14 | `theorem` | [mapsTo_ball](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/mapsto-ball--ab865b8f1dabc0cb91576230.md) | 121 | `result-track:ab865b8f1dabc0cb9157623057097cb57242c0cfbd2b818ba9c557ee990ce26c` |
| 15 | `def` | [toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/tolocallyboundedmap--e831c7d04820ca401cd394a9.md) | 126 | `declaration-track:e831c7d04820ca401cd394a9f9d67cc455728adc12323737cc75ebce8ae268bc` |
| 16 | `theorem` | [coe_toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/coe-tolocallyboundedmap--0fa4b183810c0de086c08a3a.md) | 133 | `result-track:0fa4b183810c0de086c08a3aa674dafde3f108218af5a5a91265f65507053377` |
| 17 | `theorem` | [comap_cobounded_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/comap-cobounded-le--eb1a240ae61427796c4a76e7.md) | 136 | `result-track:eb1a240ae61427796c4a76e7abb91d42f3525cb331947c56ed4eab549fe5be51` |
| 18 | `theorem` | [isBounded_image](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/isbounded-image--667c00c2b3b66f65f3ac549b.md) | 141 | `result-track:667c00c2b3b66f65f3ac549b0ba397781d930677fc42a6d98010d912e133e7f8` |
| 19 | `theorem` | [diam_image_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/diam-image-le--947e9dd997693afabebc2e86.md) | 145 | `result-track:947e9dd997693afabebc2e867abb9dce1817b7422b06bc3a3a8ea19b2f488c5d` |
| 20 | `theorem` | [dist_left](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist-left--6806c3243fdb4063841e6a78.md) | 151 | `result-track:6806c3243fdb4063841e6a78a74ebf7aaee88349261b929426c6651cc2f6c911` |
| 21 | `theorem` | [dist_right](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist-right--eb53b33bcb886f8cd0714efc.md) | 154 | `result-track:eb53b33bcb886f8cd0714efc448d2f149ab7fe8736fedb2525a654074d47d7ad` |
| 22 | `theorem` | [dist](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist--eb60ec8c5ce4a95c195ec910.md) | 157 | `result-track:eb60ec8c5ce4a95c195ec910a4c77c88fdfc80af7d752ea9864692dc2e4232e6` |
| 23 | `theorem` | [dist_iterate_succ_le_geometric](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/dist-iterate-succ-le-geometric--f09a002c801dcddd93296bdb.md) | 161 | `result-track:f09a002c801dcddd93296bdbbc78da3fde42b5b78f7c56181d34a06c3c0e5414` |
| 24 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lipschitzWith_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variantabd--b7ba7552b7be784c294917ee.md) | 166 | `result-track:b7ba7552b7be784c294917eeda716317b746d5d4ee8c9c42989e274b00736eea` |
| 25 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.lipschitzWith_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variantabd--49d5308fa40a33bbce7bc486.md) | 170 | `result-track:49d5308fa40a33bbce7bc4860db67a42a0b54c160d02c702783f62008840b8c6` |
| 26 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.Real.lipschitzWith_toNNReal](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variantabd--552b5372af6462e2e12201a2.md) | 174 | `result-track:552b5372af6462e2e12201a2d80352df80674f2ed250e57ac3c86fcd7771804a` |
| 27 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.Set.separatesPoints_lipschitzWith_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variantabd--933eda5a3b4dc504d1aafe2b.md) | 180 | `result-track:933eda5a3b4dc504d1aafe2b742e0a89ce073faf43b25241508f3c4c47e22f20` |
| 28 | `theorem` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/max--9ed1b2b69e5e0e49aec40370.md) | 190 | `result-track:9ed1b2b69e5e0e49aec40370631752b13aa867294e9fc6083ab0309c33704d0e` |
| 29 | `theorem` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/min--11352f129dc152ec9451cfd5.md) | 194 | `result-track:11352f129dc152ec9451cfd54adfc0caa4a85405ff5f3c4b705b78e97580b50d` |
| 30 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/max-const--060143eceb473fa7fcce59fc.md) | 198 | `result-track:060143eceb473fa7fcce59fc0b4c15e5227c62fb70a0d6cf38ed97179679b12b` |
| 31 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/const-max--bc5484994ee1f8a550912c6d.md) | 201 | `result-track:bc5484994ee1f8a550912c6d18dbfddd6e3e2d5cd71e367673e04370eef99905` |
| 32 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/min-const--c94e97cd9287601a424376e8.md) | 204 | `result-track:c94e97cd9287601a424376e88820f2c4053bf9ca165263c0dc0021eeff039537` |
| 33 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/const-min--3f974c6a1e0dfcbcbd3bfee3.md) | 207 | `result-track:3f974c6a1e0dfcbcbd3bfee39521973bbcd719ee9197d2d67edf459664a0e789` |
| 34 | `theorem` | [projIcc](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/projicc--bdcf9ed311c099b25d39aba0.md) | 212 | `result-track:bdcf9ed311c099b25d39aba06b07dce2bd81c51ef9f7a2b525db39ccd22b42c1` |
| 35 | `lemma` | [LipschitzWith.properSpace](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/lipschitzwith-properspace--5cd87e7da47c6b48086ac841.md) | 218 | `result-track:5cd87e7da47c6b48086ac84197d9f6be82d7fbba15497f65e064c72395334227` |
| 36 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-dist-le--a84d500e6ea008e053349271.md) | 231 | `result-track:a84d500e6ea008e053349271d607da5e31d0368d4ace9e7b2a2b81c38762dd87` |
| 37 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/mk-one--cba4f964f74484f8573f6a80.md) | 236 | `result-track:cba4f964f74484f8573f6a805155b6a01fa532941ff2c7b2000da979809e91c1` |
| 38 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add-mul--1ee9464b34bc392ac08bdbfe.md) | 242 | `result-track:1ee9464b34bc392ac08bdbfedcce27c6f722055cef824884792c7c57b9b71d40` |
| 39 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add-mul--fb5cac23e99eb0261482c27c.md) | 251 | `result-track:fb5cac23e99eb0261482c27c3dd7b6e2933fa466941af98ec1cbde6d02ed078c` |
| 40 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/of-le-add--c49e1ac586827241315af5ac.md) | 255 | `result-track:c49e1ac586827241315af5acf11bf04f17583f4437b016fae94893df42bbef49` |
| 41 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/le-add-mul--ef5de098750e68f17c9a37fb.md) | 259 | `result-track:ef5de098750e68f17c9a37fb79bd382f184a62a8c25587e692f97ed1761a3d08` |
| 42 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/iff-le-add-mul--c2596fb64baae490ec8bcbc2.md) | 263 | `result-track:c2596fb64baae490ec8bcbc2645960d0a5ff43dda5f97373914e149d6e5375fd` |
| 43 | `theorem` | [isBounded_image2](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/isbounded-image2--e055ba436686120d8f95f193.md) | 267 | `result-track:e055ba436686120d8f95f1937e306aebbee4795e7f850a4618d8bf486249d20b` |
| 44 | `lemma` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/min--fb735fe36298e9f8809966dc.md) | 289 | `result-track:fb735fe36298e9f8809966dc2a28d18eaafdf657853fdb7802826de576cf9148` |
| 45 | `lemma` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/max--845978e7bd8815dc2ceed91e.md) | 294 | `result-track:845978e7bd8815dc2ceed91e9d38d489ea04b4b205d5f13ef826dd88baf80b8d` |
| 46 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/max-const--2eead0a3404df80137388d92.md) | 298 | `result-track:2eead0a3404df80137388d9295950fc42a8e731706f75162096a9c87d5e6fbf3` |
| 47 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/const-max--164c62cb8c0ca1343dd65fca.md) | 301 | `result-track:164c62cb8c0ca1343dd65fca2c8671aef209b1630ddc5d9c1cb404e965e9d5f0` |
| 48 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/min-const--c6ceb5f2b669c7a2ec9f167a.md) | 304 | `result-track:c6ceb5f2b669c7a2ec9f167a55a846828247cd724f2855d7436da1d5a13b9396` |
| 49 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/const-min--1f97de80a3fefe31251ca0de.md) | 307 | `result-track:1f97de80a3fefe31251ca0de66821c3e4d8f0f910149820740d2a98bab2a617a` |
| 50 | `theorem` | [LipschitzOnWith.extend_real](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/lipschitzonwith-extend-real--eda121b3195d101cb3c4b7c6.md) | 317 | `result-track:eda121b3195d101cb3c4b7c6dc1ef5269cc2eae926518ed3c6524bfc61fc4814` |
| 51 | `theorem` | [LipschitzOnWith.extend_pi](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/declarations/lipschitzonwith-extend-pi--6f6ce909c0cfa6c8006d7a1b.md) | 353 | `result-track:6f6ce909c0cfa6c8006d7a1bdb7ac936677b4381e711e08eac9eada644d2e090` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
