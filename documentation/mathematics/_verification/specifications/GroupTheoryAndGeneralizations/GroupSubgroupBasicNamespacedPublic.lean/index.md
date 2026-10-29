# Verification target: Group Subgroup Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a474c7cf46814df47fea56e9698a77834bf8c717",
  "lexical_observation_count": 162,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a474c7cf46814df47fea56e9698a77834bf8c717`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean.json)

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
| 1 | `theorem` | [div_mem_comm_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/div-mem-comm-iff.md) | 76 | `result-track:906802abd75c0a9b5c7dd0585063c0dfb245db4c91134da9e0d2b9949f82d892` |
| 2 | `theorem` | [div_mem_comm_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/div-mem-comm-iff-source-edition-2.md) | 86 | `result-track:b828843d5db3a5b73d1907ad63a801894e1b8cba42eaad56d9111df4c32e7717` |
| 3 | `def` | [prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod.md) | 97 | `declaration-track:6519907d0423d3d301a96eb02382f9f961004c4eaae9682cff521fc9f0cd8dfd` |
| 4 | `theorem` | [coe_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/coe-prod.md) | 102 | `result-track:f5b62c2ae45b667ebe72ee7ab8c9d269fbb42a6dd301ae1e20b9739fc5fd0fdb` |
| 5 | `theorem` | [mem_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-prod.md) | 107 | `result-track:9c0235d6fceb78177467ce432cfc155965dea9440b5cd73d61b7018bc76e11c9` |
| 6 | `theorem` | [prod_mono](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-mono.md) | 112 | `result-track:595ec708c8dff2233eac535565d5ecd070fa297e4a84160a67e2b71e7f50a251` |
| 7 | `theorem` | [prod_mono_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-mono-right.md) | 116 | `result-track:c9134a556b459d5dcb13f8796e795c311464767aa15bf876bc24f22cb8e8e192` |
| 8 | `theorem` | [prod_mono_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-mono-left.md) | 120 | `result-track:b9f1a130ff776ba7a33491ae5f0b1fce1960a11b8314af65a956251f990c8ca1` |
| 9 | `theorem` | [prod_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-top.md) | 124 | `result-track:0b751dd52b9e5668b4b212664966677a299c64affe6326a38cc2365301582904` |
| 10 | `theorem` | [top_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/top-prod.md) | 128 | `result-track:df17a7e6d2d602c36843bc2c15ffed7784db8cbdd5bb1f0cd52ee60c9629cb4e` |
| 11 | `theorem` | [top_prod_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/top-prod-top.md) | 132 | `result-track:00f3edf17dd467b950a700ecd79fb7450ce6c5040fe51cc9dbe86920589748da` |
| 12 | `theorem` | [bot_prod_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/bot-prod-bot.md) | 136 | `result-track:a8d0d04cdf93973255bc29761f0f93fffe459ca3b4b4d6dfeed55dd81e5ff7dd` |
| 13 | `theorem` | [le_prod_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-prod-iff.md) | 140 | `result-track:b902631103bc4bce4744d03ab2b61e2f698da9479c2ce64503fdae1101e11935` |
| 14 | `theorem` | [prod_le_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-le-iff.md) | 145 | `result-track:01342776415fbbd7020f74cbca1c824c59ab8b0e7f6dd5f1c8ee371ab2e88fb9` |
| 15 | `theorem` | [prod_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-eq-bot-iff.md) | 150 | `result-track:65794a172bf66e02c6269cf437ca723e97fabcebe9691a26fc426a78a9e5060c` |
| 16 | `theorem` | [closure_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/closure-prod.md) | 154 | `result-track:59759710a4b3dbf59e2df2e945013fdb90a76232bf6dce532d3c7de3b9f6ea25` |
| 17 | `def` | [prodEquiv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prodequiv.md) | 166 | `declaration-track:003e23153ca3bd101014bf1c2bc93d5e8e4e2788df9c635f8590c1503f14feeb` |
| 18 | `def` | [pi](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/pi.md) | 182 | `declaration-track:b5ecc96d520ad45cce86e8d5daf632a4439c37a9a617da4cda5b0c47a8abf741` |
| 19 | `theorem` | [coe_pi](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/coe-pi.md) | 187 | `result-track:6e5aa5b36f40b7eb2146b9133b3130e2e1cf766cf1581b83045f18f8e76469e7` |
| 20 | `theorem` | [mem_pi](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-pi.md) | 192 | `result-track:17da4ece30ff32acb52b1912e1a82140c897d5f89df7d7f44d88462e342b705f` |
| 21 | `theorem` | [pi_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/pi-top.md) | 197 | `result-track:045047f3fe7b651dadcf3028859e7e72d2c7ab36125efc303e71e10deb5804f1` |
| 22 | `theorem` | [pi_empty](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/pi-empty.md) | 201 | `result-track:2acde1b82b92b8f78675bed344c3f28ed054d252c84fe3a8ec9a93c80a6870ff` |
| 23 | `theorem` | [pi_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/pi-bot.md) | 205 | `result-track:0de6609ccd7f9a8da38b34d7668b7001c7fa3f1456ff13d76b4ea804b2e08eaf` |
| 24 | `theorem` | [le_pi_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-pi-iff.md) | 209 | `result-track:70fd55aceb17d47326b2a5681f7e0da014a53efcbd29a71751e79030634d2cd9` |
| 25 | `theorem` | [mulSingle_mem_pi](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mulsingle-mem-pi.md) | 214 | `result-track:a8cdfac1f7c7c9f2a3a8afb71c55c3cc82e67329fa68271f2e50baad29fff471` |
| 26 | `theorem` | [pi_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/pi-eq-bot-iff.md) | 219 | `result-track:af64747f026893e7c1dcb38a42f461dd7080be1bdd4110fbedf7184c3cb822dd` |
| 27 | `instance` | [instIsMulTorsionFree](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instismultorsionfree.md) | 226 | `declaration-track:c49c9f66e34be6eb47842ae4340f9e955be247cca652ab7b067e608220b5eb4c` |
| 28 | `structure` | [Characteristic](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic.md) | 242 | `declaration-track:16750791d0405b3932be0c293894db2788c4d79f0ead9bd23d6347f06a0a2dd4` |
| 29 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 248 | `declaration-track:cbe8ca912227df25deba960dea07f2de0296475282c651e9037c5b04a40626e0` |
| 30 | `structure` | [Characteristic](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-source-edition-2.md) | 259 | `declaration-track:918bbc3f8bb0277b00c7cc112060cf8e28e02221b8b78ef231685b07c5db150c` |
| 31 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instance.md) | 267 | `declaration-track:5a784b3c2d6c47b115c28d4d0cfbbfe2e6660ce9112977e58a5494b9eb1ced5a` |
| 32 | `instance` | [normal_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-top.md) | 276 | `declaration-track:7b48e8735005bef06616f976e25e629900acb3462ebb0e0ba158cc7c5e2579fd` |
| 33 | `instance` | [normal_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-bot.md) | 281 | `declaration-track:f76cfa925f841c4848ca4f83438d25f8d501c4cb9ddd8ffa47737987198c9f6c` |
| 34 | `theorem` | [characteristic_iff_comap_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-comap-eq.md) | 287 | `result-track:5a9cf8cb4dd728faa6ae9d00dc94ebe9432f23538e23eb1350a8d65ed3cf8f4c` |
| 35 | `theorem` | [characteristic_iff_comap_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-comap-le.md) | 291 | `result-track:44ebc3c2a2a0929f4554081049c8dab4bca3c6673070baf34f1f38de95ac36bf` |
| 36 | `theorem` | [characteristic_iff_le_comap](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-le-comap.md) | 297 | `result-track:5ca974546fa4726dbb8331bd755be588bf9550494187fc699e1e084631b1a61e` |
| 37 | `theorem` | [characteristic_iff_map_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-map-eq.md) | 303 | `result-track:c19be3f00f0e95d0e18d9808b870a4e7d1c66546f218aaedb87190607f6b2ed0` |
| 38 | `theorem` | [characteristic_iff_map_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-map-le.md) | 308 | `result-track:38722bcfda87603f53e03ecca7bc7814e30adb89ddf1ea6db5d0b16c4caebfb3` |
| 39 | `theorem` | [characteristic_iff_le_map](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iff-le-map.md) | 313 | `result-track:10934e5409f1060aa27827361982572a6976d72c9d1eaf1a4a4d4cbbc4dc2596` |
| 40 | `instance` | [botCharacteristic](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/botcharacteristic.md) | 318 | `declaration-track:d2726300cd9b4f7346f6ed175cb837b3488cec17ef084c0f8a282cd5ab764507` |
| 41 | `instance` | [topCharacteristic](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/topcharacteristic.md) | 322 | `declaration-track:83402fdef03eaf5465ed0630ff525921a02e6b3a08a0a436a6a2382b037da242` |
| 42 | `instance` | [characteristic_sup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-sup.md) | 326 | `declaration-track:31800764d9b17c30b65745220e7135739336c27b0e34cf353696e5467524bf85` |
| 43 | `instance` | [characteristic_iSup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-isup.md) | 331 | `declaration-track:64c3edc3b97cfbcc5728d18b11d7c6e7439a53b90db80367f8d8709155bfc6c1` |
| 44 | `theorem` | [characteristic_biSup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-bisup.md) | 336 | `result-track:f7d5a88eaf2df3f596081c12904bc3b89668fca207e233fbbe0f4d32b34bea6f` |
| 45 | `theorem` | [characteristic_sSup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-ssup.md) | 341 | `result-track:f668b17ed5df389cb145452fef2544e768a3553839b9e2cb095fe3d9c9d70782` |
| 46 | `instance` | [characteristic_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-inf.md) | 346 | `declaration-track:39428eaaff6f12feda5e861c18aaf1f2fb65e03420312cca8a345de087673cd9` |
| 47 | `instance` | [characteristic_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-iinf.md) | 351 | `declaration-track:78b7917cac5c4ad4aa9e9793ad6aacd4a090a4cf2c8f2e7d864a19b9a3a03f66` |
| 48 | `theorem` | [characteristic_biInf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-biinf.md) | 356 | `result-track:7b15b8496498b4b17ba5db4955680f6015d38092c51dea32afcaf90c1caa13f8` |
| 49 | `theorem` | [characteristic_sInf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-sinf.md) | 361 | `result-track:a86c56d061d2adf71c7aac01cfc604c675d1445fed5f01033a7e5e41e2cb1de7` |
| 50 | `def` | [Group Subgroup Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-source-line-370-occurrence-2.md) | 370 | `declaration-track:87ea58cb9d6a5484b192194f089c9e7f10e4e810efacf9417a577cdb2a90eabd` |
| 51 | `instance` | [characteristic_of_characteristic_of_characteristic](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/characteristic-of-characteristic-of-characteristic.md) | 385 | `declaration-track:6835896563c1ce1ade231d589e47b8531683177ed949f7651b4f1fb9e7738d56` |
| 52 | `theorem` | [normalizer_empty](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizer-empty.md) | 396 | `result-track:3fb596bb474f6e17cc1c7abb8d5e5ee72c47b2818aa55f3c3539878ecbd87c90` |
| 53 | `theorem` | [Group Subgroup Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizer-eq-top-source-line-400-occurrence-2.md) | 400 | `result-track:48a4fcf32c7f20f81ac45394b2b8e087ed57e72b162dade1810409c0f229100c` |
| 54 | `theorem` | [mem_normalizer_iff_conj_image_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-normalizer-iff-conj-image-eq.md) | 406 | `result-track:7ba1620e6ce1de6ef3520a4ad59f1c9c0469a06b5d1a082e7cf4f74ec9eb4679` |
| 55 | `theorem` | [mem_normalizer_iff_map_conj_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-normalizer-iff-map-conj-eq.md) | 413 | `result-track:292947887dfd0bf77508431ebe8066a6cd1b87aa3a5c6d6a5c352d23d7c5baaf` |
| 56 | `theorem` | [normalizer_le_normalizer_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizer-le-normalizer-closure.md) | 422 | `result-track:7b7f95cbd1501f06ee8e4ed3e0ccd778a8d44ac147eabc8d263d3f763d100dc0` |
| 57 | `theorem` | [normalizer_eq_top_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizer-eq-top-iff.md) | 430 | `result-track:6237692817b55bd5b37304619bac005937c12d64082ea9f3080c63e4cf81aa2d` |
| 58 | `theorem` | [normalizer_eq_top](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizer-eq-top.md) | 437 | `result-track:7dfb07266468db2d25b5084c90cde2a6ebd59a2835a89bb81116e3331fcf09dc` |
| 59 | `theorem` | [normal_iff_map_conj_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-iff-map-conj-eq.md) | 441 | `result-track:7a3135f451eba3bf64922a4664f4d06c0d144e40573ee3a256f98527845d3c04` |
| 60 | `theorem` | [Normal.map_conj_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-map-conj-eq.md) | 446 | `result-track:76011a7867880506d1767824b6c3d30cfd856de3ee359ea65fc17db169d081a2` |
| 61 | `theorem` | [le_set_normalizer_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-set-normalizer-iff.md) | 450 | `result-track:a0e52075863723ebd7dd71f817480b0f3d7790ecb13b4cd095874ae5854f6977` |
| 62 | `theorem` | [le_normalizer_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-iff.md) | 456 | `result-track:57ebdd911d0a73ac8f5628eb64e0ad4a21da58ab69055cb3a06d20771c957f8d` |
| 63 | `theorem` | [le_normalizer_closure_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-closure-iff.md) | 461 | `result-track:0e678e780e66ef1857047fe92419cc81158a1afd365be30688edaafed18d70ea` |
| 64 | `theorem` | [le_normalizer_comap](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-comap.md) | 473 | `result-track:b3582ad475966474178a41d2c3b85c90d36d4aa574e6710dc9f58920250fa3a3` |
| 65 | `theorem` | [le_normalizer_map](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-map.md) | 481 | `result-track:b6a6aef8d0c46a571b9a27b38d3cb2b59a522ca2b7b7ea0e7be429537231535d` |
| 66 | `theorem` | [comap_normalizer_eq_of_le_range](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/comap-normalizer-eq-of-le-range.md) | 489 | `result-track:9ec31ce94ae99df3521767d41de02810ce91302a35788cf1ac64b84be6272cc9` |
| 67 | `theorem` | [subgroupOf_normalizer_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subgroupof-normalizer-eq.md) | 497 | `result-track:189987ccc9f541d2483064a972f6b1885bd8658ec28c670d8c03ac6d29bc222a` |
| 68 | `theorem` | [normal_subgroupOf_iff_le_normalizer](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-iff-le-normalizer.md) | 502 | `result-track:9f442961da8e83a5e16ecf86d8a51ec8d7862039c44780b34ea80457139c4447` |
| 69 | `theorem` | [normal_subgroupOf_iff_le_normalizer_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-iff-le-normalizer-inf.md) | 507 | `result-track:c9f3c1b5f45fabd2d912b564f5be909c1892cf7c1356df162e0244de1c0c041e` |
| 70 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 512 | `declaration-track:5fb34dd96fe4b46d6cc2ac3489c8dd98ce2c7ed3dfea7b0134e496f11b57595d` |
| 71 | `theorem` | [maximal_normal_subgroupOf_normalizer](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/maximal-normal-subgroupof-normalizer.md) | 516 | `result-track:e3ee97fc10f6aa44cb4560c9367b42d1d9c1a17b500ba889a4306ad735269195` |
| 72 | `theorem` | [le_normalizer_of_normal_subgroupOf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-of-normal-subgroupof.md) | 521 | `result-track:55e66305c7b0305bcabb2b71a7ebe871bcf217f9545b4cc8e8d88ff65c4e49f6` |
| 73 | `theorem` | [subset_normalizer_of_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subset-normalizer-of-normal.md) | 526 | `result-track:c4b964dfa593f629881bf8969553bb281a8668169b34288fcc4e25797fb5a743` |
| 74 | `theorem` | [le_normalizer_of_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalizer-of-normal.md) | 530 | `result-track:30ce38540a8d55a5fdfeb0a628e4d5a833dc9f70ce053c41172b2c368e876d97` |
| 75 | `lemma` | [inf_normalizer_le_normalizer_sup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inf-normalizer-le-normalizer-sup.md) | 533 | `result-track:ea20f66c78a42e0854d4be3f71bd377433d089b3a3d8a112f9625d49bb85a43d` |
| 76 | `theorem` | [inf_normalizer_le_normalizer_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inf-normalizer-le-normalizer-inf.md) | 546 | `result-track:91a8069d75f2be5c2234fb80e51f4edb696ffc3dc4bc55da1f1c79fa241407f6` |
| 77 | `theorem` | [iInf_normalizer_le_normalizer_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/iinf-normalizer-le-normalizer-iinf.md) | 551 | `result-track:68545010f03b01a57c3ecf614e48a53d5106ebae9d29df220b123edf8fd2ebfd` |
| 78 | `def` | [Group Subgroup Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizercondition.md) | 557 | `declaration-track:caede8f30748402b7da4ad605c36910b446c2d387a6e974515a9b67229f1bab2` |
| 79 | `theorem` | [Group Subgroup Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalizercondition-iff-only-full-group-self-normalizing.md) | 562 | `result-track:c99c486c64646d2962cdbfe27ad67f138025dd3e83ef28cc0c50c77e7d21437a` |
| 80 | `def` | [conjugatesOfSet](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugatesofset.md) | 580 | `declaration-track:a22382a9da9bb28df13e668fafa7da2b500210705b21f8c211fdabb0555c2e47` |
| 81 | `theorem` | [mem_conjugatesOfSet_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-conjugatesofset-iff.md) | 584 | `result-track:85c264ac105419ead9fcb8ab79ad118de3216d3ba6d5bfea62300fd42db15481` |
| 82 | `theorem` | [subset_conjugatesOfSet](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subset-conjugatesofset.md) | 589 | `result-track:d6661e97b806547aeeadf55bb0a3d00143e7b09b4e3b089d73393dcf993734bd` |
| 83 | `theorem` | [conjugatesOfSet_mono](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugatesofset-mono.md) | 593 | `result-track:abf5426fd6af218c369361ce7860f8afa0a28e79acf73c83189fb0dd73147e3e` |
| 84 | `theorem` | [conjugates_subset_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugates-subset-normal.md) | 597 | `result-track:2003f2af92c7a67d55510c3cacdd58a126ef7dcd9763d330abb9183d396fd58a` |
| 85 | `theorem` | [conjugatesOfSet_subset](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugatesofset-subset.md) | 604 | `result-track:5019ccae7a7e883a3f1f3e5514b2e5c45e542c8ac044869847a9f22146e0b431` |
| 86 | `theorem` | [conj_mem_conjugatesOfSet](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conj-mem-conjugatesofset.md) | 610 | `result-track:ce56ad2e9639539003749a7a29e476fa8b0462bd1af8c0bdc853f6a077bd5147` |
| 87 | `theorem` | [conjugatesOfSet_union](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugatesofset-union.md) | 618 | `result-track:5c456a4f97193f935440dd1b36c5cbd36c14e8663a8f628c0914c6c5a0cc9df4` |
| 88 | `def` | [normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure.md) | 634 | `declaration-track:09cdb70b02986652c9c3d0727f8c40a49c4468eb0ef43cfa674697021eee5dbb` |
| 89 | `theorem` | [conjugatesOfSet_subset_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/conjugatesofset-subset-normalclosure.md) | 638 | `result-track:7d43cc92122db234a8a66d4f428e5b8eb9cda3997d767c424a4e515c35f487d1` |
| 90 | `theorem` | [subset_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subset-normalclosure.md) | 642 | `result-track:cbcb9659666a3c2fab53b1653cc89db95fa619e65d19039708611d48cd5816f0` |
| 91 | `theorem` | [le_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/le-normalclosure.md) | 646 | `result-track:80e2595a965ad61af61ca173c8f2caf8e6699041a29d66bc9eea9cc504226abd` |
| 92 | `instance` | [normalClosure_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-normal.md) | 651 | `declaration-track:0cdf68b163ef89a20f07061bf039ccd3bcef45a7bde01307f372e61fd4f7ce62` |
| 93 | `theorem` | [normalClosure_le_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-le-normal.md) | 665 | `result-track:c81f8ae5e35ee8753be43acf64b12e61776cd4c2322c70318daffa3deb43ad2e` |
| 94 | `theorem` | [normalClosure_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-subset-iff.md) | 674 | `result-track:ceeae845e781147f84a02afcebec9a9a6296faf6d963d5ac44e59c435f1771f8` |
| 95 | `theorem` | [normalClosure_eq_bot_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-eq-bot-iff.md) | 678 | `result-track:417738d2f32c78616d20a404eae86bbf84bee526ae9241bc245fee454bc6d9ab` |
| 96 | `theorem` | [normalClosure_mono](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-mono.md) | 682 | `result-track:c8e9e8ea55ecaf21d21fb50007ff390eaaa8dadd7ecfb61f48b511deb21e9f8f` |
| 97 | `theorem` | [normalClosure_eq_iInf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-eq-iinf.md) | 686 | `result-track:8ad63b95ddb77be09ccccd7c370c6fc245ae9e77891433ea182c66fe50e7c088` |
| 98 | `theorem` | [normalClosure_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-eq-self.md) | 693 | `result-track:be5396bf3c07c6d3dbab66cfa4ba1be36618a4256b4475d2b2ae62a87151bd57` |
| 99 | `theorem` | [normalClosure_idempotent](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-idempotent.md) | 697 | `result-track:30f28d1595d96b469c43288234e11cff5b42aa0f3e331fcc347fde6972b8d13b` |
| 100 | `theorem` | [closure_le_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/closure-le-normalclosure.md) | 701 | `result-track:900871584b15eba50612fe25052d30f81bc7c92a7c1a963bc0dc03eb61ff769c` |
| 101 | `theorem` | [normalClosure_closure_eq_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-closure-eq-normalclosure.md) | 705 | `result-track:7b98a949e458308e75221df1595abf2151fa7e38c78a1b383f7ab2e439b514ae` |
| 102 | `lemma` | [normalClosure_empty](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-empty.md) | 711 | `result-track:6caf25d51e61fbafe082795ac3965d329913f42fd3f413b3c388d81daa188819` |
| 103 | `theorem` | [normalClosure_union](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-union.md) | 716 | `result-track:a5c06c65f4046ebd1db0d1be9ffb537e4f5ec812d24153229034986b2f5a9c27` |
| 104 | `def` | [normalCore](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore.md) | 724 | `declaration-track:da10ede71914a1eed2238595d97237e9cafb71fc13f5088e377bc313eaadce17` |
| 105 | `theorem` | [normalCore_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-le.md) | 731 | `result-track:6b398f4d2403d52e9c2196065b50d81e81e3376057d92cd98922dbab34d65d2b` |
| 106 | `instance` | [normalCore_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-normal.md) | 736 | `declaration-track:7bee5861522fadb0e3be2669f7f28a9fbef783dcf5d54692ca77a0a2913396e9` |
| 107 | `theorem` | [normal_le_normalCore](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-le-normalcore.md) | 741 | `result-track:3d8d324f11ba7bfd14975c3f04d8c647d05a540d9145ec6337fcc1075cb9336c` |
| 108 | `theorem` | [normalCore_mono](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-mono.md) | 746 | `result-track:3c3c44d088b300a54edd07d8bf346e361851c69f35dc997077b53183e1f5fbab` |
| 109 | `theorem` | [normalCore_eq_iSup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-eq-isup.md) | 750 | `result-track:7b1b34585455f7f5c112aea0cc90ba9d9839c0e8f0e02d5e99e818c4af03163c` |
| 110 | `theorem` | [normalCore_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-eq-self.md) | 758 | `result-track:6080c4bf49a6613a8b564a70d2e4bd3efa04f55317892d21706f5764cb0760bc` |
| 111 | `theorem` | [normalCore_idempotent](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-idempotent.md) | 762 | `result-track:962eb4f6c6f5de08a6a08d53eacc2d401c647ec957447e4599aa1936eade3287` |
| 112 | `theorem` | [normalCore_eq_iInf_map_conj](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-eq-iinf-map-conj.md) | 766 | `result-track:af44be54719729d7742aff0f4cda8e04619d28e759c8dca666836d0d95490f16` |
| 113 | `theorem` | [normalCore_eq_iInf_comap_conj](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalcore-eq-iinf-comap-conj.md) | 780 | `result-track:6648ddc0770e93cc16f46e3b3da37e1412a68eb3db064414aa7ea6659162ccaf` |
| 114 | `theorem` | [prodMap_comap_prod](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prodmap-comap-prod.md) | 796 | `result-track:1803c89f75606bccfd87506344ccda22c79d391ef08e9dc24a5548bcfc3099a2` |
| 115 | `theorem` | [ker_prodMap](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/ker-prodmap.md) | 802 | `result-track:9762c3806ff6fc6770c789e1ca629c94ef59a587fcd5bb392f387ec1f71b91b3` |
| 116 | `lemma` | [ker_fst](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/ker-fst.md) | 807 | `result-track:ce744f452e8ebc104e7d0bd89a9a85a562f7364231b465b0cc0cd0b458e72be6` |
| 117 | `lemma` | [ker_snd](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/ker-snd.md) | 810 | `result-track:9a1efff3c5d0495485e3fa1ed14b4ac1e83d889dc724352fe8c24e2bfd7ab714` |
| 118 | `lemma` | [range_prodMap](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/range-prodmap.md) | 815 | `result-track:91b7a2a9d23fb95051025b24b51ebfd884120e8f3c35a75dc54bf56f8fc8f989` |
| 119 | `theorem` | [Normal.map](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-map.md) | 826 | `result-track:891d67e92a537b66920aa3c25f7e41056a30bf951a8cb2f8674233fa250a5e65` |
| 120 | `theorem` | [comap_normalizer_eq_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/comap-normalizer-eq-of-surjective.md) | 845 | `result-track:cf6f6d8e3ecdcc73a9b2071a65efe2a6847ff41943f825f5111776f7e4610003` |
| 121 | `theorem` | [map_equiv_normalizer_eq](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/map-equiv-normalizer-eq.md) | 853 | `result-track:24be82d64c8e59eddcbebfd4d79c03daa7eb3b15be4b1beda8493a1692e260dd` |
| 122 | `theorem` | [map_normalizer_eq_of_bijective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/map-normalizer-eq-of-bijective.md) | 866 | `result-track:69efcb6db4593e591e525d87dbace9221f0084d8c26c2dd6460ce1e93ba628b0` |
| 123 | `def` | [liftOfRightInverseAux](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofrightinverseaux.md) | 879 | `declaration-track:632a3ab97b828cee0556b7c72aa054f6c0c8aaa41292d6c9c875d330a59e02cc` |
| 124 | `theorem` | [liftOfRightInverseAux_comp_apply](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofrightinverseaux-comp-apply.md) | 892 | `result-track:3a3974b83a2f989b2289db386d0bbadc75199fab4ec2acda50be026f07e77404` |
| 125 | `def` | [liftOfRightInverse](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofrightinverse.md) | 933 | `declaration-track:495549c3f90b10aa6e30ff97aafd45baa4f1ad2bb22bcf7198cc803b531c10af` |
| 126 | `abbrev` | [liftOfSurjective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofsurjective.md) | 949 | `declaration-track:71728fd36b0d34fa6dafd8802c93435afed4052bee7613fc5eccda1179e4be55` |
| 127 | `theorem` | [liftOfRightInverse_comp_apply](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofrightinverse-comp-apply.md) | 954 | `result-track:e5683b890fd8c2ab8505c83fa72d926240e47d216f9a50743c5141a87937b402` |
| 128 | `theorem` | [liftOfRightInverse_comp](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/liftofrightinverse-comp.md) | 960 | `result-track:38d4861e83d2079f47d5d73b8ac623ef377e33596bf6b2e1879b3e1bd955e60c` |
| 129 | `theorem` | [eq_liftOfRightInverse](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/eq-liftofrightinverse.md) | 965 | `result-track:9ec22b6e712b30b5d5e79c28466dd50b02e945d2d205f3f12a9a0a527c7a575d` |
| 130 | `theorem` | [Normal.comap](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-comap.md) | 979 | `result-track:e71780997d4032961506135b09d4505e41fe126373de17f1df90f49513697c6b` |
| 131 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 983 | `declaration-track:feb18ed70161907fb117f6f19ad947bfe1d951599833d9a109e05042fea69dbe` |
| 132 | `theorem` | [Normal.subgroupOf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof.md) | 989 | `result-track:5cf769c7117860c2a7049808751d393c73f8c163dc23ed640817e2b9837ef8aa` |
| 133 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 994 | `declaration-track:a50cfbaaa813c90b4068cc45ce5f495bd6a02e37410f6097073e18b5a9fb9e21` |
| 134 | `theorem` | [comap_normalClosure_image_ge](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/comap-normalclosure-image-ge.md) | 1000 | `result-track:0db970b8a5787c881236cd6ab97a2fb7650f7d32469deff72f739cbd1bd9e666` |
| 135 | `theorem` | [map_normalClosure_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/map-normalclosure-le.md) | 1005 | `result-track:f96edfc09fc17ddef151b21a1686f4666166887dfba4d7638b06aefb39231c1a` |
| 136 | `theorem` | [map_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/map-normalclosure.md) | 1010 | `result-track:bf19599cfa1d849303bde2ad233495883aecca09c30a6a0271b2627f4eb3e1ad` |
| 137 | `theorem` | [comap_normalClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/comap-normalclosure.md) | 1018 | `result-track:8469497d39c8605680d599a4dc3483c7daed617113774b6abbdb296aa91bcdb5` |
| 138 | `lemma` | [Normal.of_map_injective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-of-map-injective.md) | 1023 | `result-track:815ae6a103adafc5a0b83f22a84e58d87c1ab059331ba84bfb3f96f4e90a8f2c` |
| 139 | `theorem` | [Normal.of_map_subtype](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-of-map-subtype.md) | 1027 | `result-track:2d8cbaae89a35dc5d7e87c283fc5805935d11e228f4a6d25e0c84e8251304755` |
| 140 | `theorem` | [normal_comap_iff_of_surjective](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-comap-iff-of-surjective.md) | 1031 | `result-track:4ae1ee22da1a4c2d0fdc5b4ae41b1806bc983aaa6affd214da302965e061e4fe` |
| 141 | `theorem` | [Group Subgroup Basic Namespaced Public](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-map-iff.md) | 1036 | `result-track:6bb1dae0e2b29933bf6ccbbe7769bc753f01402bfeadea88cd6db714379159ee` |
| 142 | `theorem` | [normal_subgroupOf_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-iff.md) | 1043 | `result-track:984f3427aea963aeb65f433d86372f370baa31ae0f0c908ba982d024c13a3d6c` |
| 143 | `instance` | [prod_subgroupOf_prod_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-subgroupof-prod-normal.md) | 1049 | `declaration-track:5181c62a1699c453a23f95860d419fbc085a5ebf20b16afa8766aef47bf6c6bf` |
| 144 | `instance` | [prod_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/prod-normal.md) | 1059 | `declaration-track:d6537724ec08e6372aa0cf5b7aa3cc59ff8f85823f912969512b2a37c87ae68d` |
| 145 | `theorem` | [inf_subgroupOf_inf_normal_of_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inf-subgroupof-inf-normal-of-right.md) | 1066 | `result-track:cafd94bf07b06f2c8fb91ab968fb12ded0438beb86a173a346ee35eff57e6d20` |
| 146 | `theorem` | [inf_subgroupOf_inf_normal_of_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inf-subgroupof-inf-normal-of-left.md) | 1073 | `result-track:77a4906cc67002f35687c01168ab6b3830ccd7f0ac70e837c23691db2a632a18` |
| 147 | `instance` | [normal_inf_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-inf-normal.md) | 1080 | `declaration-track:5e9571943241122eb5063e73dea52c9af94e4922a63794d0f44fb0c206debf8b` |
| 148 | `theorem` | [normal_iInf_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-iinf-normal.md) | 1084 | `result-track:c70a482ff691255d4194434380fe708f517b402049f822e2fa57dda8d08c87e9` |
| 149 | `theorem` | [SubgroupNormal.mem_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subgroupnormal-mem-comm.md) | 1093 | `result-track:ac10476b0190582c128241975b9408d965c78fbda41ea5cc7d9967411318e680` |
| 150 | `theorem` | [commute_of_normal_of_disjoint](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/commute-of-normal-of-disjoint.md) | 1100 | `result-track:69eb552126da0fd00a628088c3e7f3798bf0ffe30885738bea9bdc9194ca1350` |
| 151 | `theorem` | [normal_subgroupOf_of_le_normalizer](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-of-le-normalizer.md) | 1115 | `result-track:673b88a25630c4e1f2731706663635469291432718b5a2d5c95c285ce7d2bf26` |
| 152 | `theorem` | [normal_subgroupOf_sup_of_le_normalizer](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-sup-of-le-normalizer.md) | 1121 | `result-track:066b4c0dbce8b0be85d5fea22349659e4aebf16068917161c091df2b9256b3c4` |
| 153 | `instance` | [normal_subgroupOf_closure_normalizer](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normal-subgroupof-closure-normalizer.md) | 1129 | `declaration-track:7de3a521f773b2a28e3628f60cfc0eb14b088723e87b0ba03b3c722574567398` |
| 154 | `theorem` | [normalClosure_eq_top_of](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/normalclosure-eq-top-of.md) | 1140 | `result-track:a4069f0c520e773b6797de6e3463d2914efceb87cd8bed89e6b401bbf93898b9` |
| 155 | `def` | [noncenter](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/noncenter.md) | 1168 | `declaration-track:772dac07f23ffc2856cb3024cb18f145248fdd8e346f1ee7e9ddac9cc6fd429a` |
| 156 | `lemma` | [mem_noncenter](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-noncenter.md) | 1171 | `result-track:e329f76cd06ac3ea1ae014eff91e565dc612dbf3c5d530abb4948c3e8c7d2ada` |
| 157 | `def` | [inertia](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inertia.md) | 1183 | `declaration-track:42bb069a655ee8012284d2158b261fdd55405c719aea768f44c9fbc75c4a1e38` |
| 158 | `lemma` | [mem_inertia](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/mem-inertia.md) | 1191 | `result-track:2a49c559ad1a7a05deeb4d8b081c75a3d8ea2df0e7bf972f279f353a915aaaba` |
| 159 | `lemma` | [subgroupOf_inertia](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/subgroupof-inertia.md) | 1195 | `result-track:49b8a38c5496715230ea046aac7a666263876bb4c4fe7a3b1871d8ddbc2d2c26` |
| 160 | `lemma` | [coe_mem_inertia](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/coe-mem-inertia.md) | 1199 | `result-track:f37bcd02893e5267baf1aa8e5062a94aa91c22b68a4e286a19d50ee55582f7b6` |
| 161 | `lemma` | [inertia_mono](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inertia-mono.md) | 1203 | `result-track:dd51a5423b67921117b4fd9841bc1274d400cb9619e0fafdac5046901b64cc26` |
| 162 | `lemma` | [inertia_map_subtype](../../../../GroupTheoryAndGeneralizations/GroupSubgroupBasicNamespacedPublic.lean/declarations/inertia-map-subtype.md) | 1208 | `result-track:6c3e54f83933ba75d0448c9b2ee9f55b921a9918058c81687c703de93e6eede7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=069e4c15bb27e8a3d1f78003077fd16a69fdea03f5162b866ac43ce7823042e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
