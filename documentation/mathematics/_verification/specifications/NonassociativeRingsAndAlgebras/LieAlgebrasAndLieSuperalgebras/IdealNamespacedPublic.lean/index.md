# Verification target: Ideal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f233a06d3bee55297e90179f85e1272bd0a990",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f233a06d3bee55297e90179f85e1272bd0a990`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LieIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal.md) | 54 | `declaration-track:ca36d59739ec38ef004881900bb7d6e35ebacaec014373cdb5bddd990740573a` |
| 2 | `theorem` | [lie_mem_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lie-mem-right.md) | 57 | `result-track:5a26c1d0dc03a86829b127a75df10520fd119faa902eeaf82db65978ebe6f565` |
| 3 | `theorem` | [lie_mem_left](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lie-mem-left.md) | 60 | `result-track:4376a26e36d311d0d5beabe05518ee95b71a3ea9b0054930aa3a9804ef88c099` |
| 4 | `def` | [LieIdeal.toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-toliesubalgebra.md) | 64 | `declaration-track:91935498611e5e6534a2ed06e91c7a7ca45d06db7a7ceb38af74d71fea089415` |
| 5 | `lemma` | [LieIdeal.mem_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-mem-toliesubalgebra.md) | 67 | `result-track:c10736e7eb2e6c8b328f79095b5b79e689338ea6af37015a42e909422844b078` |
| 6 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/instance.md) | 71 | `declaration-track:2ceb3b706091715b2d28019e6a8958466257ccba8a037d45c7a93a20a7b3ba51` |
| 7 | `theorem` | [LieIdeal.coe_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-coe-toliesubalgebra.md) | 75 | `result-track:0189106a0643f1c4d09dcc040dc89035ad4deca248649ace75bcf7fad9a1bf51` |
| 8 | `theorem` | [LieIdeal.toLieSubalgebra_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-toliesubalgebra-tosubmodule.md) | 79 | `result-track:f7bca7348f5abc10b0afd734b8b16c3d31195eea5c22c0af0634bff1e8ede10e` |
| 9 | `instance` | [LieIdeal.bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-bracket.md) | 83 | `declaration-track:0b9a07929a89b4e5d5c5b59a82d0333bfc1c5fa4a3aff832104cad24baebf655` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:c1327847f8f32c7153e7c67956e4616930a07ee6d8e3f6925ffb38e11ecc290d` |
| 11 | `instance` | [LieIdeal.lieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-liering.md) | 90 | `declaration-track:ab00ad08ddf57893090b3b8a1104cb59b633051b3c2a85bab47e55b0d880031c` |
| 12 | `instance` | [LieIdeal.lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-liealgebra.md) | 94 | `declaration-track:54d7da2cfa6b4cbc4bf668db4dcf4f10a213c46a8ce8cca5e1bbde410e6c0081` |
| 13 | `instance` | [LieIdeal.lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-lieringmodule.md) | 98 | `declaration-track:e0cb81005926e6d10b5afa2d37b4a055db4077bd1a12a27ba3165e9b120d292e` |
| 14 | `theorem` | [LieIdeal.coe_bracket_of_module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-coe-bracket-of-module.md) | 103 | `result-track:3d8ca4977438f2ce6a935f916d8d47bd4112dc941b1180e5082db634945a4aee` |
| 15 | `instance` | [LieIdeal.lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-liemodule.md) | 109 | `declaration-track:281036cdd88a1b5294797d04d99704c16b4eb514ead07d1233546eca13f9a831` |
| 16 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 112 | `declaration-track:cf470ef87158396f07f91d69d2defa91d8ce58888ffc4a9d00ec5ddc0c7440e8` |
| 17 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 115 | `declaration-track:dad6b66911924848261337862947ab2eac2287958ac06b654e0de360fcf63c74` |
| 18 | `theorem` | [exists_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/exists-lieideal-coe-eq-iff.md) | 126 | `result-track:fc257701ffbe46832e4b61b594dab731589f2f801b967e939d38bb8582ca5f8f` |
| 19 | `theorem` | [exists_nested_lieIdeal_coe_eq_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/exists-nested-lieideal-coe-eq-iff.md) | 131 | `result-track:d62ba1727678a2f244fe3929fd11743a20457160a632dbc3beef7f13ad972ae4` |
| 20 | `theorem` | [top_toLieSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/top-toliesubalgebra.md) | 154 | `result-track:63bec1b3fe99f9a80a5bc7342bc3fe4a21a9ad1930a33786e1872e325baf8ca8` |
| 21 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map.md) | 162 | `declaration-track:8544534b3dbf1cfa8a291e9fbe7e95a7e781a569fbc30bdd5476d9ce6c720cd4` |
| 22 | `def` | [comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap.md) | 169 | `declaration-track:29f7b821a35c78e7944e456669002fdfe9d62bbe5432bfce2ab2baa69e7daaec` |
| 23 | `theorem` | [map_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-tosubmodule.md) | 180 | `result-track:ff6fbaa2a53b99b1a834d5c91dcde3747a7f6c130c817778e79ca9b3ec0e6f57` |
| 24 | `theorem` | [comap_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-tosubmodule.md) | 185 | `result-track:e85722b80a05b42a3976658eb193147ee08a175e92d5d3868915e41710d047ed` |
| 25 | `theorem` | [map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-le.md) | 189 | `result-track:ee0b7bb03bc4cc62e0a520b2168a772fb1681208da29830968822f94b458eb81` |
| 26 | `theorem` | [mem_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-map.md) | 194 | `result-track:dddb8eae2c4274fca78e12db30a473ce48a531cc2b940aa2f063447148078591` |
| 27 | `theorem` | [mem_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-comap.md) | 200 | `result-track:e5cfa17000922ae04125481254eaead937ffa5f5a1ba1bcb7fd8716fee6883b7` |
| 28 | `theorem` | [map_le_iff_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-le-iff-le-comap.md) | 203 | `result-track:f111f89c5b451727d37304bacf74ee69da7d5f0a6893ea9018ec0498115bb0c4` |
| 29 | `theorem` | [gc_map_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/gc-map-comap.md) | 208 | `result-track:9ba343fdab374956928710c95be172165e24528c41188b1df740ce7b1348708f` |
| 30 | `theorem` | [map_sup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-sup.md) | 211 | `result-track:65e61a3b45400482530bc7248b6374ae7d373002d2aa3297e23c694e61e4901a` |
| 31 | `theorem` | [map_comap_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-comap-le.md) | 214 | `result-track:780b8119cfb62486faa54694237bfa084699e42d6bced9117373807e4295c892` |
| 32 | `theorem` | [comap_map_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-map-le.md) | 217 | `result-track:e8eba5e71b202b9443a966751b4dd08b2cfc3a3171f653fca72951a5a59a2502` |
| 33 | `theorem` | [map_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-mono.md) | 220 | `result-track:cdb7ce0e2fe2b880fe6a3af29f5d15842cccb405b088a062d90a574f8f9d36c9` |
| 34 | `theorem` | [comap_mono](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-mono.md) | 225 | `result-track:4ad0fb3a71263731863878b90d591f6a950f46e133a29f2a5253be4e07f21439` |
| 35 | `theorem` | [map_of_image](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-of-image.md) | 230 | `result-track:443dee760b52e9ba48568bc3a86d360ec8bea1ade06e06885d458f2eec277cd7` |
| 36 | `instance` | [subsingleton_of_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/subsingleton-of-bot.md) | 250 | `declaration-track:7d44ef818aa2056c1cf0756272b1ec397b99c4e4408674564bb16ff13d68c679` |
| 37 | `def` | [ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/ker.md) | 261 | `declaration-track:f3df1e68261ea624f3bd16e1b015af619c86410f3da1330a2085d0a89d3d8a68` |
| 38 | `def` | [idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/idealrange.md) | 265 | `declaration-track:b17948707b67af012568aaafc12b888139a0f84ed2dab4a2ab792d6ad2fac2f0` |
| 39 | `theorem` | [idealRange_eq_lieSpan_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/idealrange-eq-liespan-range.md) | 268 | `result-track:5b943f031e8d60ddb88b3dc52a1c353505d201713c71a33eede319e163062bd8` |
| 40 | `theorem` | [idealRange_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/idealrange-eq-map.md) | 271 | `result-track:c654a33367de5aea8f0c55d092188e146ac72b05b3229573d8251eb8ef0c0c4c` |
| 41 | `def` | [IsIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/isidealmorphism.md) | 277 | `declaration-track:1e4af25534def043440ccd97fd7320e2a0cf5cf6108172d985614a1c6a49fb89` |
| 42 | `theorem` | [isIdealMorphism_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/isidealmorphism-def.md) | 280 | `result-track:075c0588e68ec18f8538f3d1d36a07d22d062c0e7e89505052e767f6cbca7138` |
| 43 | `theorem` | [IsIdealMorphism.eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/isidealmorphism-eq.md) | 284 | `result-track:cf5f2e23198704529055cd8cb4f87dfcd3196429b8a39f9cf0f0098920f364b3` |
| 44 | `theorem` | [isIdealMorphism_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/isidealmorphism-iff.md) | 286 | `result-track:ed32cdabe53ca398983bfb26bf04076fccaec9dc73696ca95a863ae41927fca4` |
| 45 | `theorem` | [range_subset_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/range-subset-idealrange.md) | 296 | `result-track:95b43b88e7e3c1452d905f1762a6f348b746080c1f4db63450057a8bd785503f` |
| 46 | `theorem` | [map_le_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-le-idealrange.md) | 299 | `result-track:c0513243bd8797391cca3f246adc6ef9caf59d180d9eb4efc18798aed64de94d` |
| 47 | `theorem` | [ker_le_comap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/ker-le-comap.md) | 303 | `result-track:45a4e4467a04b5bc8853ff941d0687345b302a807f555135ba4314fb5e5c8725` |
| 48 | `theorem` | [ker_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/ker-tosubmodule.md) | 307 | `result-track:e0d1f97b14531dc79e866e4cd8810b24c0bb6256ce4a46f32fec721d9b17c820` |
| 49 | `theorem` | [mem_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-ker.md) | 312 | `result-track:dae8b38c4a20a25672ef2d038fd56bb3f986a29f8adb47f60671a1317e56b949` |
| 50 | `theorem` | [mem_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-idealrange.md) | 316 | `result-track:a97324fa4e49d4361371bea022b8fa4e0e7bbfc05b32931d9ff12848a535d960` |
| 51 | `theorem` | [mem_idealRange_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-idealrange-iff.md) | 321 | `result-track:1fc9d2da14b3f665c2d3aa46b381bdc833a6407d9a8947a5c132c08c704188b0` |
| 52 | `theorem` | [le_ker_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/le-ker-iff.md) | 326 | `result-track:570fb68d65359594261cf424cb6fa2ed31f1b686e9a28ff05497342653425431` |
| 53 | `theorem` | [ker_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/ker-eq-bot.md) | 331 | `result-track:33087bf98b56c56455e73e53c2a8dea42112e10235e048225d66bc472107ff4b` |
| 54 | `theorem` | [range_toSubmodule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/range-tosubmodule.md) | 336 | `result-track:c65894f5fd879b00623e1d87283a40a4940e095c06d18548fecd871b54b003ca` |
| 55 | `theorem` | [range_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/range-eq-top.md) | 339 | `result-track:26481646edb78e4503e224080a30466c94d02f241acc697acb37ad57acda404c` |
| 56 | `theorem` | [idealRange_eq_top_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/idealrange-eq-top-of-surjective.md) | 344 | `result-track:4888242adb64586dc6a3eb2aed0a6b4be627329612f735cc8274e414ce9891db` |
| 57 | `theorem` | [isIdealMorphism_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/isidealmorphism-of-surjective.md) | 352 | `result-track:a700d078d5c7ee6e287a29555ada45574e6471153eb7328e66356e5aa4ba16e7` |
| 58 | `theorem` | [map_eq_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-eq-bot-iff.md) | 363 | `result-track:21d6eab57d3ce9bf46956ea6eef7a4de4e4d03573770dddf782bcc69e059e858` |
| 59 | `theorem` | [coe_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/coe-map-of-surjective.md) | 367 | `result-track:7ac1c76c9aa5085b1a42e50f4aae6846f9ab2869cdcd6e15e6e315ca305f7a89` |
| 60 | `theorem` | [mem_map_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/mem-map-of-surjective.md) | 382 | `result-track:72992d37e3419ea41e369faba191ee3afb0851f52bc3da2df3f69669c385bf16` |
| 61 | `theorem` | [bot_of_map_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/bot-of-map-eq-bot.md) | 389 | `result-track:3f72a47c6138cb6675768f852267ca424f2a9b97a25f384cede5c86a2b1575fd` |
| 62 | `def` | [inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/inclusion.md) | 396 | `declaration-track:1e0d000ccefba13c9acb69a7e3b7a163c7d3d752cdca9aaa0dc3da77b76a3853` |
| 63 | `theorem` | [coe_inclusion](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/coe-inclusion.md) | 401 | `result-track:7b01625810077b25fa125fa2c575e3b652d4673644c4185b4943ab58631d0fdb` |
| 64 | `theorem` | [inclusion_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/inclusion-apply.md) | 404 | `result-track:a5304c52d4eaf188e2f5c54d2de52c0ece74e7556f89a4989f65f75d4856f4fb` |
| 65 | `theorem` | [inclusion_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/inclusion-injective.md) | 408 | `result-track:3e4f5e037a5522ba5d8131918fb3151e0b6186c6e205ec98bdbd60740e4e519f` |
| 66 | `theorem` | [map_sup_ker_eq_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-sup-ker-eq-map.md) | 413 | `result-track:32c6334f7b45825111fb863b329a577d27cd40396b974d6a186f6a4e0dc915e6` |
| 67 | `theorem` | [map_sup_ker_eq_map'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-sup-ker-eq-map-source-edition-2.md) | 424 | `result-track:5e25f76e1c6776e4403f5dd434da42ccd94202b1cc4ac9e50255715bdd8179b9` |
| 68 | `theorem` | [map_comap_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/map-comap-eq.md) | 429 | `result-track:a29882340e94ae0cfa5357b9deec5b1eb378a502070658285445cc780194648f` |
| 69 | `theorem` | [comap_map_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-map-eq.md) | 437 | `result-track:fc94488039001b5e88d240fa3915827a671c73b8e2e6b1f3c68253e7510ba355` |
| 70 | `def` | [incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl.md) | 445 | `declaration-track:3b839c4025176c198f3ef2cee808945553fd706588c038c5d0a428a704f916bb` |
| 71 | `theorem` | [incl_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-range.md) | 449 | `result-track:dfa9a7cd69c71ff28783b473255f2f1d37161d5f287d0d27f5bb939f6d9d18f8` |
| 72 | `theorem` | [incl_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-apply.md) | 453 | `result-track:11b2a38550514488cc3ce42e6ef4a1019179119905232af17095078ed69a09ee` |
| 73 | `theorem` | [incl_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-coe.md) | 457 | `result-track:60a5781b6c38fd2c93d5b26546ed91985e40b0d7a7ce13d392449380d009d5db` |
| 74 | `lemma` | [incl_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-injective.md) | 460 | `result-track:3d28244516ebf2d428c5f50753b19c5b372ea866fe7c86b35c17e741b9c2b05c` |
| 75 | `theorem` | [comap_incl_self](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-incl-self.md) | 464 | `result-track:3c369765b8552dd95c158785b0e5f0442806724bfa7d4aa3491eb86e620e31bb` |
| 76 | `theorem` | [ker_incl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/ker-incl.md) | 467 | `result-track:9c2c5b945e7dfa41a8fb204ec5cd0860a6b7ae34d1257113668782f1d9fa9ff4` |
| 77 | `theorem` | [incl_idealRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-idealrange.md) | 470 | `result-track:fcc3204abeb7aa4dddbeb66d828d388eff13710f2016d9b4a88f8b04d2b0ca56` |
| 78 | `theorem` | [incl_isIdealMorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/incl-isidealmorphism.md) | 476 | `result-track:5fd9c0b6ce0bb8b763304b9803b12314ffa710d2783815194fd511c9ebdcc5cc` |
| 79 | `theorem` | [comap_incl_eq_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-incl-eq-top.md) | 482 | `result-track:cff121d61c0a68c22960ec5d2a6feb35aec74490f58307dc1755a9f548ff9c9e` |
| 80 | `theorem` | [comap_incl_eq_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/comap-incl-eq-bot.md) | 488 | `result-track:86630eadc1e8fe0bc100d2e756a76c5257edf536794bbac92f2dcf6c440156eb` |
| 81 | `def` | [LieIdeal.topEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-topequiv.md) | 508 | `declaration-track:7e37fbbe1264d96f896ac85a050b93a463025532238172bef9b6b05947f4f0d2` |
| 82 | `theorem` | [LieIdeal.topEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/IdealNamespacedPublic.lean/declarations/lieideal-topequiv-apply.md) | 511 | `result-track:aa3154c9f13c427f9d4d613773e45e743af7f04176438655e1111eebea5ce9aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecf7301706e73df456354a95343dd25fa8997a6b779a66583445779256a256cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ideal/Variant2ad45e82e565b32f61141a40100697c03e80d507249c58c249d1c130eb261fda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
