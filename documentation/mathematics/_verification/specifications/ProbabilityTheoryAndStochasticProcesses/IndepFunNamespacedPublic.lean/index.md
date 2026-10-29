# Verification target: Indep Fun Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428ee49d927019dc40db5400fd6c5c1aa80440c2",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428ee49d927019dc40db5400fd6c5c1aa80440c2`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean.json)

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
| 1 | `def` | [iIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun.md) | 55 | `declaration-track:998cd2b6dd737023189c1f65fcbdf0015f5aef84dab16e84d6594ca19af8ce9e` |
| 2 | `def` | [IndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun.md) | 63 | `declaration-track:96ccc6c37d490630a67402796acc8c036dc010de0b710166487b1ca05c73f882` |
| 3 | `lemma` | [iIndepFun_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-zero-right.md) | 78 | `result-track:9c43f33598001616223b19ea3848e7931f6797ab3ebe61a85c959132bb48a97a` |
| 4 | `lemma` | [indepFun_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-zero-right.md) | 81 | `result-track:099b7d019a86607b8ad7a2da77d6bbb3c3e4926e68d600110036fc5649da5548` |
| 5 | `lemma` | [indepFun_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-zero-left.md) | 84 | `result-track:6ad4d977957a65cae2008f3716d9a649f9992e9a32c84db7f369aba5eb682734` |
| 6 | `lemma` | [iIndepFun_congr](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-congr-source-edition-3.md) | 87 | `result-track:ef79c276e64db700c0928bb5d902070592735c25cfa08a46545eeee873534c9a` |
| 7 | `lemma` | [indepFun_congr](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-congr-source-edition-2.md) | 93 | `result-track:abfaa577c2df089576fb4e69924e702ce96c9dc6d1e1cb8db8789c04abb0ce86` |
| 8 | `lemma` | [iIndepFun.of_subsingleton](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-of-subsingleton.md) | 100 | `result-track:cced5248388745a9d56acd39be345b4d4998bc1cd23e95c42edcacb224cb0cb9` |
| 9 | `lemma` | [iIndepFun.iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-iindep.md) | 104 | `result-track:cad8f0dd227d28de12e32160a583dfa00da0c5e893243aa3901ee2a8209f421d` |
| 10 | `lemma` | [iIndepFun.ae_isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-ae-isprobabilitymeasure.md) | 107 | `result-track:5717315b1c132fd78da3b9b6e2386033ff70f0b7d7c2c0df3de9d7b16d2abb7a` |
| 11 | `lemma` | [iIndepFun.meas_biInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-meas-biinter.md) | 111 | `result-track:eac50e85deb944c8e69cd2e888024bdf90c0f0af7fbe2f2923cf0cf3d5d76228` |
| 12 | `lemma` | [iIndepFun.meas_iInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-meas-iinter.md) | 115 | `result-track:28b5d15d1312ab63d14cbb87dc02a407bdd20e5d62c446024d5568d4e4f1a150` |
| 13 | `lemma` | [IndepFun.meas_inter](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-meas-inter.md) | 119 | `result-track:0266190800b9787c67c19d5e4ad59290eaaef8d32cbfc89c22436378d6c81eae` |
| 14 | `lemma` | [iIndepFun.precomp](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-precomp.md) | 124 | `result-track:12a9004855b6870202ad10871a04b1b384ccc3750c3a5b71cd0c58da95dfb666` |
| 15 | `lemma` | [iIndepFun.of_precomp](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-of-precomp.md) | 128 | `result-track:1396ab11b8c63479babcb9d1f577f2588db220b59dda38de20016b59fd9cc471` |
| 16 | `lemma` | [iIndepFun_precomp_of_bijective](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-precomp-of-bijective.md) | 132 | `result-track:d67489860ed23266ca69235f2d44c341cf631f57b6766a830fc39382b734d3e5` |
| 17 | `theorem` | [iIndepFun.indepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun.md) | 138 | `result-track:6dc8d6b97ac1ebc8a900ddd0c683bdd413de5d1821f307738a63ec01a46d5f94` |
| 18 | `theorem` | [indepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-iff-measure-inter-preimage-eq-mul.md) | 142 | `result-track:682578db18d081ae6fd772dc9ae97588d4ac719c471b0f9e3ca05d2fb9c26a23` |
| 19 | `theorem` | [iIndepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-iff-measure-inter-preimage-eq-mul.md) | 153 | `result-track:168f6a1280814bb580f9d388f7f526c9448c36bdcd97388d7c2da17c8215d40f` |
| 20 | `theorem` | [iIndepFun.congr'](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-congr.md) | 175 | `result-track:5d3e6ee9d0243b8277883e1f3874649f0e823105af9f6a0aa77a681161cc56d2` |
| 21 | `theorem` | [iIndepFun_congr'](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-congr-source-edition-2.md) | 197 | `result-track:e7b9fa2964861cd83327bd1727caefa43dec73d788007a0c8bd64dcd469ab542` |
| 22 | `lemma` | [iIndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-comp-source-edition-2.md) | 205 | `result-track:6bffcc0be3bd268b4d7de84d604739f755266a1c9883332fce7d245a42499155` |
| 23 | `lemma` | [iIndepFun.comp₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-comp.md) | 216 | `result-track:4e7634f13573de443a31bedbaf0558685b1413807a23ae5baf62be6561e9d099` |
| 24 | `theorem` | [indepFun_iff_indepSet_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-iff-indepset-preimage.md) | 226 | `result-track:021e9cf2e147da387266e4740a7c218bad6cc68e44ca0396fad745947136ed1b` |
| 25 | `theorem` | [IndepFun.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-symm.md) | 236 | `result-track:7f4e5af7d11160a792e170cb545ad5cb82ca95db4fa7c875383898d172072387` |
| 26 | `theorem` | [IndepFun.congr'](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-congr.md) | 239 | `result-track:6ec1a9c198fafd8942eb1f2b61d8b660ff6522ba994da2ceea59855f6665d993` |
| 27 | `theorem` | [IndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-comp-source-edition-2.md) | 249 | `result-track:7c4d5cbf0d1aae4935061da28c31dfd237cf5205a1f5f90b3aa81cb8c09dfcbd` |
| 28 | `theorem` | [IndepFun.comp₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-comp.md) | 258 | `result-track:62f96b099f4c5a44f4babcf9fb4f4d16e41a74dad6ca691aa891f8620d80d1b6` |
| 29 | `lemma` | [indepFun_const_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-const-left.md) | 276 | `result-track:a685a53e930a9f139f33b1fd8c6eb5b4b367906c672fc0791bfebad95a3b79aa` |
| 30 | `lemma` | [indepFun_const_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-const-right.md) | 282 | `result-track:530988f5380b78434378450ebc586a8a0701134e85e2737d041d85525c0ba509` |
| 31 | `theorem` | [IndepFun.neg_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-neg-right.md) | 287 | `result-track:51eeb98dc344eb9944fd5560483196c89a31eda4245aa77f02b79ee79e41794c` |
| 32 | `theorem` | [IndepFun.neg_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-neg-left.md) | 291 | `result-track:2e1f5e93533793fca75aeca1d8b7f9939f10c477bf3576d53c4ecfe52ee1cd8e` |
| 33 | `theorem` | [indepFun_iff_compProd_map_prod_eq_compProd_prod_map_map](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indepfun-iff-compprod-map-prod-eq-compprod-prod-map-map.md) | 297 | `result-track:02e395c382ccca5a60dd297bfb280f9cc539acb1d076767a5f23ec0dd92edbf9` |
| 34 | `theorem` | [iIndepFun.indepFun_finset](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-finset.md) | 339 | `result-track:0fb1ef70dbf62c1415879bec746b30b15dc9141a8b27d2cbd27d580fd3bbdc0b` |
| 35 | `theorem` | [iIndepFun.indepFun_finset₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-finset-source-edition-2.md) | 424 | `result-track:e5db365b82fcdca8d5f21c8d5260f0a2a069ab90b2677c300fcdbe03b4eb867f` |
| 36 | `theorem` | [iIndepFun.indepFun_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prodmk-source-edition-2.md) | 447 | `result-track:90157a6db0a79c176e233ccafca38f2148980d528c698cd323f5f0c5d3105ed5` |
| 37 | `theorem` | [iIndepFun.indepFun_prodMk₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prodmk.md) | 476 | `result-track:7ee3aa113c28a94a62b337c3bbaa9f0f3ecf50516f12c80b61e3d1814ba96fdd` |
| 38 | `lemma` | [iIndepFun.indepFun_prodMk_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prodmk-prodmk.md) | 491 | `result-track:243416f5eb1a111ee34a33f42bfbeae8cecc09af09e1da29b49246bed6afb505` |
| 39 | `theorem` | [iIndepFun.indepFun_prodMk_prodMk₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prodmk-prodmk-source-edition-2.md) | 501 | `result-track:7524d6b91ea1682068bac0cbd09bb21e362dc6d47e66037a3d51533bfc645098` |
| 40 | `lemma` | [iIndepFun.indepFun_mul_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-left.md) | 526 | `result-track:0ed9191214ee25ea424acb5e61e4325b5237f34c181fe2c3c11d29077e1daded` |
| 41 | `lemma` | [iIndepFun.indepFun_mul_left₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-left-source-edition-2.md) | 534 | `result-track:cb16dc1bfaf15029fb372192dc2cd1ddef789c1a3431079d06c5611a93bcc92a` |
| 42 | `lemma` | [iIndepFun.indepFun_mul_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-right.md) | 542 | `result-track:4378344e7bb0a8517e30a1a850d25f5a4544f2eedebb951917dcf23012072949` |
| 43 | `lemma` | [iIndepFun.indepFun_mul_right₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-right-source-edition-2.md) | 548 | `result-track:82799f8a1cb72244443cd4787a9703f91b440fb72c56c614b3f4fbe1d36d1388` |
| 44 | `lemma` | [iIndepFun.indepFun_mul_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-mul.md) | 554 | `result-track:76383a90096f31aee0b25190b060db69815908c8456451916e48b800133943ca` |
| 45 | `lemma` | [iIndepFun.indepFun_mul_mul₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-mul-mul-source-edition-2.md) | 562 | `result-track:9595e4b942cb27b2d7f17cd41f12bc3f8e315ac2fe18d0b16d1877e2b2aeef14` |
| 46 | `lemma` | [iIndepFun.indepFun_div_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-left.md) | 575 | `result-track:054c80acbaebab510c655cff6711671c51a638fb03934e4f64f6f4d1d34783b4` |
| 47 | `lemma` | [iIndepFun.indepFun_div_left₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-left-source-edition-2.md) | 583 | `result-track:56fd2074cb9f85978b97bbd0f7ae63b89e92cc086f56152aafdc07c8c8859ef4` |
| 48 | `lemma` | [iIndepFun.indepFun_div_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-right-source-edition-2.md) | 591 | `result-track:18a55a836bd870ef587c0bb3332ba7e1d4ca75979c90656101af074444e8fdcd` |
| 49 | `lemma` | [iIndepFun.indepFun_div_right₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-right.md) | 597 | `result-track:004c50df4654373b699f3f7eeb95b032a566d07e7a70b86f2c44cf810b9f3d9c` |
| 50 | `lemma` | [iIndepFun.indepFun_div_div](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-div-source-edition-2.md) | 603 | `result-track:8c6e1ef5d789d36ed83d94330368469f015cc805398cd81aff2896623fb4dd63` |
| 51 | `lemma` | [iIndepFun.indepFun_div_div₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-div-div.md) | 611 | `result-track:2324d7f6ee843be1df6450698507b4b74c9f56418c77fe93b8676b3a0fe332cc` |
| 52 | `theorem` | [iIndepFun.indepFun_finsetProd_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-finsetprod-of-notmem.md) | 624 | `result-track:458391295b529270e93af0deda9b45b16660ef454ba6dfc1b40dbe4a85655d31` |
| 53 | `theorem` | [iIndepFun.indepFun_finsetProd_of_notMem₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-finsetprod-of-notmem-source-edition-2.md) | 651 | `result-track:9f0f5b8aefbdf8e139153dac43f0955fde1faf01abd73e31524c5adad392fa91` |
| 54 | `theorem` | [iIndepFun.indepFun_prod_range_succ](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prod-range-succ.md) | 675 | `result-track:888f969c8244278c833f5882d7d67e0f554d2fe5a6366fea8f74b1a326b51e01` |
| 55 | `theorem` | [iIndepFun.indepFun_prod_range_succ₀](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-indepfun-prod-range-succ-source-edition-2.md) | 681 | `result-track:fe68b393cdcba29f2a6bf8ebf96a2684dd1264bebb9b5cc5ab1ce73543807b1a` |
| 56 | `theorem` | [iIndepSet.iIndepFun_indicator](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepset-iindepfun-indicator.md) | 688 | `result-track:6ef70c9f433e0c49104ed317579d6c0c11b816df11efd30e2a9e9565a95ed47b` |
| 57 | `lemma` | [Indep.indicator_const_indepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/indep-indicator-const-indepfun.md) | 704 | `result-track:b8334485f71c3b3f10d5f47420d3e8a3e0c2efc60746dff1b0b2f6557be2148e` |
| 58 | `lemma` | [iIndepFun.cond_iInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndepFunNamespacedPublic.lean/declarations/iindepfun-cond-iinter.md) | 715 | `result-track:a3f4b9c4e73a9ddc2fc44704d97b6df77076b6de00706b676e855da7878b4707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=823adbd525f37ea478dbf937325672e8326b9764419595789a89ce2df64dae5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/IndepFun/Variant5ec87c8603c6b829c9c935f62eaf3626080bf03872f39df4fef51e6f6b1a3990.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
