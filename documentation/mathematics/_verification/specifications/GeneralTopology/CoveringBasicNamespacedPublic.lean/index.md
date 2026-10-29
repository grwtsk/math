# Verification target: Covering Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe1f79d0dfe2251d25e3cc2b15de0231a2fd54c0`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean.json)

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
| 1 | `def` | [IsEvenlyCovered](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isevenlycovered.md) | 48 | `declaration-track:caf6c3913e1cec9170fbb935d4629b33bbebd5ea187585d0ba297ba008f8e3c0` |
| 2 | `def` | [fiberHomeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/fiberhomeomorph.md) | 57 | `declaration-track:7c93345773fb63c3dbef100792cfab6fb6a4939a19fc006198e2bf3634dcb79c` |
| 3 | `theorem` | [discreteTopology_fiber](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/discretetopology-fiber.md) | 68 | `result-track:3dd2412f754817ca30a106fda7b2f18efcfc824b7f1ef9422178c4640a75128c` |
| 4 | `def` | [toTrivialization'](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/totrivialization-source-edition-2.md) | 73 | `declaration-track:8deabfe764e3f4a084ddf2b0d5e0d80491621d898e5fce0dc3cb48a7225d289c` |
| 5 | `def` | [toTrivialization](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/totrivialization.md) | 100 | `declaration-track:48eba531e93328141e0fc648b14d7e442e5f2b2fba2f74252b44cba72cbee202` |
| 6 | `theorem` | [mem_toTrivialization_baseSet](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mem-totrivialization-baseset.md) | 104 | `result-track:b1bc3feaf31f6f13cb7aa74b0ccaf0964e782c8b7017614eb60218349a9a2bd9` |
| 7 | `theorem` | [toTrivialization_apply](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/totrivialization-apply.md) | 107 | `result-track:c5b69e910eb9959c9f12e81bc0705fc48a19609605118f1618ea21e798e168b5` |
| 8 | `theorem` | [continuousAt](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/continuousat-source-edition-2.md) | 112 | `result-track:707d32db284f9cbeac26c56b3cf4e6dd6dda514351ddc665f1763efdf7150e42` |
| 9 | `theorem` | [of_fiber_homeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-fiber-homeomorph.md) | 118 | `result-track:00693578a4cdd85c53387b81b6f67de5d866734369771f0325cb6381b7a68174` |
| 10 | `theorem` | [to_isEvenlyCovered_preimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/to-isevenlycovered-preimage.md) | 123 | `result-track:8a3e417fd24007af3dd1b6402d89dad951582897b98e5fb65f2a6864152a07c6` |
| 11 | `theorem` | [of_trivialization](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-trivialization.md) | 127 | `result-track:a71cb80577a9d5812264ed4bbb464ce0b571819ce62db52328ebab40f1f4ebd2` |
| 12 | `theorem` | [of_preimage_eq_empty](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-preimage-eq-empty.md) | 143 | `result-track:4cf504dfabdbb6696bbbc670ada895bfa8b76437b8c3011498cde39d4677a821` |
| 13 | `theorem` | [restrictPreimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/restrictpreimage.md) | 151 | `result-track:1d0eaabcc54c5a061a948d10e0f40e25cafb2cc2529d55654be5cd1e73113ca2` |
| 14 | `theorem` | [subtypeVal_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/subtypeval-comp.md) | 159 | `result-track:fe3fedd7fefb145d47138be492ec43402b179be527b3eecd6626d042e9809f1b` |
| 15 | `theorem` | [comp_subtypeVal](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-subtypeval.md) | 167 | `result-track:428890def4ad7faa3817feb029c0c2862f957be566bff01ac031ec2490612cfd` |
| 16 | `theorem` | [comp_homeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph.md) | 179 | `result-track:2d78a31ecd4fc232d0f1b419f536daa1f0cf23986e0238edf39fa218dd03a55e` |
| 17 | `theorem` | [comp_homeomorph_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph-iff-source-edition-3.md) | 185 | `result-track:ddc7611c3f7bf8ce2739732ca2aae9ef39e12f7a710771e972db7afd19410ac0` |
| 18 | `theorem` | [homeomorph_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp-source-edition-3.md) | 190 | `result-track:f15ef6d3a3d8e1db65621ed68eb652737146042d88737229545f81157c76db26` |
| 19 | `theorem` | [homeomorph_comp_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp-iff-source-edition-2.md) | 197 | `result-track:1c7021083bcf4b6ec8258b05c010e7d4b529f635660a429db555ba851a877aaa` |
| 20 | `def` | [IsCoveringMapOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmapon.md) | 206 | `declaration-track:8161224565bd117d0a9b8aae76c59c1b25921cc5a5ee81130e784999f24ab050` |
| 21 | `theorem` | [of_isEmpty](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-isempty.md) | 211 | `result-track:5a437bf3ba078a8822ca1e093ebf39687f2194037038059d96d56d182e691b73` |
| 22 | `theorem` | [mk'](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mk-source-edition-2.md) | 215 | `result-track:6c517267f29c16c4e59937607ea5d2e043da03fa7340ec9a31f2cdcd17660d78` |
| 23 | `theorem` | [mk](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mk.md) | 225 | `result-track:0626cc41083797f149eec5df47778fb6d40974968e566577c127a2e72f32f1a7` |
| 24 | `theorem` | [mono](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mono.md) | 235 | `result-track:8dade269d436e0790c1f3f322e283708ade428074009913f7d240d03eb5c5860` |
| 25 | `theorem` | [continuousAt](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/continuousat.md) | 238 | `result-track:39c2f43439e249627dc5dee5ba2d3bec3a73ad35766639938f1890572d7001a6` |
| 26 | `theorem` | [continuousOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/continuouson.md) | 241 | `result-track:5e8a5de2a6b7f36b5b14d4503738fa11673911992097c27cbbad67e1e95b19da` |
| 27 | `theorem` | [isLocalHomeomorphOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/islocalhomeomorphon.md) | 244 | `result-track:9ea656be5591a30b5aaa6c65bea7f231f4c19c502e540793e7529114025f5881` |
| 28 | `theorem` | [restrictPreimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/restrictpreimage-source-edition-2.md) | 270 | `result-track:856ec9541cd309499d3b43c4e606021fca9b6ab48b3789059b8fa63806168d6d` |
| 29 | `theorem` | [comp_homeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph-source-edition-3.md) | 274 | `result-track:d81cb8a3aa7d6bc64a9f117cd5e2f42313af5a66f1a248d7e706f7afe19c8c2c` |
| 30 | `theorem` | [comp_homeomorph_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph-iff.md) | 278 | `result-track:0f0ce2af9fe44f37c57bd4bdc1a6390fc683a0f3135191776f71ac4954153eca` |
| 31 | `theorem` | [homeomorph_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp-source-edition-2.md) | 283 | `result-track:8bad22d40c9fe333f499df12596c18bc3b480f8605f2eb3c4a48611432b0ee27` |
| 32 | `theorem` | [homeomorph_comp_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp-iff.md) | 287 | `result-track:0604714d0aaa58559b27c5acb4b9507295456681dc8ee690345a1172220feddf` |
| 33 | `def` | [IsCoveringMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmap.md) | 296 | `declaration-track:89c4d5a5daadae2c47e41b359623b6128e88b2273fe283e0f6d34a615f7e7110` |
| 34 | `theorem` | [isCoveringMap_iff_isCoveringMapOn_univ](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmap-iff-iscoveringmapon-univ.md) | 301 | `result-track:8a63b1584c5cad5408f397f004f96daafd83d4ce704cffb1663600bd653ef6a5` |
| 35 | `theorem` | [IsCoveringMap.isCoveringMapOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmap-iscoveringmapon.md) | 304 | `result-track:c4087c334bcfc39da4cf2b1f04144e419759d31e394094ca6987ffa31f31c7f8` |
| 36 | `theorem` | [IsCoveringMapOn.isCoveringMap_restrictPreimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmapon-iscoveringmap-restrictpreimage.md) | 307 | `result-track:34a8c2a814161d332a736b5c3e251d1d480c27a0f224b84fb163621a716f9efe` |
| 37 | `theorem` | [IsCoveringMapOn.of_isCoveringMap_restrictPreimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmapon-of-iscoveringmap-restrictpreimage.md) | 311 | `result-track:1b63eb3cc2223367007c1dc563dd84e30164108aa626be5cc61e78b5ab48af11` |
| 38 | `theorem` | [of_isEmpty](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-isempty-source-edition-2.md) | 319 | `result-track:ee79f508e0e95b649af5740b4bab676458c64317688ebee871b0053d84edb15e` |
| 39 | `theorem` | [of_discreteTopology](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/of-discretetopology.md) | 322 | `result-track:62ab49758ae2e110ae67766bb1a22f425870e8b67650eb28d1562cfd9c9c3d79` |
| 40 | `theorem` | [mk'](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mk-source-edition-3.md) | 331 | `result-track:80142d827706ab6cdae2f9ed30954a2c8199f9ccd4a4b2ab4a2552476a34419e` |
| 41 | `theorem` | [mk](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/mk-source-edition-4.md) | 337 | `result-track:deb56af7583e367af999ab6b577452b41b7c91a654acaa1e7d9e3b1a8b7f547d` |
| 42 | `theorem` | [continuous](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/continuous.md) | 345 | `result-track:73719fac23175c6402e9360c82271bbbba21913dc775fab8745a671010ac237d` |
| 43 | `theorem` | [isLocalHomeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/islocalhomeomorph.md) | 348 | `result-track:8b8fef8e35f9818876fb1446fdbbcd10e0cedd35eb9c7b818fac45cc072fee9a` |
| 44 | `theorem` | [isOpenMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isopenmap.md) | 351 | `result-track:a84546e3506868ae2a21d9eeaa34fad65869b7110cbc325cfdbf7e60eb32cac6` |
| 45 | `theorem` | [isQuotientMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isquotientmap.md) | 354 | `result-track:12578f4516b7f6c884174d27064ee091f87d9ed1fd22b7f555cfcd0711e05f3b` |
| 46 | `theorem` | [isSeparatedMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isseparatedmap.md) | 357 | `result-track:f5bd64fab9715c79af8c18569b5b25d585d1a96dcaf3db214221e9943abfff0f` |
| 47 | `theorem` | [eq_of_comp_eq](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/eq-of-comp-eq.md) | 376 | `result-track:02121d7d488bcc78a3d1b53a16164bd46bfbdef454f445d16a65d30de6d83feb` |
| 48 | `theorem` | [const_of_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/const-of-comp.md) | 380 | `result-track:7f7971ac75e0c2c9c1cfe8bc33b0ff6067d63068f12f171653d751c25da8ace1` |
| 49 | `theorem` | [eqOn_of_comp_eqOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/eqon-of-comp-eqon.md) | 384 | `result-track:883c2b007608164fcc55d6ed35c532f59fdb7b0418974c750405d74af4a8547c` |
| 50 | `theorem` | [constOn_of_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/conston-of-comp.md) | 388 | `result-track:4b4a5ffc9c3195b928c87fd9f4fc5cc83a686d35fc4cde1393a22829b19ae36c` |
| 51 | `theorem` | [restrictPreimage](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/restrictpreimage-source-edition-3.md) | 393 | `result-track:94682d0cb6b07de9115d32dfb26169874aa031552c8261bdd22cdd8e8aa784b9` |
| 52 | `theorem` | [comp_homeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph-source-edition-2.md) | 397 | `result-track:42735e39d79350fa337f39e1c9eab6926953bea7b9ec132df3b3bdabc92482b8` |
| 53 | `theorem` | [homeomorph_comp](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp.md) | 401 | `result-track:21e723489f1414ebe207ce8ff43ec2c4ec4ec334502af26df5666ec24d14f4c8` |
| 54 | `theorem` | [comp_homeomorph_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/comp-homeomorph-iff-source-edition-2.md) | 407 | `result-track:4b75da47b8dd165bb2833bcc3cecd3fa45a8b758ba034dfe3f81b83e3915eb1f` |
| 55 | `theorem` | [homeomorph_comp_iff](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/homeomorph-comp-iff-source-edition-3.md) | 412 | `result-track:b4b517ee5e55b817bde49464238076027679440d8e449990c3a5eb14f6b3b98b` |
| 56 | `theorem` | [IsCoveringMapOn.of_isCoveringMap_subtype](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmapon-of-iscoveringmap-subtype.md) | 419 | `result-track:a0c22b3d82e2aa8b900d0157f7a89cff458cb04ae9201ebfd2c5faab35ee0d1a` |
| 57 | `theorem` | [IsFiberBundle.isCoveringMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isfiberbundle-iscoveringmap.md) | 427 | `result-track:7ec1e6ddc1fc31ca53b49dae023c3562f8c0c293772f8c9275b8a237ee835c08` |
| 58 | `theorem` | [FiberBundle.isCoveringMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/fiberbundle-iscoveringmap.md) | 432 | `result-track:525edbc90880d81a3e10bc8938203f32f38fd0ff8e5a22b82946a3eca2fbba72` |
| 59 | `def` | [IsOpen.trivializationDiscrete](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isopen-trivializationdiscrete.md) | 447 | `declaration-track:929259fb8127a7276ec0e98cf9a05ae85bab65dd35cba3514bbf4b797358f892` |
| 60 | `theorem` | [IsDiscrete.of_openPartialHomeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isdiscrete-of-openpartialhomeomorph.md) | 506 | `result-track:7c83e79dc5fc4d79d95c3a649e595219f82e46451f0cdd9309dcf1c3dc228f02` |
| 61 | `theorem` | [IsClosedMap.isEvenlyCovered_of_openPartialHomeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isclosedmap-isevenlycovered-of-openpartialhomeomorph.md) | 518 | `result-track:fff9f445e6f9730f2072e907eebf67964a7b356c70360b255700eee24b2d95a0` |
| 62 | `theorem` | [IsClosedMap.isCoveringMapOn_of_isLocalHomeomorphOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isclosedmap-iscoveringmapon-of-islocalhomeomorphon.md) | 567 | `result-track:9c52d5a9cdf1aad93f67aff4c20592dc3a3538b818d86dec8c32f4b0f9281746` |
| 63 | `theorem` | [IsEvenlyCovered.of_openPartialHomeomorph](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/isevenlycovered-of-openpartialhomeomorph.md) | 583 | `result-track:3b7417b78544e47f5aa2e6831c0ed19d516fecefceb1ee05c3fd6ea33044547d` |
| 64 | `theorem` | [IsCoveringMapOn.of_isLocalHomeomorphOn](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/iscoveringmapon-of-islocalhomeomorphon.md) | 597 | `result-track:42edf57fdf7a0d50a5fe5e6efcbd4489bc064ebac058224e7af2a2e23ce42e0f` |
| 65 | `lemma` | [isLocalHomeomorph_iff_isCoveringMap](../../../../GeneralTopology/CoveringBasicNamespacedPublic.lean/declarations/islocalhomeomorph-iff-iscoveringmap.md) | 610 | `result-track:db76bfb4bf9bfbb523def957c9d77fbca3a1b538e997791bff86b9a0535889d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc5fb771df7ec6d3daaae29b0e146b35f076931245f2b3f6da8927d03b3d93b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1a0e4c16f296b626834657b45c6fa565e49a9357fe784eb9c84c244513daae1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
