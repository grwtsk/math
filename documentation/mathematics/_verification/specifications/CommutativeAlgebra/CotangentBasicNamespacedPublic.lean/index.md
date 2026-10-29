# Verification target: Cotangent Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46bb87bb1c79545b2527777f455d3a1d32fe6cf9",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46bb87bb1c79545b2527777f455d3a1d32fe6cf9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean.json)

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
| 1 | `abbrev` | [CotangentSpace](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspace.md) | 66 | `declaration-track:1954cea3ce3f9f4439edcfb99283909425db64692a9da89094d5edf4e20c5249` |
| 2 | `def` | [cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentcomplex.md) | 69 | `declaration-track:227d9f32d6b9eff30428100600ed555f7bf0a2f7fdcd8943802ab07e39244955` |
| 3 | `lemma` | [cotangentComplex_mk](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentcomplex-mk.md) | 75 | `result-track:0cb66b205c7f3d0c02ac1a2f14e6807b9553176ae5106c701e172cb28dc4fb4f` |
| 4 | `lemma` | [Cotangent.mk_C_mem_ker_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangent-mk-c-mem-ker-cotangentcomplex.md) | 78 | `result-track:96bd115a1418c21b9a685976616be945ca5a0168f08b6bc251c66cbef2848abb` |
| 5 | `def` | [Cotangent Basic Namespaced Public](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cotangentspa-source-edition-2.md) | 91 | `declaration-track:8510942720c8bf9435a6c45d658e58f5f18de11d45829759b09ef2f7ab04717d` |
| 6 | `lemma` | [Cotangent Basic Namespaced Public](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cotangentspa.md) | 99 | `result-track:6d1b6a73cff38aebd1d1a8e29166f6fdd3e862b70768b05df4168de92634d223` |
| 7 | `lemma` | [cotangentComplexBaseChange_eq_lTensor_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentcomplexbasechange-eq-ltensor-cotangentcomplex.md) | 106 | `result-track:306890e0250c2a552a5af984dd21848e38c3f2b52b57cb721c28cd6e2ab417e4` |
| 8 | `lemma` | [lTensor_cotangentComplex_eq_cotangentComplexBaseChange](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/ltensor-cotangentcomplex-eq-cotangentcomplexbasechange.md) | 116 | `result-track:c4abfc7c89d2de32f22de0d3d8305f19fa46760f219d7cc8ee9b2dd38daff9fb` |
| 9 | `def` | [map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map.md) | 155 | `declaration-track:575f5653a5b05671d1233eeb526ae4419165f05f0dfb494741412d1c8723f8ca` |
| 10 | `lemma` | [map_tmul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-tmul.md) | 166 | `result-track:1c92be98489be5b805711d24296a65cc3b38f524219d69b5a3200814066230f2` |
| 11 | `lemma` | [map_tmul_eq_tmul_map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-tmul-eq-tmul-map.md) | 173 | `result-track:4da3725154e253c1055268e908b0520d9d0624fabcbffaa2baad449f523f7ed0` |
| 12 | `lemma` | [map_id](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-id.md) | 181 | `result-track:26e48bc2ec18f64b92d79378e4e8f6269e2c4b5d03ff37e7f24c68371537760e` |
| 13 | `lemma` | [map_comp](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-comp.md) | 184 | `result-track:41ae8cdb6b67fe5d4226eec8521d97517e331a28c747c4429fcbd1555260b3fa` |
| 14 | `lemma` | [map_comp_apply](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-comp-apply.md) | 201 | `result-track:890019e35bc0624bd9944594ab59bc0a645bd46fd4685a5ef336b60fd1643d72` |
| 15 | `lemma` | [map_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-cotangentcomplex.md) | 205 | `result-track:4d3d3f5af35671a7f2b6f652671c89dd4f90a9e62d656d7d95f2f475f5ee9b72` |
| 16 | `lemma` | [map_comp_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/map-comp-cotangentcomplex.md) | 210 | `result-track:7bb0710d9cb3b45d7a2f1f9180379acef2d1d5e225b3c78bdc584dd50ead6ba0` |
| 17 | `lemma` | [Hom.sub_aux](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/hom-sub-aux.md) | 217 | `result-track:0a458eaf6641939383b375f84e4ac6d95379ec8e2c7fdc56d455ac9a2fda0d4c` |
| 18 | `def` | [Hom.subToKer](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/hom-subtoker.md) | 243 | `declaration-track:9a6fd5855ac6a0d103bec35a53e97ef61ab678e6c39c4b7236caf5ddb58ca770` |
| 19 | `def` | [Hom.sub](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/hom-sub.md) | 257 | `declaration-track:46f9de3cfeda9ec2020a219f43d73da1e6cfed4ddf4c3cd7dc8e7781dfed7397` |
| 20 | `lemma` | [Hom.sub_one_tmul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/hom-sub-one-tmul.md) | 283 | `result-track:225ab2157b0cb326a19b6a951238e2ee1454cbda999d378e65d0e009be5d4784` |
| 21 | `lemma` | [Hom.sub_tmul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/hom-sub-tmul.md) | 290 | `result-track:d7595dab8197fcd1bbb67471e553886b87d7e1949976d0f29675bee44afd9eb0` |
| 22 | `lemma` | [CotangentSpace.map_sub_map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspace-map-sub-map.md) | 295 | `result-track:548e2d0b4a0f6437e4ef551c682bddac659b18677d1c8bccd83427bcaa63b1e3` |
| 23 | `lemma` | [Cotangent.map_sub_map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangent-map-sub-map.md) | 313 | `result-track:284abb1d378147a1bd2accef52a7731eeea13bcc167d1f64e936e3734ce93b2d` |
| 24 | `abbrev` | [toKaehler](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/tokaehler.md) | 327 | `declaration-track:943e0d3db400b5c2a04bd22970ec8c616317ff220d75c9bc3498c840cab5846f` |
| 25 | `lemma` | [toKaehler_surjective](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/tokaehler-surjective.md) | 329 | `result-track:6f08cd2702f5200788d0197dfde1d96f639a5bf195958a60359b3f379c64186e` |
| 26 | `lemma` | [exact_cotangentComplex_toKaehler](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/exact-cotangentcomplex-tokaehler.md) | 332 | `result-track:5fba2150e3e93c280a5a97e428c1605c1aae3280c853b66921e5bf9670d3871c` |
| 27 | `def` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-source-edition-3.md) | 341 | `declaration-track:a4ea4599696bbe6b41f39246ab3688e15638c57ec6b9292f179fd43cb64c1109` |
| 28 | `lemma` | [H1Cotangent.val_add](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-val-add.md) | 348 | `result-track:f74da43c83961a8e69ddc45253711be4f3914ede2d8fe833f1f2df6e939b851a` |
| 29 | `lemma` | [H1Cotangent.val_zero](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-val-zero.md) | 349 | `result-track:f4ecb96b28e3eb6a0741fe1616f418abd0c6369315120b16874f4cd27ce792df` |
| 30 | `lemma` | [H1Cotangent.val_smul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-val-smul.md) | 350 | `result-track:3ae5b7e2de191d7e0d21e6b439cf50bdcf01df6f74ce356b6adb007bdd35f293` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/instance.md) | 353 | `declaration-track:166cbcea4e39290f05cb3fec0efefc82e0c8c836d78cc45050d36bd61e43864c` |
| 32 | `lemma` | [subsingleton_h1Cotangent](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/subsingleton-h1cotangent.md) | 361 | `result-track:784e19739cd7a8f21df4bcbf40e372b87251edbeeb666d6ca48ef6a6e8fd23b2` |
| 33 | `def` | [h1Cotangentι](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-source-edition-2.md) | 368 | `declaration-track:4c5351da404b7887bf7ef290eb3a185f43152dffd264da7544b73adbd092b040` |
| 34 | `lemma` | [h1Cotangentι_injective](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-injective.md) | 370 | `result-track:76bc30a4558e821b83c297baa9817b1f286ebd29b0c967b45171d5730e3cbf3f` |
| 35 | `lemma` | [h1Cotangentι_ext](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-ext.md) | 372 | `result-track:88a3507206fffa4011f387a6270f3b3a1edaa3e9f1880e6b3750b324c1bbdeff` |
| 36 | `lemma` | [exact_hCotangentι_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/exact-hcotangent-cotangentcomplex.md) | 375 | `result-track:ac5dc8f725576019f1ff64d245abd4ab724c184095810bf4e5358be1502730be` |
| 37 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map.md) | 383 | `declaration-track:568fb50311dfa19951cacc6ca447b1e3e259cfd05dd04ec805a39c2f446fc820` |
| 38 | `lemma` | [H1Cotangent.map_eq](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map-eq.md) | 393 | `result-track:43c6e0b964d05b6898d6eb3221357b6d68b55b8e035baaf6e63df2d160c65794` |
| 39 | `lemma` | [H1Cotangent.map_id](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map-id.md) | 401 | `result-track:82ce5570d6815e1e0e85f9ef7c1336f639ef3db1026817a29f154c24d847fe24` |
| 40 | `lemma` | [H1Cotangent.map_comp](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map-comp.md) | 405 | `result-track:8ca8fd593d42de427aa1876e187946dc0a6a7e6b1dbce046e48af710246f5b91` |
| 41 | `lemma` | [H1Cotangent.map_comp_apply](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map-comp-apply.md) | 412 | `result-track:45bdb2dd948f3517a6c82b4cc7ca31611b7276ea3033974bf0e212878f45e132` |
| 42 | `def` | [H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-equiv.md) | 419 | `declaration-track:dfa917ba5a6919900fe049db8359359a054d6d7bbe782c299a8dfacc95b4cf36` |
| 43 | `lemma` | [Cotangent.map_comp_h1Cotangentι](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangent-map-comp-h1cotangent.md) | 433 | `result-track:f846a61b8db5d95c303b993de7b8b5c057afe22476b03de30908b9c0ce89a7b6` |
| 44 | `def` | [cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspacebasis.md) | 444 | `declaration-track:dd9142ccefca851a230e0b09a9f9bb4023357679da640300d1c62fcc58b09caf` |
| 45 | `lemma` | [cotangentSpaceBasis_repr_tmul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspacebasis-repr-tmul.md) | 449 | `result-track:23198d95301f03143363417089f8000b15632e442e1fc31058f983494efeeeda` |
| 46 | `lemma` | [cotangentSpaceBasis_repr_one_tmul](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspacebasis-repr-one-tmul.md) | 457 | `result-track:825fa720c92a2132e35d6aea046e3db36fb94a94dcd80904789d3e37326b5437` |
| 47 | `lemma` | [cotangentSpaceBasis_apply](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentspacebasis-apply.md) | 462 | `result-track:4c4166697dc2b0255e3ea580b30aea45f622ac0cdbc7cee20b9523fb3c933354` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 466 | `declaration-track:f932f686b5af81080bfdcfb2ffb39bdee911a86d5b8abe0087f7da394d5b8fab` |
| 49 | `def` | [cotangentRestrict](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentrestrict.md) | 471 | `declaration-track:d2eed174ae0d51fb33a7995a999bededd6ecf24632e3899d413614d0b2107f1c` |
| 50 | `lemma` | [cotangentRestrict_mk](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/cotangentrestrict-mk.md) | 478 | `result-track:f91be8070b4f5ce2e079b5c2012e328e54582dec920f7ea9707fde039750b2f4` |
| 51 | `lemma` | [repr_CotangentSpaceMap](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/repr-cotangentspacemap.md) | 502 | `result-track:44530ead8d9893d63163365ff00ffa77298f6761a33c22822f49b7c178c3f553` |
| 52 | `lemma` | [toKaehler_tmul_D](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/tokaehler-tmul-d.md) | 512 | `result-track:b85e63f5e8f1e36a5c25292d01fc0d4e4905cbbc39cfa350886dc379c5fad706` |
| 53 | `lemma` | [toKaehler_cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/tokaehler-cotangentspacebasis.md) | 517 | `result-track:ca24b9b1ce7dfa6a3ac7eab995dd03a0e5f76aa6a12611d44e19fe1c955af742` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 529 | `declaration-track:ce48ff929c895d1d029b161994129c4cbcb75a7e88fdd768d8cbf0b0e1a91865` |
| 55 | `def` | [Generators.H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/generators-h1cotangent-equiv.md) | 542 | `declaration-track:d59b5f7f5a2db245e57fb745cb2c8c05f4b649b71a7062547e6d8615312b99fb` |
| 56 | `abbrev` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent.md) | 554 | `declaration-track:3f4b74817fbb7cd01370fed5a9af84244d3be867982d279e0a34945d1fcbf1c3` |
| 57 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-map-source-edition-2.md) | 557 | `declaration-track:c1c3a751faf96c6374358105d755a04ce2f2d98155a83a23614bdaf7b22b9d7d` |
| 58 | `def` | [H1Cotangent.mapEquiv](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/h1cotangent-mapequiv.md) | 561 | `declaration-track:bd5f1e5e877f8449b683294fdb7fcfe8e536d53e53645efba93f15a58fae160f` |
| 59 | `abbrev` | [Generators.equivH1Cotangent](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/generators-equivh1cotangent.md) | 586 | `declaration-track:993f18591ec513a633e35d9225484cb1c127c1823323b6bd42a29cd2be9219a1` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 593 | `declaration-track:c3093c46c402984f0f88e7228b664e01be38152908fd9366295f02e3365bd7e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff56303dbd056dc2beba5d440f605c893a1940384f3aa1df900d714709156c72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ad878cd770fed0a75ed2842db92b79a14ee0850a744b4749325e7d05776539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
