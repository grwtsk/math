# Verification target: Banach Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36dc4e2ae56a5f270d6fb9c3dfd1593c3c759d73",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36dc4e2ae56a5f270d6fb9c3dfd1593c3c759d73`.

Source path: `GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean.json)

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
| 1 | `structure` | [NonlinearRightInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/nonlinearrightinverse.md) | 46 | `declaration-track:3bd65175438e75fabbbcf82f4783544c148483feb14d0bd79b4022664a875164` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:7b8bafb4b058359665b995511bd050414375cb09a00016b8f5def148835f9609` |
| 3 | `theorem` | [NonlinearRightInverse.right_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/nonlinearrightinverse-right-inv.md) | 60 | `result-track:d3ddce8fcc98d338bd39574f31017efd751f75345a7b5b3fc3ebc96623db3e61` |
| 4 | `theorem` | [NonlinearRightInverse.bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/nonlinearrightinverse-bound.md) | 64 | `result-track:a6e3fac32056f77dd00897e633c24c0de1d7680f43b0c50cfacc940ba2f5b722` |
| 5 | `def` | [ContinuousLinearEquiv.toNonlinearRightInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/continuouslinearequiv-tononlinearrightinverse.md) | 74 | `declaration-track:26f760b129e0e61f0948f671d245e2da6e8afcaac01d5f73b723b866a62ed2f3` |
| 6 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/instance.md) | 82 | `declaration-track:6a3c1e7349a92634a4f5958ed61257130ca366650ef7b12a6b3f86007b48cf74` |
| 7 | `theorem` | [exists_approx_preimage_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/exists-approx-preimage-norm-le.md) | 100 | `result-track:9f06799301841c3d11a0ee0d7f3ac4e05ca768533f6b0e654692067057d86262` |
| 8 | `theorem` | [exists_preimage_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/exists-preimage-norm-le.md) | 170 | `result-track:2627ba8c2a61d1d2fb1e761424a38c934de7d13bee0de2ecdad1f2fdefb62e29` |
| 9 | `theorem` | [isOpenMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isopenmap.md) | 237 | `result-track:0d8074359d07ed411e657322348aa2b06862ca86706a73d1eeb16cd864e34a38` |
| 10 | `theorem` | [isQuotientMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isquotientmap.md) | 258 | `result-track:e39a7b118978c01bba30eb2d52786862844c8e66c2bf3573b068d3e3fc211902` |
| 11 | `theorem` | [Banach Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isopenmap-source-line-263-occurrence-2.md) | 263 | `result-track:a57205da8d1b0655cb46d5507798dfa0c57d030645cb9ac7a1654bbc19d46dfa` |
| 12 | `theorem` | [interior_preimage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/interior-preimage.md) | 276 | `result-track:2788ec8f4a5100245a9d8a5c7c1c29fd43481f0d507a7b9a0acd6d9e5d02e02e` |
| 13 | `theorem` | [closure_preimage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/closure-preimage.md) | 280 | `result-track:8e49a5d22078bb043d49b19b5771c6ce809455fa9ee83a35529f53ac52bb5322` |
| 14 | `theorem` | [frontier_preimage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/frontier-preimage.md) | 283 | `result-track:29e6d336584d4262cad5d297b9b1b12093b338f68b5ccdd548037c110e44df80` |
| 15 | `theorem` | [exists_nonlinearRightInverse_of_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/exists-nonlinearrightinverse-of-surjective.md) | 287 | `result-track:172601c12619b63c2ddf118ba7efc0dfba43f1e63bfe4c519ca36bd05d89c04c` |
| 16 | `theorem` | [nonlinearRightInverseOfSurjective_nnnorm_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/nonlinearrightinverseofsurjective-nnnorm-pos.md) | 308 | `result-track:3782a7778c87a4e9319821977d335ad933b16d016ff20ddab2e51456ece793d9` |
| 17 | `theorem` | [continuous_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/continuous-symm.md) | 321 | `result-track:0b0f3f516d1ab9f7bcd41b490b33ffc1c7992061d35f27582cf25a6ee187cf14` |
| 18 | `def` | [toContinuousLinearEquivOfContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/tocontinuouslinearequivofcontinuous.md) | 331 | `declaration-track:6c3c91baa252dc03eb38c35abb02ff79119ec19c25c8580c81b2cfde00532924` |
| 19 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coefn-tocontinuouslinearequivofcontinuous.md) | 337 | `result-track:72cb1f8529990110438f5cb983dc43c29df0a1269e5b1fa847d379ba4cd48a6f` |
| 20 | `theorem` | [coeFn_toContinuousLinearEquivOfContinuous_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coefn-tocontinuouslinearequivofcontinuous-symm.md) | 342 | `result-track:3aaa188324d4fe9776be3486ed69ad90d56b5451071079bca6b7965938e69772` |
| 21 | `def` | [equivRange](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/equivrange.md) | 354 | `declaration-track:41256f0cf5109113a3fec0f1069c7fc8d9070f98dcc11cbe4ee535a45d2e085c` |
| 22 | `theorem` | [coe_linearMap_equivRange](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coe-linearmap-equivrange.md) | 361 | `result-track:7557bef01c026583d179e43c983e2b9584497dd93ba989b368dd4283a2eecf8d` |
| 23 | `theorem` | [coe_equivRange](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coe-equivrange.md) | 366 | `result-track:45ab59febcd720a95bd0ffba13fc474d741505f0822999fb1ba2a0bfe60f5171` |
| 24 | `lemma` | [equivRange_symm_toLinearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/equivrange-symm-tolinearequiv.md) | 371 | `result-track:87e6307b71e8fb9093e07c574894652416d1bc3a03bc3d2e7fbace72259eb5ec` |
| 25 | `lemma` | [equivRange_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/equivrange-symm-apply.md) | 377 | `result-track:b964b7ce078a7388ec9299c9c0481ad6f03c5c10011b00b21d4cc28ed87d5f1f` |
| 26 | `lemma` | [antilipschitz_of_injective_of_isClosed_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/antilipschitz-of-injective-of-isclosed-range.md) | 391 | `result-track:e5a0542823b5d7e5766d8c07f80059274c9e188137a4de8d2a04d8eb9b72cb40` |
| 27 | `def` | [antilipschitzConstant_of_injective_of_isClosed_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/antilipschitzconstant-of-injective-of-isclosed-range.md) | 397 | `declaration-track:6530adea14adecf8df871140e74d5445ab9ef9ccb5081fe668d6c9e85bb802e2` |
| 28 | `lemma` | [antilipschitz_antiLipschitzConstant_of_injective_of_isClosed_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/antilipschitz-antilipschitzconstant-of-injective-of-isclosed-range.md) | 401 | `result-track:878672b450f5b24c24fce700cce444ed15e56ddb1f89caf6d6b02eeb994fa743` |
| 29 | `lemma` | [isClosed_range_iff_antilipschitz_of_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isclosed-range-iff-antilipschitz-of-injective.md) | 408 | `result-track:7ab39e6b89f78cee2d26cda7622867079ab7e315df8d4453dc24c8b6c1b6f6dd` |
| 30 | `def` | [leftInverse_of_injective_of_isClosed_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/leftinverse-of-injective-of-isclosed-range.md) | 418 | `declaration-track:9b6073ceb700d877003c2dd3bc78d582981058d302f6f257006945318c06a003` |
| 31 | `def` | [ofBijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/ofbijective.md) | 440 | `declaration-track:ad8510068d5894f625313622460209697386687d417a1d5d53ade76e3d195aaa` |
| 32 | `theorem` | [coeFn_ofBijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coefn-ofbijective.md) | 449 | `result-track:0f1919523ab942014cb76d64b3c067697148a022666affec246388d15027c737` |
| 33 | `theorem` | [coe_ofBijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coe-ofbijective.md) | 453 | `result-track:23acf9fb2e3a7c0b5b1820b90ac30f133673eb7795205b5188423b1086198f8c` |
| 34 | `theorem` | [ofBijective_symm_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/ofbijective-symm-apply-apply.md) | 459 | `result-track:af86b7ba4909bb77eb09edb2c0857670579797209dbe3378e2c0cf4d515e60bf` |
| 35 | `theorem` | [ofBijective_apply_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/ofbijective-apply-symm-apply.md) | 464 | `result-track:59801931d458d5c6ea78678ac787b173746be941baa7e31357160439d6cb3e08` |
| 36 | `lemma` | [Banach Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isunit-iff-bijective.md) | 468 | `result-track:742567cf3905d02902c33a9c23fca6d6236762f5733c221db5b611f05614aadb` |
| 37 | `theorem` | [isUnit_iff_isUnit_toLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/isunit-iff-isunit-tolinearmap.md) | 486 | `result-track:7638798551411e8ab78393db996979cd7555d01aef938eb6452e691f06ba0b0e` |
| 38 | `theorem` | [spectrum_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/spectrum-eq.md) | 494 | `result-track:91fe8ac5b2bae93242bb2f712e0c87e037f2d0f3cfb0ddd569b2667be44ed53f` |
| 39 | `def` | [coprodSubtypeLEquivOfIsCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coprodsubtypelequivofiscompl.md) | 504 | `declaration-track:353ef81f4e6490c60f2b931ecf43d96abe66ee88e566d7509b3f50b7e037ac34` |
| 40 | `theorem` | [range_eq_map_coprodSubtypeLEquivOfIsCompl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/range-eq-map-coprodsubtypelequivofiscompl.md) | 514 | `result-track:938ea60bd638fe5706af16f599329ef8da5882911ef732ce7840509703311e6c` |
| 41 | `theorem` | [closed_complemented_range_of_isCompl_of_ker_eq_bot](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/closed-complemented-range-of-iscompl-of-ker-eq-bot.md) | 526 | `result-track:096b4eaac6a340f7a435a95f4c0d38368e7f7057a35859795fe6568a7f699244` |
| 42 | `theorem` | [LinearMap.continuous_of_isClosed_graph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/linearmap-continuous-of-isclosed-graph.md) | 545 | `result-track:20108fa89ea11aca56d4b0fe122f995fca27f67ed4f30a0cc507e321c68156ed` |
| 43 | `theorem` | [LinearMap.continuous_of_seq_closed_graph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/linearmap-continuous-of-seq-closed-graph.md) | 559 | `result-track:31cc40b286e4d9d28ac431f60ddf1f8d94388b5c4f6719ecf2d19c5673c72126` |
| 44 | `def` | [ofIsClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/ofisclosedgraph.md) | 576 | `declaration-track:2da985bca5ac97f50310d5a88ae715ca3b1425f12cc03c790c194d3000d16a33` |
| 45 | `theorem` | [coeFn_ofIsClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coefn-ofisclosedgraph.md) | 581 | `result-track:2852562070e66f0c1b44d9c6e9ee7d5b86978c7723d4ef2328bf51f4dc7e6d2e` |
| 46 | `theorem` | [coe_ofIsClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coe-ofisclosedgraph.md) | 585 | `result-track:0af19d0dc69b916d15fc761197f44767e14af04a801b03f34bd8c492955b175c` |
| 47 | `def` | [ofSeqClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/ofseqclosedgraph.md) | 592 | `declaration-track:74cde5a6c62a152cbc3e62a2ad922134bfcf7e15154eead6f6875b912f840676` |
| 48 | `theorem` | [coeFn_ofSeqClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coefn-ofseqclosedgraph.md) | 599 | `result-track:9b53a2a61f45f2bb75cf6448b87a28dc8b67f8da45a70803bd0ff0ffbf99fe22` |
| 49 | `theorem` | [coe_ofSeqClosedGraph](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/coe-ofseqclosedgraph.md) | 604 | `result-track:615415c86913636cb92cd5e72eeff89e99e307e2adfdd57742a2b67220b50f20` |
| 50 | `lemma` | [closed_range_of_antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/closed-range-of-antilipschitz.md) | 622 | `result-track:4bc130ec5b6be49223438d36b378e19817264d4047ef8111638d63ead25782ae` |
| 51 | `lemma` | [Banach Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/completespace-range-clm.md) | 628 | `result-track:88f717e73e59d00af1501ed654beb95ab3c172334af0e805dfac8a8df4ad2930` |
| 52 | `lemma` | [bijective_iff_dense_range_and_antilipschitz](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/BanachNamespacedPublic.lean/declarations/bijective-iff-dense-range-and-antilipschitz.md) | 635 | `result-track:89c399aa7763636f581ce68ae28296e9c6a92530182d51e7c6df4b3cce0b6d59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e36f20f57d3843c2c75f09b577a1bcf1906eb576a1d6c3faee4acf97132dee8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Banach/Variant781fd08ff1222b2daa004d617a74a0ce91e06827c188f3360fc35060c29a5aa5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
