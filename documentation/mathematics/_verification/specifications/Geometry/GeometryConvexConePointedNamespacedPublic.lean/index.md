# Verification target: Geometry Convex Cone Pointed Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f87a14a559c762ea68fc75b1c72223d69030ca30",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f87a14a559c762ea68fc75b1c72223d69030ca30`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PointedCone](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/pointedcone.md) | 42 | `declaration-track:19cce172ca186ed8159515df735366d28a40db7e4fe0edbd223020698dff7796` |
| 2 | `abbrev` | [ofSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule.md) | 57 | `declaration-track:f4650e3024cfa09c0bc315f6b578e8ffba23c244d72189abc213e6710209d9fd` |
| 3 | `instance` | [(anonymous)](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:adce98432a8c507ca934e099e9ae6de4cbefe20606b7171d6440c1b79f0620bc` |
| 4 | `lemma` | [coe_ofSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/coe-ofsubmodule.md) | 61 | `result-track:4732734cbc602e4cc80754ff6b6bd45574ce193b6eb1215de860a7611c28ae93` |
| 5 | `lemma` | [mem_ofSubmodule_iff](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-ofsubmodule-iff.md) | 63 | `result-track:0e4f1fa2aef801fdeee0d27775a3836d59d5245df53d50a7561c5a84c78a5e6e` |
| 6 | `lemma` | [ofSubmodule_inj](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-inj.md) | 65 | `result-track:10048207bb3155cef3326ecb984aeba8152ad1c2b2e959a1693a68a36548db68` |
| 7 | `lemma` | [ofSubmodule_le_ofSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-le-ofsubmodule.md) | 68 | `result-track:57f140a955c8041ddc85671d5c07137c9e53eab91c22542f9df1e997f2ef237e` |
| 8 | `lemma` | [ofSubmodule_lt_ofSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-lt-ofsubmodule.md) | 71 | `result-track:875c797966e0431e3b591a64f8a5b66fdd79ce6fc811ccf808a16bcce7aceb79` |
| 9 | `abbrev` | [ofSubmoduleEmbedding](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmoduleembedding.md) | 75 | `declaration-track:f1f9c805783b1f78caf83f835458e056819840961db0ce5f207de5702a672cfc` |
| 10 | `abbrev` | [ofSubmoduleLatticeHom](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodulelatticehom.md) | 79 | `declaration-track:9e97ad8069e1767283181380300fff2a73ca6386228f58f119e6678db4c56291` |
| 11 | `lemma` | [ofSubmodule_inf](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-inf.md) | 82 | `result-track:6b57922f8ab58ee23eb9c9148c11e27d293fc4644d0fa58a5b0838327bbc2e1a` |
| 12 | `lemma` | [ofSubmodule_sup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-sup.md) | 85 | `result-track:6cbf1b4c95eaf0cf52888fc344e55adbcc108ccd50c1e66eeebc45852a122618` |
| 13 | `lemma` | [ofSubmodule_sInf](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-sinf.md) | 88 | `result-track:9692f0177e4f3bd80a4fd8662ae9ee288b2f44535f4dcfdb2139adb2963d314f` |
| 14 | `lemma` | [ofSubmodule_iInf](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-iinf.md) | 91 | `result-track:b4347c0ef2ccf0121aebf28dda2c58dd865444d046fc887e2225f304a271cf74` |
| 15 | `lemma` | [ofSubmodule_sSup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-ssup.md) | 94 | `result-track:a1f1ec72287f8d52952de083ccef75b28e5f3f9b78c13dd520d58b1388d7e613` |
| 16 | `lemma` | [ofSubmodule_iSup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-isup.md) | 97 | `result-track:20be9b8be6366a3f6ce17295e9f8195d9915069207957b8dca69eb4fd4b913d3` |
| 17 | `lemma` | [neg_ofSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/neg-ofsubmodule.md) | 103 | `result-track:84e952b76b7ca3da0337ca3e09846625b9be13d2d5a6fd626b82fb15ec09c865` |
| 18 | `def` | [toConvexCone](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/toconvexcone.md) | 115 | `declaration-track:bcf74c4ddfa91238ed25f531ebd51d5245ed871276266dc71bb3695538ff286c` |
| 19 | `instance` | [(anonymous)](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/instance.md) | 120 | `declaration-track:81d2ddb3e3ff483838fd1daf53e984b6ae4b2dd5367771f622ce5e12142d702d` |
| 20 | `theorem` | [toConvexCone_injective](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/toconvexcone-injective.md) | 123 | `result-track:7c701a76ad008848786f4941570a834267e74613609a9ea5ee80bb55b3924c70` |
| 21 | `theorem` | [pointed_toConvexCone](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/pointed-toconvexcone.md) | 127 | `result-track:a680e2993ccfa48ac4f8a5bd33b7d9578a19052992357396018b55a36efe0380` |
| 22 | `lemma` | [mem_toConvexCone](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-toconvexcone.md) | 130 | `result-track:483706c1d174f97166a06362bcc6015bdaf95779cb20a61bda44fdd9a17db6fe` |
| 23 | `lemma` | [ext](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ext.md) | 132 | `result-track:3d4261d704e3cdcb08269ae89f71c727aea3277a6d9ee1357c914246725034f0` |
| 24 | `lemma` | [convex](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/convex.md) | 134 | `result-track:fc36c91ed5dfef9df3ac50b54cb4d335c0fab8b45e67929abb871033209edbbc` |
| 25 | `lemma` | [smul_mem](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/smul-mem.md) | 137 | `result-track:d0cb2992afd7e41c04ee085565268387a2272456d2e173a1cc4188024fd5b28c` |
| 26 | `lemma` | [smul_mem_iff](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/smul-mem-iff.md) | 140 | `result-track:ecd1af73b480d6220f7a7340e632d451d85d881eb35231721442b112bbf6af67` |
| 27 | `def` | [Geometry Convex Cone Pointed Namespaced Public](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/topointedcone.md) | 146 | `declaration-track:615447ad660f7092cc66759e4545174868bf0673c3edeccf57e9b760b9c305a1` |
| 28 | `lemma` | [Geometry Convex Cone Pointed Namespaced Public](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-topointedcone.md) | 161 | `result-track:0b77cea9d33a6122e9196adfdf3c2b2e9de62f6f2c63933dffba3610e45fac3b` |
| 29 | `lemma` | [Geometry Convex Cone Pointed Namespaced Public](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/coe-topointedcone.md) | 166 | `result-track:65bb9a70cbda6ecfdc25b98557052669bc5fcabab7e1ca268b5a3260099d0cf1` |
| 30 | `lemma` | [Geometry Convex Cone Pointed Namespaced Public](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/topointedcone-top.md) | 171 | `result-track:83dc12d8999902233ef03e5ab160f2bbdbf3cb55716e2449b7703b2a99491844` |
| 31 | `instance` | [(anonymous)](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 173 | `declaration-track:d5982d44aa950401367c2bf3045e11f3017b79288933d7eb5561d0b29b06d4ce` |
| 32 | `def` | [ofConeComb](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofconecomb.md) | 186 | `declaration-track:e79f847db757a0840dad6742192a959e6cddfa6b1770548ead2105e759404fe7` |
| 33 | `abbrev` | [hull](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/hull.md) | 196 | `declaration-track:1a4ce4b662b8ac9e97513f57be75ebcddcb39b3d81616be3ad62350b277f5f25` |
| 34 | `lemma` | [subset_hull](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/subset-hull.md) | 198 | `result-track:68f82cb1c82e702c9664f936efecabcc5942fdf59955709d4226d1583a17d695` |
| 35 | `lemma` | [hull_le_span](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/hull-le-span.md) | 204 | `result-track:eeaa1672cc7b905c91e343ec103eb2b88e1316e306cefbaa80d732053ab6d002` |
| 36 | `lemma` | [mem_hull_set](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-hull-set.md) | 207 | `result-track:56916fca885fefe0c14de0ac0c43a96a2a4b01e55f1db142ea3043ebae5ec1bf` |
| 37 | `def` | [hull.unexpander](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/hull-unexpander.md) | 227 | `declaration-track:386718add6b2490f78e98159ebb57843cb6973c0c335b0f0b9ea6306bbfdc630` |
| 38 | `lemma` | [mem_hull_singleton](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-hull-singleton.md) | 233 | `result-track:a6dde8317524c55487d1ee9ddc6c37b9a2db1d91f7f0a4c30622c3004fffd650` |
| 39 | `theorem` | [le_hull_singleton_iff](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/le-hull-singleton-iff.md) | 238 | `result-track:cbffeaee3c41db4d37239a87957391170292f3b363cbad29d0c57d1dd60156b0` |
| 40 | `def` | [map](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/map.md) | 264 | `declaration-track:13878fd8ebc830e32f78a9ef614fab2f464fb2b93871c61daf19845db1230642` |
| 41 | `theorem` | [toConvexCone_map](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/toconvexcone-map.md) | 268 | `result-track:3ad1a078acbb2448326e008fd6140af111f49d40b47c22979e69f7395db87af5` |
| 42 | `theorem` | [coe_map](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/coe-map.md) | 273 | `result-track:3be281edcf1507f7248152951eeab6fd8b86c7c7edd321fd36b890332039cca8` |
| 43 | `theorem` | [mem_map](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-map.md) | 277 | `result-track:e85be6f68a2ee5e3d388de658e61023b3d387b1243e6ecb5a0d818fdd0fe881c` |
| 44 | `theorem` | [map_map](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/map-map.md) | 280 | `result-track:b9482f55eb67524cacc20d2803206b824055791f9fa01b90a26b6788c0a97deb` |
| 45 | `theorem` | [map_id](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/map-id.md) | 285 | `result-track:3ba241af273bc9c7967bc5d0327a26de31a03fc91f767a1105919c42a446ea80` |
| 46 | `def` | [comap](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/comap.md) | 289 | `declaration-track:5edf46d8530b4f012693e12ae25e3f8e9e55452a2397ba144f48a9e05ce2745f` |
| 47 | `theorem` | [coe_comap](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/coe-comap.md) | 293 | `result-track:818ca93d8f6adec74abe09dee38d066d200d9a3827958fc3e9750018c4dff438` |
| 48 | `theorem` | [comap_id](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/comap-id.md) | 297 | `result-track:8250c4e16d3732e7424f634ae2da8ae8f70596017b572e7665ed782dd67941fb` |
| 49 | `theorem` | [comap_comap](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/comap-comap.md) | 300 | `result-track:e22a270d320415e119ff73568432c8034219954e07c95ce9b56e250f1fd3eab3` |
| 50 | `theorem` | [mem_comap](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-comap.md) | 305 | `result-track:0306dc1f55fc64dad4deee4d6c67584495155b05b4781362cf9c295ee1f8d100` |
| 51 | `def` | [positive](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/positive.md) | 319 | `declaration-track:6872002052226dd8be7e81993b87dd2ba9d95ca70486f822694bfbe8bc2635c8` |
| 52 | `theorem` | [mem_positive](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-positive.md) | 324 | `result-track:82369ebeff74b5f30485191cc779a2e16f0210395e0b8fd09959ca6996198815` |
| 53 | `theorem` | [toConvexCone_positive](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/toconvexcone-positive.md) | 328 | `result-track:62534d666759dbcb312445dd738970d5e958f9306b7bdab4d9dd425c2f6767c8` |
| 54 | `lemma` | [sup_inf_assoc_of_le_submodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/sup-inf-assoc-of-le-submodule.md) | 337 | `result-track:7886b5d12c8fd71281b04bd175e9a749c25eb2473dc021bc6cdd8c3ccb79ee37` |
| 55 | `lemma` | [inf_sup_assoc_of_le_of_submodule_le](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/inf-sup-assoc-of-le-of-submodule-le.md) | 341 | `result-track:166f15602b1a99a57306d71c396eeb74f7670bbec77f75d5f473d959a8e6ea3b` |
| 56 | `lemma` | [to_isOrderedModule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/to-isorderedmodule.md) | 354 | `result-track:bb07e2aa95654207d4e575056d89af9b857f3be84dee7d8121d2b7b6450367a3` |
| 57 | `def` | [lineal](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/lineal.md) | 365 | `declaration-track:6f69f7f29b4a7f6a188900171af5f9e27d0161e724de9ddb06199b07b64ede77` |
| 58 | `lemma` | [ofSubmodule_lineal](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-lineal.md) | 373 | `result-track:4d117fc716c78a09aec1a5c7eb61ddcc182f1f3473093a1aa2b3bdd371e2e229` |
| 59 | `lemma` | [mem_lineal](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-lineal.md) | 375 | `result-track:c5b39af12c759f4d30f7f6c106562a301d611551eb15112d51d265cc8c43e224` |
| 60 | `theorem` | [support_eq](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/support-eq.md) | 377 | `result-track:5e2e240e149fabe7c2f08d58576ed4a7938c6987d480a068bedaddcd9aa5dd9d` |
| 61 | `theorem` | [gc_ofSubmodule_lineal](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/gc-ofsubmodule-lineal.md) | 380 | `result-track:7fbe7b6c3f026354847501f1a03a47256b3cd5138f78e1f97a1c42e0cabbdfcc` |
| 62 | `lemma` | [lineal_le](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/lineal-le.md) | 384 | `result-track:1e7b768dd4d37757e2f4dd694ee597d96d03565d3d3c305097a78cd943f0d970` |
| 63 | `theorem` | [lineal_eq_sSup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/lineal-eq-ssup.md) | 386 | `result-track:a6e859071eaf4ce1e90f193f58b490cf1763dcaa61ac659c6a5727b3d3219993` |
| 64 | `lemma` | [salient_iff_inter_neg_eq_singleton](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/salient-iff-inter-neg-eq-singleton.md) | 397 | `result-track:6bbb24b1fbe0c4d316dfa85fb23d523422ba3d7236bb9fc8cdfda92db3fbc860` |
| 65 | `abbrev` | [toSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/tosubmodule.md) | 410 | `declaration-track:8206a64290173005c2dd40726b6acc7907a7a43f9aec9e841bd125f4dc8bcce2` |
| 66 | `lemma` | [ofSubmodule_toSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/ofsubmodule-tosubmodule.md) | 423 | `result-track:4ea5d8b962bd956195080355ba194d2a866a2ec956e60e20748515a2758f53f7` |
| 67 | `lemma` | [coe_toSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/coe-tosubmodule.md) | 425 | `result-track:469ced8e55ea71494a59bdacc04330d8f645469ba2ab0c3b212d3b63780d810d` |
| 68 | `lemma` | [mem_toSubmodule](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-tosubmodule.md) | 427 | `result-track:b2c28c84818fc31d4beefb22ef73b5ba23d61eacd228299d92fd51f162295d26` |
| 69 | `instance` | [(anonymous)](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 429 | `declaration-track:b76bc8a5e24153aa016875e41d22426844c41f612e30f86a7abe751827faed32` |
| 70 | `lemma` | [span_eq_hull_neg_sup_hull](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/span-eq-hull-neg-sup-hull.md) | 434 | `result-track:23d1c5829c4bd915f0071bc51e3f5eaeaead68b5cdd663f6137a52876d61baad` |
| 71 | `lemma` | [hull_neg_pair_eq_span_singleton](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/hull-neg-pair-eq-span-singleton.md) | 443 | `result-track:59b71c611cd88e76c5c314bc4eb98f304ebfc17c758ac6a276405b92e8d32369` |
| 72 | `lemma` | [hull_eq_span_of_neg_eq](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/hull-eq-span-of-neg-eq.md) | 447 | `result-track:d22e90a794f6667eb5405f9f750202896c5e02904adf82b60489d51755df2bd3` |
| 73 | `lemma` | [span_eq_neg_sup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/span-eq-neg-sup.md) | 454 | `result-track:2fa98519f7b6e289ffb5f505dc43fdc40011892e4bc598efacf3385b7cecf4fa` |
| 74 | `lemma` | [mem_span_iff_mem_neg_sup](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-span-iff-mem-neg-sup.md) | 457 | `result-track:0029d6a115c66486ec3974006cd4f333b5f01475160034cce47b7be626412d85` |
| 75 | `lemma` | [mem_span](../../../../Geometry/GeometryConvexConePointedNamespacedPublic.lean/declarations/mem-span.md) | 460 | `result-track:dd88a4e3d816a3b1494b2823c6c7397582b20d24d6dabf820d9792673934b373` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e812ea460d2f2b109aab707cacd2ca7fd1ae7e255a65c5d1270d85647ef0bce5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
