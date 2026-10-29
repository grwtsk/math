# Verification target: Metric Space Lipschitz Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3711dc8d9916e14eae7b57aad47b6ec9b6f7b2f`.

Source path: `GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.ProjIcc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Hom` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LipschitzWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzwith.md) | 62 | `declaration-track:6058ace38956d1933368aca2417f1660f3eca04bb11d3b62c8192e7fedd50a5a` |
| 2 | `theorem` | [lipschitzWith_iff_dist_le_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzwith-iff-dist-le-mul.md) | 66 | `result-track:3d0e5d2aa997bc8b508323c66f2f9a6e74c5478c24148acd717b5b2f39bfba88` |
| 3 | `def` | [LipschitzOnWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith.md) | 78 | `declaration-track:027c07e9e197360405eae5798464487151e8a782638e59872af35315d7b4d68a` |
| 4 | `theorem` | [lipschitzOnWith_empty](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-empty.md) | 84 | `result-track:a61fac60b8d7aed9a4b6e26f70aefb7548d935d62bbde7cc2053a799bd626c16` |
| 5 | `theorem` | [LipschitzOnWith.mono](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-mono.md) | 88 | `result-track:88e412607818b1307e5347b18c000d8864b84eb3deee54649c7c4120e73cdb41` |
| 6 | `theorem` | [lipschitzOnWith_iff_dist_le_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-iff-dist-le-mul.md) | 93 | `result-track:0ce51a6a20bd8069ce125de03f447e606e1071da352b9ba13b61ed238e49b2e8` |
| 7 | `theorem` | [lipschitz_on_univ](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitz-on-univ.md) | 106 | `result-track:bb4531b7b4dc50e5514950ca48e01a501408221ea285c0fdf94da64faa4de275` |
| 8 | `theorem` | [lipschitzOnWith_iff_restrict](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-iff-restrict.md) | 110 | `result-track:092001b88c52785c63dd74eed04f571f4cd455b0383d8f0ad1fd90a0cb6f8801` |
| 9 | `theorem` | [MapsTo.lipschitzOnWith_iff_restrict](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mapsto-lipschitzonwith-iff-restrict.md) | 118 | `result-track:f8b5c9778066359702784704331a22b13d655e3282b70dbfd68a3b9c57aaca44` |
| 10 | `theorem` | [lipschitzOnWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-source-edition-2.md) | 137 | `result-track:b95b30cfc586b453c71cc1bbb7ab1961b06524cad8b4d353c437cd6208407094` |
| 11 | `theorem` | [edist_le_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-le-mul.md) | 141 | `result-track:ac00a2ddf35a0060256cf66627a1469d3e160cc7834ddd2389e82e5bd419fc98` |
| 12 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-le-mul-of-le-source-edition-2.md) | 145 | `result-track:c4a5ab70efcbfbbf7f5e08e073170ecdaaece587dd38b29904006a72191f305e` |
| 13 | `theorem` | [edist_lt_mul_of_lt](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-lt-mul-of-lt.md) | 150 | `result-track:ce4966483dbdee79b2d5e4c8dfeb7f36e184be35293bc65a5c099a3ff79d3fef` |
| 14 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mapsto-emetric-closedball.md) | 155 | `result-track:8dc7f154ae30ad285c1ad37cb9ea9abe23134622053956b804650f3faed4b24a` |
| 15 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mapsto-emetric-ball.md) | 159 | `result-track:6e4e35b5ce59235acdf69d74901294dc0dc4b6221e0511e23233967438c62c1b` |
| 16 | `theorem` | [edist_lt_top](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-lt-top.md) | 163 | `result-track:7bdb3d8147c9b08b74066b2ba560433cf25ec6b3fc5ba195df0aa716fce6c546` |
| 17 | `theorem` | [mul_edist_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mul-edist-le.md) | 168 | `result-track:480bf629fe829628180341e07d3c667c29b71629458b80250969604865b38b40` |
| 18 | `theorem` | [of_edist_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-edist-le.md) | 174 | `result-track:8024bf2b6ad575c05360e2158cb5d9d184cc96109717401831ab1daf3e5f7733` |
| 19 | `theorem` | [weaken](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/weaken.md) | 178 | `result-track:bb668a09246bf4cd686aa73d9fd15b1d6eef4ad14aa27687ef3bc6e74105e8ca` |
| 20 | `theorem` | [ediam_image_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/ediam-image-le.md) | 182 | `result-track:4536a115e45d6b6acb72e9681a8c3d93540ecb8cc085c8dfb5f6ffa178ef31cf` |
| 21 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-lt-of-edist-lt-div-source-edition-2.md) | 189 | `result-track:b78c587cb5196307ff74ec8ab7bd192245113e705d8cfe1c4c35175c7ec3f626` |
| 22 | `theorem` | [uniformContinuous](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/uniformcontinuous.md) | 197 | `result-track:54b732082a157fe3f343c75cbbc48e2f22728f8d2cdc350b101b564825c87016` |
| 23 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuous.md) | 203 | `result-track:bd0f349ba0b91d819effec6d4a37070423473beada47cc5e695da66a7274db4f` |
| 24 | `theorem` | [const](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/const-source-edition-2.md) | 207 | `result-track:bf99f80f9a43d6367605e64de44a426c4a2a50e596dc8c84d9ff8dfb729b090d` |
| 25 | `theorem` | [const'](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/const.md) | 211 | `result-track:a12dda2216ea0bcca5d3836474ed4ab39d49b6dbdc874305421ec56de56ed8ef` |
| 26 | `theorem` | [id](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/id.md) | 214 | `result-track:0c90b0afcefcd62cda5df51a5029a2912f3a5e155a4f094245cb4e73b5a47831` |
| 27 | `theorem` | [subtype_val](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/subtype-val.md) | 218 | `result-track:e4ccca4cef288e93f6179f4f3f4031ccf5db09776b01d703d7e73d5774dce423` |
| 28 | `theorem` | [subtype_mk](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/subtype-mk.md) | 223 | `result-track:6864e36c717b49b37ec10aafb2821cc49aabf1015ccb3a5fb84a742c049253e5` |
| 29 | `theorem` | [eval](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/eval.md) | 228 | `result-track:4d0521ff1a72e7a93e650d0006c341389e640b165c9e93b51a4b3c3d322dc198` |
| 30 | `theorem` | [restrict](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/restrict.md) | 233 | `result-track:c0c560040c99544cf03ea6faf11596512d21e80ba723cfcbf6d747548ecde983` |
| 31 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/comp-source-edition-2.md) | 237 | `result-track:95ed9212dbcb91914684032a09b1488a7c310d00573ed80d3f48f36edb9e6fab` |
| 32 | `theorem` | [comp_lipschitzOnWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/comp-lipschitzonwith.md) | 245 | `result-track:326aa6f94da790e1f6e0ee739b21f525a74172d4ee6839c72b4a5e73e04340aa` |
| 33 | `theorem` | [prod_fst](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/prod-fst.md) | 250 | `result-track:a8395df5a813a7174f45b48733c9b2fb6253d2637d2b09d645cdcd22afae8ecc` |
| 34 | `theorem` | [prod_snd](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/prod-snd.md) | 254 | `result-track:70d98bd4acc1a5223132a3f3435b36175742a9ae368916f786514ca6deb5a03d` |
| 35 | `theorem` | [prod](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/prod.md) | 258 | `result-track:8e84261ad014025dafd0b894b8529946162378b914cfc3c592676db8c1781492` |
| 36 | `theorem` | [prod_mk_left](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/prod-mk-left.md) | 265 | `result-track:291f421bf748fd7b7950bd0f9833f9375f076dd428f57eec231131bc8038866e` |
| 37 | `theorem` | [prod_mk_right](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/prod-mk-right.md) | 269 | `result-track:d66414e8966ec7815d7dbaa3d78eb7bdea2ed037805de37edd06dbb566151a8b` |
| 38 | `theorem` | [uncurry](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/uncurry.md) | 273 | `result-track:252ea8be26aa6a69768379ec52b81b6a8545a7a1850efef7c46708fe72dc99ef` |
| 39 | `theorem` | [iterate](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/iterate.md) | 283 | `result-track:15d8a005a2ef94adc9956853bd204cf9d21c721ec5ebb1061f59dd13fe63f289` |
| 40 | `theorem` | [edist_iterate_succ_le_geometric](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-iterate-succ-le-geometric.md) | 288 | `result-track:8a13ac537586f397dbc05a2542cc1c4872b01508653b21b68c3a140eb0dbeb18` |
| 41 | `theorem` | [mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mul.md) | 294 | `result-track:626801943900a4aa57eb20c9ff4ef59fa805497b0d694c2f5a97d14708a3c5fb` |
| 42 | `theorem` | [list_prod](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/list-prod.md) | 301 | `result-track:271862aca330ffc859f358c6ed821619f311aa8ecd8813f3c08200a91b70a824` |
| 43 | `theorem` | [pow](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/pow.md) | 309 | `result-track:0b4f491eac333467b2c0786f87ed3f200ac0370a0cbba5593280b3146c6d9ed1` |
| 44 | `theorem` | [of_dist_le'](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-dist-le.md) | 324 | `result-track:2db1bb30fe75d9864dbb35975d6d438dd484d571a40bce2d4749044b42dff3b5` |
| 45 | `theorem` | [mk_one](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mk-one.md) | 330 | `result-track:1f6caaa29ee0c385aae434d660bce3d5ef88fcfcdaf2785516c78cb531a308a8` |
| 46 | `theorem` | [of_le_add_mul'](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add-mul-source-edition-2.md) | 336 | `result-track:8ed8aeff37d806b11a23cf25fb0325a138a667b70750d3b8184dbacfaa493f9c` |
| 47 | `theorem` | [of_le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add-mul.md) | 344 | `result-track:2d25788e5c587d2d88ae078670c7348baf6619c2aeb2c89337802de236749f02` |
| 48 | `theorem` | [of_le_add](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add-source-edition-2.md) | 348 | `result-track:89b77eefaa3d9f65b071e4a603d933ccf4df0dc61805a516bf15da68188b1f00` |
| 49 | `theorem` | [le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/le-add-mul.md) | 352 | `result-track:06fcbb04a8041a4167ecc159728842c4002f3ff443448f761199a64025be1995` |
| 50 | `theorem` | [iff_le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/iff-le-add-mul-source-edition-2.md) | 357 | `result-track:9a9f5435aca98e75de853523f61349669b4e9e4820da84eecd32df7568be582e` |
| 51 | `theorem` | [nndist_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/nndist-le.md) | 362 | `result-track:eecf6d44042af72ff066a7f6ed4c9c1a3813da85cf9afe4bc8f361e494200e71` |
| 52 | `theorem` | [dist_le_mul_of_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist-le-mul-of-le.md) | 366 | `result-track:49475109dd41b815729be33002297cff0d4747c67d252e11b09ad2a6a6ea56d2` |
| 53 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mapsto-closedball.md) | 370 | `result-track:fbb72389718a2803c5fef6d62db689e3671f8abc5eec46e8bed7ba74dff917b9` |
| 54 | `theorem` | [dist_lt_mul_of_lt](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist-lt-mul-of-lt.md) | 375 | `result-track:4304a20447995101c031c3484190ca9fadd445bed781fc8a8a730a50ad404a7f` |
| 55 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mapsto-ball.md) | 380 | `result-track:e49fff84f5469750489ce1cfb84376c3f8a072baf15d8b08969a229bea44068e` |
| 56 | `def` | [toLocallyBoundedMap](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/tolocallyboundedmap.md) | 386 | `declaration-track:01c078122433f1c8a94881664d274e0048af333a696a3f9b20020ad358aa83aa` |
| 57 | `theorem` | [coe_toLocallyBoundedMap](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/coe-tolocallyboundedmap.md) | 394 | `result-track:40ab0f2a485ac83f3fd7fd92071fe7f301905e7278849e5cc2ec5d902e5d1127` |
| 58 | `theorem` | [comap_cobounded_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/comap-cobounded-le.md) | 398 | `result-track:bf6ec7dfb1e51c3958fa9fa6b75c968e90f409da1d4839db07c50c449b5f7e39` |
| 59 | `theorem` | [bounded_image](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/bounded-image.md) | 403 | `result-track:5158bedf758a8c20a9782f42de1096961272ca28f002931b1a4d73a016e8fdbb` |
| 60 | `theorem` | [diam_image_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/diam-image-le.md) | 410 | `result-track:70bc78a2781f5156a13bef016a6f9411891dccc7d48c028bd51af988bafcaace` |
| 61 | `theorem` | [dist_left](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist-left.md) | 417 | `result-track:32eca620f4491e7ce0cc9853233d1ba73dd8fee87db79c822c61c9b0aaf4c940` |
| 62 | `theorem` | [dist_right](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist-right.md) | 421 | `result-track:2294708dcfab97aa05e4be34409be783d4be253fde24c2f32932b4eb61960b25` |
| 63 | `theorem` | [dist](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist.md) | 425 | `result-track:ae021b25f4d2cf9efc0e5f9d11ab44d4dd0b620bd4e152c5d8ae2d7d8919250a` |
| 64 | `theorem` | [dist_iterate_succ_le_geometric](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/dist-iterate-succ-le-geometric.md) | 430 | `result-track:00ef6b6e69458851fc1c0cf42bb2c7f34a5391ae18a6373ff8e69d94e58307e4` |
| 65 | `theorem` | [Metric Space Lipschitz Namespaced](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzwith-max.md) | 436 | `result-track:f44e2872ff17e42bbf9c71ad2bf8416bd7b6d7afb2881a936ff423cd1b36ea10` |
| 66 | `theorem` | [Metric Space Lipschitz Namespaced](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzwith-min.md) | 441 | `result-track:363273d5e4c22064f870c40832e4f99ccf39833507862d938e3e089c88492ee5` |
| 67 | `theorem` | [max](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/max.md) | 452 | `result-track:49a92bc7aee0aad5357022761db59161f374dd184d1189afb0000f0b3663654d` |
| 68 | `theorem` | [min](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/min.md) | 457 | `result-track:c57ee00b985fb37bb37a01e8318029c0c5b6de82f76308d856725d233b1e87da` |
| 69 | `theorem` | [max_const](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/max-const.md) | 462 | `result-track:0b97aa04f32733c863cb89f8c802e746d4c029f451d45394820224ed6b0e0f7c` |
| 70 | `theorem` | [const_max](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/const-max.md) | 466 | `result-track:e8f20b03a13c946305f744d8b96b33ab98726e84de9e1fbb3221471d934e7ede` |
| 71 | `theorem` | [min_const](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/min-const.md) | 470 | `result-track:69fdc5049241a6a6bc9a242c3c603951c7d0a2c04655ab68311450b480a3368f` |
| 72 | `theorem` | [const_min](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/const-min.md) | 474 | `result-track:6c53a36e0ba4411839128b120c7db5becb94974608a2c15fce14d88f70131631` |
| 73 | `theorem` | [projIcc](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/projicc.md) | 480 | `result-track:68635505684c6e74741715dfd0b2026729617bbbfb34d9559a286307c07ee359` |
| 74 | `theorem` | [Bounded.left_of_prod](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/bounded-left-of-prod.md) | 490 | `result-track:4ae5373d25192f950b71b16ef58464a7ea5eeaf2d5b5510e7fc84346c38ebbff` |
| 75 | `theorem` | [Bounded.right_of_prod](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/bounded-right-of-prod.md) | 494 | `result-track:489ef724f89e03f9716826d6fea05869e3c023205c0a836132373eabc719d553` |
| 76 | `theorem` | [bounded_prod_of_nonempty](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/bounded-prod-of-nonempty.md) | 498 | `result-track:9b3e968046608c1d0248fef131d822b9676d615516e76efc07ced2bee63df815` |
| 77 | `theorem` | [bounded_prod](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/bounded-prod.md) | 503 | `result-track:7b52796a8d0cf8ba6c33fdb111376e81c8ccd085af7d8932d325ee7b377bd8cf` |
| 78 | `theorem` | [uniformContinuousOn](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/uniformcontinuouson.md) | 517 | `result-track:019473fc19cf42b7319dee02b1832d14ebd15b6130b1cc479d459d9a2a13be14` |
| 79 | `theorem` | [continuousOn](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuouson.md) | 521 | `result-track:5aed2c107391dfc04a8f086d4447d248b7efc2d1d05baf4db63f33e47d817858` |
| 80 | `theorem` | [edist_le_mul_of_le](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-le-mul-of-le.md) | 525 | `result-track:5110b9091939df9231560df701e06f68984b1d2332d6c439fc408c752803e602` |
| 81 | `theorem` | [edist_lt_of_edist_lt_div](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/edist-lt-of-edist-lt-div.md) | 530 | `result-track:3c653a95f319eb3e3b351ff8ccabe065e3bcc08a8c8daafbf3451e05ff258e32` |
| 82 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/comp.md) | 536 | `result-track:08f3d670f01706b4185d07f516c553a6771e2157cc207b747195c2f810860f2a` |
| 83 | `theorem` | [of_dist_le'](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-dist-le-source-edition-2.md) | 549 | `result-track:c916b10cfce53183848b3c4aab96252253a22b61e8b09c2bb443b27a2c0738dc` |
| 84 | `theorem` | [mk_one](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/mk-one-source-edition-2.md) | 555 | `result-track:399bafea2e0b12c52686787902a4abc83d07fa1c4a00c723fe2ab91c8f44fe24` |
| 85 | `theorem` | [of_le_add_mul'](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add-mul-source-edition-4.md) | 562 | `result-track:a842a90308a8d573454b467c2c6e4696a63dc91eae27543f2fe030e9e2fc8445` |
| 86 | `theorem` | [of_le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add-mul-source-edition-3.md) | 572 | `result-track:97c8afd184cce4c58e123598c63eafbe976143495a3a333e419557b9c786b5ff` |
| 87 | `theorem` | [of_le_add](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/of-le-add.md) | 577 | `result-track:39ea29d137aa49433ecc76a3089fba8ab86b3985a95df48f158074dce6b707c2` |
| 88 | `theorem` | [le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/le-add-mul-source-edition-2.md) | 582 | `result-track:e3c28ca5aa955ed6720769082f7ee8db957f52aea0075fb3d29893afbc07f1f2` |
| 89 | `theorem` | [iff_le_add_mul](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/iff-le-add-mul.md) | 587 | `result-track:3a798d56257b5e0ca36caace0fd883e5d50c869815a0ae3b2e1ac4d4206a6b71` |
| 90 | `theorem` | [continuousOn_prod_of_subset_closure_continuousOn_lipschitzOnWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuouson-prod-of-subset-closure-continuouson-lipschitzonwith.md) | 603 | `result-track:00cf7504e92f1106004f9569c679eaee13aa9d4c3f55c38fed76436820d7c11f` |
| 91 | `theorem` | [continuousOn_prod_of_continuousOn_lipschitzOnWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuouson-prod-of-continuouson-lipschitzonwith.md) | 639 | `result-track:79ddf30771559a754218f872749640a759db2a68d880dbad37a0a1a065ffe522` |
| 92 | `theorem` | [continuous_prod_of_dense_continuous_lipschitzWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuous-prod-of-dense-continuous-lipschitzwith.md) | 654 | `result-track:d7e35e482b00a5c7ec247a6b545d2da3781abfd6d188eeda113b38e132328065` |
| 93 | `theorem` | [continuous_prod_of_continuous_lipschitzWith](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuous-prod-of-continuous-lipschitzwith.md) | 668 | `result-track:acca60481904603750e480c7ab2db5bbf78301030d8aee8099417f122a91c6ab` |
| 94 | `theorem` | [continuousAt_of_locally_lipschitz](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/continuousat-of-locally-lipschitz.md) | 677 | `result-track:2b980cc2392ff11b36a5b4cb973ad2ac0f5f7daeea5a22280e7f216b2f0d8b37` |
| 95 | `theorem` | [LipschitzOnWith.extend_real](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-extend-real.md) | 690 | `result-track:c9c6b75e5776d1aa2720b8cd20244ad017524b3658333c54aab33c1e07846f4e` |
| 96 | `theorem` | [LipschitzOnWith.extend_pi](../../../../GeneralTopology/MetricSpaceLipschitzNamespaced.lean/declarations/lipschitzonwith-extend-pi.md) | 727 | `result-track:8a80f2da2fc9d41b1d553f220be65462e4edd8b5ec83b54eb7ed5a894afcf2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95842540c75bcfbaf5baabbc116dc554c460761bb9cee1ba464964c21d288d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Lipschitz/Variant2dff0e8a41bc6cd4ec913f56042e69597b3c38c4e6041967fc32dde0c57c1621.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
