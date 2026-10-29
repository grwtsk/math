# Verification target: Unital Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80944cc700ffac05f1890454cca4432c1bc98d6b",
  "lexical_observation_count": 135,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80944cc700ffac05f1890454cca4432c1bc98d6b`.

Source path: `GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean.json)

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
| 1 | `class` | [ContinuousFunctionalCalculus](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/continuousfunctionalcalculus.md) | 176 | `declaration-track:f373eeb6d985a02984e31e4c77ca5f8983bb73f671eb1ce7d45b74ff025468c7` |
| 2 | `class` | [ContinuousMap.UniqueHom](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/continuousmap-uniquehom.md) | 205 | `declaration-track:c924f0e7c1af2f32e752aafad1df402c57157f1f1af58bee871cb641173b4d02` |
| 3 | `lemma` | [ContinuousFunctionalCalculus.isCompact_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/continuousfunctionalcalculus-iscompact-spectrum.md) | 218 | `result-track:5cf6fbf9979838287dfe3872deedb6542027adb5070c8ba5a75966ec994b22cf` |
| 4 | `lemma` | [StarAlgHom.ext_continuousMap](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/staralghom-ext-continuousmap.md) | 222 | `result-track:fd54a6b0863f5ec69b8319001e3028b6c9ad7034eae9e1f5a97dcfb6c525849c` |
| 5 | `def` | [cfcHom](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom.md) | 247 | `declaration-track:18b45b99dd18ade6ebcfe54af24755152bd734144bd534e59c276977010084f3` |
| 6 | `lemma` | [cfcHom_continuous](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-continuous.md) | 251 | `result-track:1c9a9a7be52049b6349ff367faee129a9db6462691bd9daed79852b5a719c45e` |
| 7 | `lemma` | [cfcHom_injective](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-injective.md) | 254 | `result-track:a298be8877130db0b0dfac11481b7dd0d383dcfcb4359a7d94083dec01bb64ef` |
| 8 | `lemma` | [cfcHom_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-id.md) | 257 | `result-track:f2467bb9842bff65bc06d0cadef70a5b575be698d735bb03d85fc2b8e640984a` |
| 9 | `lemma` | [cfcHom_map_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-map-spectrum.md) | 262 | `result-track:69b36578ff8442a4ad08ea29805da200df3e57943c0abc5d6ed45e49f70d6efe` |
| 10 | `lemma` | [cfcHom_predicate](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-predicate.md) | 266 | `result-track:76ffa19a42f6e5f0fc6cd30f97670129c66834e43df3b2028e9f403973674565` |
| 11 | `lemma` | [cfcHom_eq_of_continuous_of_map_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-eq-of-continuous-of-map-id.md) | 271 | `result-track:9d3c5bc752fb966db0c210caab08b04c2ce1d11cbc88a387d4891fbec87c786d` |
| 12 | `theorem` | [cfcHom_comp](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-comp.md) | 277 | `result-track:2cfaf5da2d2fc1781bd759043f8d306fd2793fc39a156d4dc21ec0c21eb590d0` |
| 13 | `def` | [cfcL](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfcl.md) | 297 | `declaration-track:8ba27b5e2e41025bab0889050d9ce3ca88206fc43a8be295f9af80c06e6f4445` |
| 14 | `lemma` | [cfc_apply](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply.md) | 325 | `result-track:982ad48456a4fa236b8505859d4481845f7e1a3bbedb0725e115325a34895491` |
| 15 | `lemma` | [cfc_apply_pi](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-pi.md) | 328 | `result-track:d4d008ce12e9a68b9287f22ad25f4024c3049c1dfcb4486d8da3c33fdc4b5435` |
| 16 | `lemma` | [cfc_apply_of_not_and](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-of-not-and.md) | 334 | `result-track:34f015e50b0ba277cb56f23d8dffa11cf05fff5dd2d06484a39b8543407d96c2` |
| 17 | `lemma` | [cfc_apply_of_not_predicate](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-of-not-predicate.md) | 338 | `result-track:b6917692f8bc24d66c3dbcb70756727dd12973adbbe90e2d5b3b287a6daf2c2f` |
| 18 | `lemma` | [cfc_apply_of_not_continuousOn](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-of-not-continuouson.md) | 342 | `result-track:9aa2b33a736345fad832e6e1945517908909fcc6a47a871e0a0afbc309478a74` |
| 19 | `lemma` | [cfcHom_eq_cfc_extend](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-eq-cfc-extend.md) | 346 | `result-track:308e5e85f1723003b34b9d3937a459b275646f738a2e258330d7097913f2ff56` |
| 20 | `lemma` | [cfc_eq_cfcL](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-cfcl.md) | 355 | `result-track:af79c9e3bb9ac4ffb7394537bb9a9612fc0b56a03a20cb5bc2a2abfa64c035bb` |
| 21 | `lemma` | [cfc_apply_mkD](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-mkd.md) | 361 | `result-track:209c879858836c200038f1f7a9266c82fa6b7c853f20b2d1fa186e56938635c9` |
| 22 | `lemma` | [cfc_eq_cfcL_mkD](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-cfcl-mkd.md) | 370 | `result-track:014f7688d639b479f6b20111b4a512213a71429d2b1223be3a1c298fb0bc9c3d` |
| 23 | `lemma` | [cfc_cases](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-cases.md) | 374 | `result-track:59a37bf401d9ba1c7b9e33717d608b803f6fe5a64b24f5dede988085765f6091` |
| 24 | `lemma` | [cfc_commute_cfc](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-commute-cfc.md) | 385 | `result-track:f2016a7dc4b1fdff0622dd760b8e3c6db34291e64fb12fd64b0af323abc59ca0` |
| 25 | `lemma` | [cfc_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-id-source-edition-2.md) | 391 | `result-track:c49cc8540645fd38ab6ff40546b99f749472bc3c48f42bd734065b7cd9a95e6a` |
| 26 | `lemma` | [cfc_id'](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-id.md) | 395 | `result-track:5173e139a83226d71888de9891764e46b6912f62d6c81cfc4ddc77f0b81b87bc` |
| 27 | `lemma` | [cfc_map_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-map-spectrum.md) | 398 | `result-track:9b1d721d590c0b7e32789dac8ac57287e41b91440e58ee474d169032741e138a` |
| 28 | `lemma` | [cfc_const](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const.md) | 403 | `result-track:04a35d46069ec49e9cf59de1ca81ef520fb2148f27ba68c637d9be85af518b75` |
| 29 | `lemma` | [cfc_predicate_zero](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-predicate-zero.md) | 410 | `result-track:d6fed8a54c88414cdae1e4f4772be97a0165e03a3c91b878502feeaff4985f27` |
| 30 | `lemma` | [cfc_predicate](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-predicate.md) | 413 | `result-track:38f85faa41201e32b0b20d1dad0b275f6b87f52cf3e7dce1758e8352a46e6622` |
| 31 | `lemma` | [cfc_predicate_algebraMap](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-predicate-algebramap.md) | 416 | `result-track:ccfefc27d99e58ea9458ed58c4372b99dcc180e5f2ea07d6efac1161a4b1e2a1` |
| 32 | `lemma` | [cfc_predicate_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-predicate-one.md) | 421 | `result-track:25947309d502a03b081d74323751ece8ba2596f13429ec3b5be78eafda10da7b` |
| 33 | `lemma` | [cfc_congr](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-congr.md) | 424 | `result-track:9b100c22d0602c775c4c7be2605d8ff6a42be595a800039fb68c666bacc86ee2` |
| 34 | `lemma` | [cfc_congr'](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-congr-source-edition-2.md) | 437 | `result-track:e4dbe599e6f2dec3fb40f257f8fb8de28fe7370867225dd592c2e7a8795d5f51` |
| 35 | `lemma` | [eqOn_of_cfc_eq_cfc](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/eqon-of-cfc-eq-cfc.md) | 441 | `result-track:775ac040c71dcd3c535c723051dbd9cfcbb9c5e75398a04185dd31731f73e27e` |
| 36 | `lemma` | [cfc_eq_cfc_iff_eqOn](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-cfc-iff-eqon.md) | 451 | `result-track:bf8ed0ed7be0a3cf7379b4368d00a3b0fb55bb93c8c8607ad03004b67518f88a` |
| 37 | `lemma` | [cfc_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-one.md) | 458 | `result-track:5b8969ee28b426df73ecef1a5895c4c22ad8cdb5602648fc487498f8529c2d01` |
| 38 | `lemma` | [cfc_const_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const-one.md) | 463 | `result-track:841f2bbdbb228ab8e5ac05ca52f47b5f9bba5419f2a5c9f74f679c9b2d5b2d10` |
| 39 | `lemma` | [cfc_zero](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-zero.md) | 465 | `result-track:e1569faa41fedea9b1461a890c208b2f6b3172da70f8ad57c9b5c199535738a6` |
| 40 | `lemma` | [cfc_const_zero](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const-zero.md) | 471 | `result-track:d5d575290345b0d9b2a960319ffa02f2ff53bd39e7673409b865ba862b032e50` |
| 41 | `lemma` | [cfc_mul](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-mul.md) | 476 | `result-track:5e919a4a0d56954412a30eea7e7afd88d964cf74ca86872ac888a0c817e51ed9` |
| 42 | `lemma` | [cfc_pow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-pow.md) | 484 | `result-track:07c697a48c5412ab5834c617272a0b763b4f0765be56c7c33a219e3c452e0b8e` |
| 43 | `lemma` | [cfc_add](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-add.md) | 490 | `result-track:a586b95b42c8c253ed9e4fc52bdb450d5c8633daf107e143f843905f2f88eefa` |
| 44 | `lemma` | [cfc_const_add](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const-add.md) | 498 | `result-track:5d7a50f082bc9c23c58236317ab46c063e5a12933b9e51937ab641bc8b26f348` |
| 45 | `lemma` | [cfc_add_const](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-add-const.md) | 504 | `result-track:ca432a81ec07ca7a94a71d32a085b3e0eb1fd862fd84a2505d05688ae21de629` |
| 46 | `lemma` | [cfc_sum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-sum.md) | 512 | `result-track:37ee22866852fe93f5d30e26f1c641478853935dea684d4c2d349f702022ff09` |
| 47 | `lemma` | [cfc_sum_univ](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-sum-univ.md) | 528 | `result-track:8079100006361cb1eba0065df827dab3c870bbd2c32533ec31547e7fd6f5c4ef` |
| 48 | `lemma` | [cfc_smul](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-smul.md) | 533 | `result-track:580e07acb803ffd1d5982f2fde38ffef5dfec24c118bf5a9b4b588a074364561` |
| 49 | `lemma` | [cfc_const_mul](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const-mul.md) | 544 | `result-track:c946bc710e66187aef2246523b8b1010ddd764dd537c027b74f124515ded7e5e` |
| 50 | `lemma` | [cfc_star](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-star.md) | 549 | `result-track:d432ead376c297fa3f56b7cc8a8512cc57465d1c565432d201b21ee55b798ff8` |
| 51 | `lemma` | [cfc_pow_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-pow-id.md) | 559 | `result-track:2daceb2e0cffdce5dcc99d9e86376a515bb31599e277ff1d86df0ab0ad50e6c3` |
| 52 | `lemma` | [cfc_smul_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-smul-id.md) | 562 | `result-track:3b9bd4a2c12a378be8ea56658c0251998487ea388dfa63f1edde126e60b1c4f3` |
| 53 | `lemma` | [cfc_const_mul_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-const-mul-id.md) | 567 | `result-track:5d809061f6ed62e9aab4c90f40ecf47337ec68f0b6edeca8f9e6dd7fdadf6108` |
| 54 | `lemma` | [cfc_star_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-star-id.md) | 572 | `result-track:5723035b5a421cd8fc2739401c05a1159243f60b2c4aa86028353d857366582b` |
| 55 | `theorem` | [range_cfc_eq_range_cfcHom](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/range-cfc-eq-range-cfchom.md) | 576 | `result-track:612ea9d3fff3717e74dfb7e0ab9ad1ea343006462f1e582a5fbf54a382071f02` |
| 56 | `lemma` | [cfc_eval_X](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eval-x.md) | 587 | `result-track:b44ea5bebcec6d5979640df0c8a1bf6a945bc2189db71b48ac4964f0520d0177` |
| 57 | `lemma` | [cfc_eval_C](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eval-c.md) | 590 | `result-track:311eaadae936bd079ca219fc2728f9d3843309789766e61eb6d552699f6dfedd` |
| 58 | `lemma` | [cfc_map_polynomial](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-map-polynomial.md) | 594 | `result-track:17df819cff27ed961f0f72a623fda72952fb0b17cb390dd9610f20c33b51d700` |
| 59 | `lemma` | [cfc_polynomial](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-polynomial.md) | 605 | `result-track:7b9c7a74ef8973ed00f5f7e02d2364090b7ae8bb4e27be480a90dc3a2f26fe29` |
| 60 | `lemma` | [cfc_comp](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-source-edition-2.md) | 615 | `result-track:e339e77edd2f43506d5f84658826448bb911a70b7ecce408acfc6f63c9470f4c` |
| 61 | `lemma` | [cfc_comp'](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp.md) | 632 | `result-track:d6ed96db04c918ec7f1810a72f6d4a7dca66b741be893c89ff907f5bde2d82af` |
| 62 | `lemma` | [cfc_comp_pow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-pow.md) | 637 | `result-track:f4d5b243903fab1cee4b7c3102d3f749f838f52cc15d726a0833faad78f4edb8` |
| 63 | `lemma` | [cfc_comp_smul](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-smul.md) | 642 | `result-track:df391ac1a6296ee0818d974f8d0245ab4c86ba1b378ef4d27c6d51ae234aeefc` |
| 64 | `lemma` | [cfc_comp_const_mul](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-const-mul.md) | 648 | `result-track:77a993f0b48e02cfbe266cfcd1a7be3e99e44aa81d667256b5fab34c215d6e23` |
| 65 | `lemma` | [cfc_comp_star](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-star.md) | 653 | `result-track:e238e68bac19b6d22046da88e3388e04a9078b3c01a94ec51cdead4d24454ee9` |
| 66 | `lemma` | [cfc_comp_polynomial](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-polynomial.md) | 659 | `result-track:95437d9548579a827b94e663e3d1d9aed763303d6e6a3d3566af4ddf62379749` |
| 67 | `lemma` | [CFC.eq_algebraMap_of_spectrum_subset_singleton](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-algebramap-of-spectrum-subset-singleton.md) | 666 | `result-track:02eaf33aedf6e350a543c2e12998316a3e613bf432961816d537a7bd845a32d5` |
| 68 | `lemma` | [CFC.eq_zero_of_spectrum_subset_zero](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-zero-of-spectrum-subset-zero.md) | 671 | `result-track:c97c3de6fd6f804a1c808cf6574ed59c20416624b44178d18ca4ff46dd85935b` |
| 69 | `lemma` | [CFC.eq_one_of_spectrum_subset_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-eq-one-of-spectrum-subset-one.md) | 675 | `result-track:cc3b9d70087798f9a102c4d4a5389cd66b71307f4c98abec77423f62372ca931` |
| 70 | `lemma` | [CFC.spectrum_algebraMap_subset](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-spectrum-algebramap-subset.md) | 680 | `result-track:d3c0c5b089c8f912e6691b898e052ede9b4b2cb910a20c60e4743d44ef2da527` |
| 71 | `lemma` | [CFC.spectrum_algebraMap_eq](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-spectrum-algebramap-eq.md) | 687 | `result-track:a1684786b2d73089e0c19122353305478001492061ece6a5d4378f5dddfee4e0` |
| 72 | `lemma` | [CFC.spectrum_zero_eq](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-spectrum-zero-eq.md) | 694 | `result-track:0f6bb4845d5f50bfce8d72cd593688e8b3bbabbfa8fb4ed01273016160d145f5` |
| 73 | `lemma` | [CFC.spectrum_one_eq](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-spectrum-one-eq.md) | 700 | `result-track:b68d078cb2c6fb58686f9adc869145b19ce6abbfb595e31ac84e400932d32b17` |
| 74 | `lemma` | [cfc_algebraMap](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-algebramap.md) | 706 | `result-track:5c56c165d1435111cb58129d04ef60aaab3531cb9b78378eb846a72feabab43a` |
| 75 | `lemma` | [cfc_apply_zero](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-zero.md) | 716 | `result-track:b4f3e14ec32b9c58c96193892cbb604cfdd222d73e2790f2326bdd608557bdd0` |
| 76 | `lemma` | [cfc_apply_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-apply-one.md) | 719 | `result-track:e5bdc399ba9a96ea7a31b727d87e466723a77638dc3641f5eca7765e0ad5be02` |
| 77 | `instance` | [IsStarNormal.cfc_map](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/isstarnormal-cfc-map.md) | 723 | `declaration-track:57471cda17c44f126e74d9875700faa6a3f8e90be8d8987044ed784e0176004e` |
| 78 | `lemma` | [IsSelfAdjoint.cfc](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/isselfadjoint-cfc.md) | 734 | `result-track:2a6e035c58ddffc77ba126a31e6078b7ab3c7a14550186fd01ae12c3f0dad519` |
| 79 | `lemma` | [cfc_nonneg_of_predicate](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-nonneg-of-predicate.md) | 739 | `result-track:5efc50189f5e5a57cb376308cbdf3df344dcb872c008ea1402bdf3a3ee3d1191` |
| 80 | `lemma` | [CFC.spectrum_nonempty](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-spectrum-nonempty.md) | 748 | `result-track:e3619c13a507bf6754e2c5cdd7eae3f437cfa46f315a7db18ae3df581f7850ef` |
| 81 | `lemma` | [isUnit_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/isunit-cfc-iff.md) | 761 | `result-track:9ff999302157ff9bd63ce37dc1db935e9795a879e59fc3ee1bcebc582d5e6722` |
| 82 | `lemma` | [CFC.pow_eq_zero_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-pow-eq-zero-iff.md) | 770 | `result-track:f2eae8d693f91e0742cdc5fcfec1cb51e8459653c4cd074ddbaf68dce30cb651` |
| 83 | `def` | [cfcUnits](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfcunits.md) | 781 | `declaration-track:dc55754c4bb4985c8ae7c9adf878881605930b48f0f4080ddfa33162c584a63b` |
| 84 | `lemma` | [cfcUnits_pow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfcunits-pow.md) | 792 | `result-track:a5969e4eb900ed67d3b5a46e7cb03ee864ba5c0dda1770f8aa66a71a197e4dc4` |
| 85 | `lemma` | [cfc_inv](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-inv.md) | 801 | `result-track:6d54ac9da3763213786bcee0afe84e61e096480780132cb767987ebb9a25b847` |
| 86 | `lemma` | [cfc_inv_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-inv-id.md) | 806 | `result-track:28f64700c0812037e34aeaf6c1a7003001d04397c9506b933d59758c220bd743` |
| 87 | `lemma` | [cfc_ringInverse_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-ringinverse-id.md) | 814 | `result-track:8bfb3aa29c21edb189945c16546dad3cde9fc0a119d81ed95f23fbcd50e61c22` |
| 88 | `lemma` | [cfc_map_div](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-map-div.md) | 820 | `result-track:e9072baf957ec7ff50dda1b8c78df5f2f9c049c715c09f7b77ccda14337415af` |
| 89 | `lemma` | [Units.continuousOn_inv₀_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/units-continuouson-inv-spectrum.md) | 834 | `result-track:e4de90582ac24aaaff6a2d1a1cc6b1cc8407882e79744eb6c22f9e4d53fcae01` |
| 90 | `lemma` | [Units.continuousOn_zpow₀_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/units-continuouson-zpow-spectrum.md) | 839 | `result-track:dffaf5d8ef80d48ac02a262fc1960d6ad0b778dcd8cfdbf01e510296ca327cc6` |
| 91 | `lemma` | [cfcUnits_zpow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfcunits-zpow.md) | 846 | `result-track:b2afadc058c7d97d6e71060e2aace70f47348ee34a1e0a06dea1209fb92d110c` |
| 92 | `lemma` | [cfc_zpow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-zpow.md) | 858 | `result-track:b0b9b71e31f218f11283556d57f992f5285ea5e2b7ec4330d3813a6d7c934cb6` |
| 93 | `lemma` | [cfc_comp_inv](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-inv.md) | 869 | `result-track:35f14d21f789bfb0a440c37caf91f46b55a45467d86419560e74fb1a2c9b4ab3` |
| 94 | `lemma` | [cfc_comp_zpow](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-zpow.md) | 875 | `result-track:7a97e3bfd1e2a2dad27b4f7fda1919eeabfbc353da350438652c53b7a54dfbac` |
| 95 | `lemma` | [cfc_sub](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-sub.md) | 893 | `result-track:0cacd3e28b4d2af2630a7679831b32926fa208f914c9bafd5fc228ebde933e70` |
| 96 | `lemma` | [cfc_neg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-neg.md) | 899 | `result-track:125d5e40e20492f0639746c0ea94fe6e28ce582c6dc8cf1d95156e5e65aa1096` |
| 97 | `lemma` | [cfc_neg'](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-neg-source-edition-2.md) | 909 | `result-track:3a1b17547e6d6fd8d11cc6a19c47e0064c2a71e9d479a4a5e2457ef390ee8780` |
| 98 | `lemma` | [cfc_neg_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-neg-id.md) | 911 | `result-track:93d92cafd9340573e50287a7476ed8b65ba3d0489b29bcb31006db1a5db9acf8` |
| 99 | `lemma` | [cfc_comp_neg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-comp-neg.md) | 916 | `result-track:b913e3b2c11eeddf0b8f4ba6f303f3f2ae6f2d044014138db7a3bca5e6d4d8da` |
| 100 | `lemma` | [cfcHom_mono](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-mono.md) | 931 | `result-track:a585d8b636fc1a58d0ad2302ad9a11c05a4f80a61abcc4618e3e0d40a20afce0` |
| 101 | `lemma` | [cfcHom_nonneg_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-nonneg-iff.md) | 935 | `result-track:a180a1085543346e4d43ec1192fc7ba43ee9a8250ef2f043fbcfc4d07975587c` |
| 102 | `lemma` | [cfcHom_isStrictlyPositive_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-isstrictlypositive-iff.md) | 941 | `result-track:808fae38d21147ed346318bf746eed6118838338342ea32ac76db42812b09013` |
| 103 | `lemma` | [cfc_mono](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-mono.md) | 948 | `result-track:bb10e3d3bf86005ea55155af2991ad1939d6132dd4a2c1c9aa4eca1dffaddfa9` |
| 104 | `lemma` | [cfc_nonneg_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-nonneg-iff.md) | 957 | `result-track:30bb2cbaeec94516c624e57ef05a47b462ab85cf1fcb749416dd6a5a52a89cd6` |
| 105 | `lemma` | [StarOrderedRing.nonneg_iff_spectrum_nonneg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/starorderedring-nonneg-iff-spectrum-nonneg.md) | 963 | `result-track:f6ffae3aa972a5b096f22e6a9289c7a4d5171937fe74eb6ae320477b53c7092a` |
| 106 | `lemma` | [cfc_isStrictlyPositive_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-isstrictlypositive-iff.md) | 968 | `result-track:0abafa077f26fe7b3ea098c7dde97bace0ca4387bee2db2ef87ad64c5ec7a3ef` |
| 107 | `lemma` | [StarOrderedRing.isStrictlyPositive_iff_spectrum_pos](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/starorderedring-isstrictlypositive-iff-spectrum-pos.md) | 974 | `result-track:be9f15b8b83c2a185516ed33c950702ebb2cb449c1265f98826e0264ab6d2ce7` |
| 108 | `lemma` | [cfc_nonneg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-nonneg.md) | 979 | `result-track:19e1dc9b55561402070e45362d66ec3db3b47a55a8e21579188bdfac92c086fb` |
| 109 | `lemma` | [cfc_nonpos](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-nonpos.md) | 985 | `result-track:3b1196300387e63957eea9287959a3f19f255d74c53eb511c6c13dd1d69a3655` |
| 110 | `lemma` | [cfc_le_algebraMap](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-algebramap.md) | 991 | `result-track:9a6502dd3b98a7b4a8cfe0028884f50cb887d99173f3d0f336c1d9f99155ce1a` |
| 111 | `lemma` | [algebraMap_le_cfc](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/algebramap-le-cfc.md) | 996 | `result-track:0599d2140f6a2f9a2a7d4e4efad91d9e1563e0636b824376db9d95e18fc1de55` |
| 112 | `lemma` | [le_algebraMap_of_spectrum_le](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/le-algebramap-of-spectrum-le.md) | 1001 | `result-track:c6607420257a2a5a3f9815c5e8cfab8bf94aee1f480aa258026d689a60978d43` |
| 113 | `lemma` | [algebraMap_le_of_le_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/algebramap-le-of-le-spectrum.md) | 1006 | `result-track:129c37174c732b7805024861cdb7aa85a82a9a740f106d614011cfaea1f37daf` |
| 114 | `lemma` | [cfc_le_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-one-source-edition-2.md) | 1011 | `result-track:2376c4169f0ac39f87f6f3997836db15426dedfa295fe2a9fcddd6d1311b1188` |
| 115 | `lemma` | [one_le_cfc](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/one-le-cfc.md) | 1017 | `result-track:14889cef3f400197e43773a3012452ba27aa1fcd6848a6b262bc8828a92db634` |
| 116 | `lemma` | [CFC.le_one](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-one.md) | 1022 | `result-track:14983a091e150ce796eb71d502b5b30ecfdf79688a3114f6ec83c0c46065b8b2` |
| 117 | `lemma` | [CFC.one_le](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-one-le.md) | 1026 | `result-track:6a0a48997495e3b8611475a80884deb37502f844152dc12497a6ef743f9d0113` |
| 118 | `lemma` | [CFC.inv_nonneg_of_nonneg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-inv-nonneg-of-nonneg.md) | 1039 | `result-track:a0110d8234124b84f38ec3ae7637a0b5d8c5b617cf0cadecee34ddb2fa45106b` |
| 119 | `lemma` | [CFC.inv_nonneg](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-inv-nonneg.md) | 1042 | `result-track:3e3161f53a9f3ff364e881c2cf4368ed22db7180e3f847dd5a5f3a78c418cca5` |
| 120 | `lemma` | [cfcHom_le_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-le-iff.md) | 1055 | `result-track:b2a1b5df45c3266e62dfdec148b8fd2c68735794b4f87f4262adbd4ddac72a9d` |
| 121 | `lemma` | [cfc_le_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-iff.md) | 1059 | `result-track:01ba402369320db61dd42d00c49989a1edb5ce8134a56d695bcf929f9107f91b` |
| 122 | `lemma` | [cfc_nonpos_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-nonpos-iff.md) | 1065 | `result-track:828e9dd562a3c5502933145ba4ce321ee0c0e7a11882ea5c9028a705fe98328e` |
| 123 | `lemma` | [cfc_le_algebraMap_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-algebramap-iff.md) | 1070 | `result-track:5c19d7fff84061fd08d6997c6ea6ec301f0295c371760b641d66d5c88a037f76` |
| 124 | `lemma` | [algebraMap_le_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/algebramap-le-cfc-iff.md) | 1075 | `result-track:c326ce01d9a38bcaf6a4b698c15eea295ce87cdd94b0ef334cbbdb4b726a572e` |
| 125 | `lemma` | [le_algebraMap_iff_spectrum_le](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/le-algebramap-iff-spectrum-le.md) | 1080 | `result-track:4741d9852a865b1535c05ab4401652714187b3e07985914b3895ef4e8365e858` |
| 126 | `lemma` | [algebraMap_le_iff_le_spectrum](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/algebramap-le-iff-le-spectrum.md) | 1085 | `result-track:bb92d391b27a49c036ec57c89c7ee9a5a2c5ea17ba5ab8cff69358fcf8288534` |
| 127 | `lemma` | [cfc_le_one_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-one-iff.md) | 1090 | `result-track:d88ed71fc8dfeb47857a3c1766133f3bf57bf662726e3f43ebf4d50c435cdeff` |
| 128 | `lemma` | [one_le_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/one-le-cfc-iff.md) | 1095 | `result-track:65afac8444ce2ea6d0442cd9199f34be4ac0007e142e4c74f8c1042e32b1e362` |
| 129 | `lemma` | [CFC.le_one_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-le-one-iff-source-edition-2.md) | 1100 | `result-track:e4c2089aac1c2b64cc1dac822d3b3ce3c8fd734f47ebe88cb1ad5c4f6e00cc8f` |
| 130 | `lemma` | [CFC.one_le_iff](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfc-one-le-iff.md) | 1104 | `result-track:2e938e59bb04a5a6dfda9a8902163a9a3a153c595dc8ca03548beb60ceca480b` |
| 131 | `def` | [cfcHomSuperset](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchomsuperset.md) | 1127 | `declaration-track:9c40b8e6d5539918838628b3b66de869494eebb6ac7fa341973bf8db681e9162` |
| 132 | `lemma` | [cfcHomSuperset_continuous](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchomsuperset-continuous.md) | 1131 | `result-track:8bbc744c970897ce5fd8d158cb94050ff651af128d373e9a8da0e518213c699a` |
| 133 | `lemma` | [cfcHomSuperset_id](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchomsuperset-id.md) | 1135 | `result-track:273232b107c603bc3817849968846d2de382bb09e11e8fc7bebe69218fd25451` |
| 134 | `class` | [ClosedEmbeddingContinuousFunctionalCalculus](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/closedembeddingcontinuousfunctionalcalculus.md) | 1149 | `declaration-track:143847acd87a7304a83d973c62a595ec7e29463de98429696b8dfa9aab4efe02` |
| 135 | `lemma` | [cfcHom_isClosedEmbedding](../../../../FunctionalAnalysis/UnitalNamespacedPublic.lean/declarations/cfchom-isclosedembedding.md) | 1155 | `result-track:9f36e3a6f52e6f9b03e9d8dd4dd412f6867807724c996ccf6613449614ae800a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e71a2b26af1f3c3d6e9b4ee990ee6952ca8a7f4b6530af7c0efbca43cb397ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
