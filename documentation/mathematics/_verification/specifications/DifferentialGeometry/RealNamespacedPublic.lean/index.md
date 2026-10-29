# Verification target: Real Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1cbc4bdec1802b29569caadcc83ed5a12784391",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/RealNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/RealNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1cbc4bdec1802b29569caadcc83ed5a12784391`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean.json)

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
| 1 | `def` | [EuclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanhalfspace.md) | 68 | `declaration-track:ef6c5f3d81e3ff298eadb22130728a59d3917b02e28ce047f16fa02ec1b969fa` |
| 2 | `def` | [EuclideanQuadrant](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanquadrant.md) | 77 | `declaration-track:1bcd279ca3e211c2dc1e0289271e9769fa0c1bf6d2403ddd025b50f246be23f4` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 88 | `declaration-track:a527ed500ec17a9c48d50577f7ac11a6ff281d5674daf77322832ab58b8113aa` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 90 | `declaration-track:9cb082ce5e1da9990919fae4526a5479c8e7ef5afbce5c9fa2a11913c9a60c84` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:7b031300687c834d366429808655e8415bd1e2168616a77fdfdf28de428a94d2` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 95 | `declaration-track:c94c70850e57f203deb054e2f5da75c9c21719ce00f5040ef08181810c4b737d` |
| 7 | `theorem` | [EuclideanQuadrant.ext](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanquadrant-ext.md) | 99 | `result-track:3d011619ceef8ef6917fafdecb684d1cecb7d6c39db4f529fd4255dca51aa9b4` |
| 8 | `theorem` | [EuclideanHalfSpace.ext](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanhalfspace-ext.md) | 103 | `result-track:61abeeb41c83a74969d06a45c3bb58a8d06f35e4d671b4f4094650bd7f60ae92` |
| 9 | `theorem` | [EuclideanHalfSpace.convex](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanhalfspace-convex.md) | 107 | `result-track:6c4f9ad838ce3bb31d5e1ee7d62ef0849d1f888344ab2d8ed2c302f5aed5aa8d` |
| 10 | `theorem` | [EuclideanQuadrant.convex](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanquadrant-convex.md) | 111 | `result-track:443b2dce1cad3f7aad6fb5f83caef0236c891bc46255e1d04d0bb19eac6404fa` |
| 11 | `instance` | [EuclideanHalfSpace.pathConnectedSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanhalfspace-pathconnectedspace.md) | 115 | `declaration-track:f647329c587e5ff09887427a7530133a68e1666bf503fa41adb88287c5ffb543` |
| 12 | `instance` | [EuclideanQuadrant.pathConnectedSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/euclideanquadrant-pathconnectedspace.md) | 119 | `declaration-track:b990528171c28205ee052d047c395226e4148b1d8bbf5bc64f9d3bb2344fcdae` |
| 13 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 122 | `declaration-track:b8ce65ac632e48079480baf17e5f7354817f46d3f72c30434f7273e683d889da` |
| 14 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 125 | `declaration-track:5a0f88bb3ec1d7b26901708955b84cee5052053115246bf3b8734dc80c748395` |
| 15 | `theorem` | [range_euclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/range-euclideanhalfspace.md) | 128 | `result-track:744cc57e3aa734881cba63aa65092347fe75d966c06b3c8b65061e0afbeb0c7f` |
| 16 | `theorem` | [interior_halfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/interior-halfspace.md) | 133 | `result-track:1b8997ac764dca250f2c1dcfb6d3a65df014f510095fc3ebe7edfdd33625be72` |
| 17 | `theorem` | [closure_halfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/closure-halfspace.md) | 141 | `result-track:1b9291278d877b3dd79d3313c3565e6ed09d8194098428e38a2a30af798f7e4b` |
| 18 | `theorem` | [closure_open_halfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/closure-open-halfspace.md) | 149 | `result-track:8ec3fbc678f2a60bfd711606a8f501a4f15fd96724821593cd47c196617f3ce0` |
| 19 | `theorem` | [frontier_halfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/frontier-halfspace.md) | 157 | `result-track:bd2bf92f22d64fdd019984c0c2b5935f7c5d62a8d561318432e3ea84a4092004` |
| 20 | `theorem` | [range_euclideanQuadrant](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/range-euclideanquadrant.md) | 162 | `result-track:329448a6e99d78a9169ce7a9a18d0af080c574cf1780f4cc6dc1cbdc756a6250` |
| 21 | `theorem` | [interior_euclideanQuadrant](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/interior-euclideanquadrant.md) | 166 | `result-track:356764a5f3dad8db46b86547d64349fe352b795f5d2187bee56b1f8947ae6940` |
| 22 | `def` | [modelWithCornersEuclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace.md) | 185 | `declaration-track:76847d347b190cf33b1fd558ca5e9c3b467aed24a08cf6a5ef98c1915e1a99e7` |
| 23 | `def` | [modelWithCornersEuclideanQuadrant](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanquadrant.md) | 216 | `declaration-track:8e20dab3da525fce78bc5042fdb5b173919d1c087fe3b340a4e1252f38e9e002` |
| 24 | `lemma` | [modelWithCornersEuclideanHalfSpace_toFun](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace-tofun.md) | 252 | `result-track:7f7efb63af4fc127e59bba4c2b1cd7c19785b69e69d8cf6288d40e958d09f88f` |
| 25 | `lemma` | [modelWithCornersEuclideanHalfSpace_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace-apply.md) | 256 | `result-track:354715f0cbc75f59a2a7744ce8cb9533053fa31ce4aea8a465cacbf163321904` |
| 26 | `lemma` | [modelWithCornersEuclideanHalfSpace_symm_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace-symm-apply.md) | 259 | `result-track:281a7704d63dfc7359b64e1d8818aafab2a13337bdb779696e45cc67367556a7` |
| 27 | `lemma` | [modelWithCornersEuclideanHalfSpace_symm_apply_of_le](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace-symm-apply-of-le.md) | 263 | `result-track:ac59ea40741b7507e263aa6a14041a986643f326446877ddb949186187b8cef4` |
| 28 | `lemma` | [modelWithCornersEuclideanHalfSpace_zero](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanhalfspace-zero.md) | 268 | `result-track:6f7809f84a48bb1d4fe90311890c82fb7af3248d3d0ba56c999e04238c3ab634` |
| 29 | `lemma` | [range_modelWithCornersEuclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/range-modelwithcornerseuclideanhalfspace.md) | 270 | `result-track:366178d2fedea7d9b2847adc670ff9beb2704ad023789290100a7ac9a3aa9baf` |
| 30 | `lemma` | [interior_range_modelWithCornersEuclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/interior-range-modelwithcornerseuclideanhalfspace.md) | 273 | `result-track:23fd6bbc58a72a43634fcbd5f2c46b7632d48c66442767370df5d6bbbc861374` |
| 31 | `lemma` | [frontier_range_modelWithCornersEuclideanHalfSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/frontier-range-modelwithcornerseuclideanhalfspace.md) | 281 | `result-track:1c390fd9d0e54cc28add7c5e074f6690d9454a21536398594e8390ed2b92b733` |
| 32 | `lemma` | [modelWithCornersEuclideanQuadrant_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanquadrant-apply.md) | 290 | `result-track:a8a10be40de474456444b9542df9266a81da9ec370a54f15dd167ca4e6b89d69` |
| 33 | `lemma` | [modelWithCornersEuclideanQuadrant_symm_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanquadrant-symm-apply.md) | 293 | `result-track:1c244da720819701cdd565c82aaa6a03f9d9990e30ef3ef97b0c64e38b13bc63` |
| 34 | `lemma` | [modelWithCornersEuclideanQuadrant_symm_apply_of_le](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/modelwithcornerseuclideanquadrant-symm-apply-of-le.md) | 297 | `result-track:e3d23386dd9be917f737e30727897b3a72177d02d9d96a345642311962d96c2f` |
| 35 | `def` | [IccLeftChart](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart.md) | 305 | `declaration-track:c6bb7d2b40791b3e393986cf33f1d72a6dc5c4b44f204415d191eb0aa6bfe331` |
| 36 | `lemma` | [IccLeftChart_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-apply.md) | 340 | `result-track:fb76ff028878f5f6b27fcd3f72856a5e45058f3d8797e3d452b643790700a2ec` |
| 37 | `lemma` | [IccLeftChart_symm_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-symm-apply.md) | 344 | `result-track:8eef5702dfa492281928dd0ead811eb68313a661378ad73e39ca6584c865ef12` |
| 38 | `lemma` | [IccLeftChart_symm_apply_of_le](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-symm-apply-of-le.md) | 348 | `result-track:e52be5d3e13bee8a2a854d209b5303d844572567141ce9674963c2d5b0be6be7` |
| 39 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 357 | `declaration-track:130e6c5a5fe2e6f70edafca39c342b735b1a0311d41f7235d53ad673a1cefade` |
| 40 | `lemma` | [IccLeftChart_extend_bot](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-extend-bot.md) | 363 | `result-track:c8871f29c21358d14abf4b10c7e80d57dabac609161b38696582476499fbfa2b` |
| 41 | `lemma` | [iccLeftChart_extend_zero](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-extend-zero.md) | 367 | `result-track:9ccaca78043d67381cef3861523e72cd5fb021798d8e0d8d9e8fef2cfa16c739` |
| 42 | `lemma` | [IccLeftChart_extend_interior_pos](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-extend-interior-pos.md) | 370 | `result-track:f85da01e44efb888e81b230890115b7d835debe98769fc2e01c40640a200f536` |
| 43 | `lemma` | [IccLeftChart_extend_bot_mem_frontier](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccleftchart-extend-bot-mem-frontier.md) | 375 | `result-track:aeb0c7f3da54be8987ca667b9147bcd035596482aba07a1cf9575ed9934e72a5` |
| 44 | `def` | [IccRightChart](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart.md) | 383 | `declaration-track:f74a3eee8b35d9a57169b4e17a5d680026e464cfcd7cdd0464dd671f35bb0cf5` |
| 45 | `lemma` | [IccRightChart_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart-apply.md) | 418 | `result-track:5550a1bc48b976cb7aed9919fd4137fc4b2600f654351366885aa444a449ded8` |
| 46 | `lemma` | [IccRightChart_symm_apply](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart-symm-apply.md) | 422 | `result-track:d92ca0b83e0e3bd8ddb5ab254f911c54ad59bd63e9803082a1dd86a06ad2902c` |
| 47 | `lemma` | [IccRightChart_symm_apply_of_le](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart-symm-apply-of-le.md) | 427 | `result-track:79c7f7f67cbc3213b1957af79f06db613ae9f7dbc115ac89abfdafab73f00fb4` |
| 48 | `lemma` | [IccRightChart_extend_top](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart-extend-top.md) | 434 | `result-track:7812e6971458c59a6da828b52fe2e842f522f1f14f2005c4473cc7a4163db6b9` |
| 49 | `lemma` | [IccRightChart_extend_top_mem_frontier](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/iccrightchart-extend-top-mem-frontier.md) | 439 | `result-track:e3d181cc0edadf98ca4619f799833fec1f785ed07df4ac429eebab434966d5bc` |
| 50 | `instance` | [instIccChartedSpace](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/insticcchartedspace.md) | 447 | `declaration-track:21b9697a0e4b0186800951baa0406e4a0af408eabeb771616071d528cb8d3449` |
| 51 | `lemma` | [Icc_chartedSpaceChartAt](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-chartedspacechartat.md) | 461 | `result-track:65c49475ec4adebb05c598c5ac475092765610c61882eeb12d809b65ef15c096` |
| 52 | `lemma` | [Icc_chartedSpaceChartAt_of_le_top](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-chartedspacechartat-of-le-top.md) | 464 | `result-track:d3bcfe185efc272f3b13dcd1acc7c934df2b058790fb42cf1e671797fa5a6cd2` |
| 53 | `lemma` | [Icc_chartedSpaceChartAt_of_top_le](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-chartedspacechartat-of-top-le.md) | 468 | `result-track:251b06f598faa41b1c73e4ba5cdc086577818c7d8dee68949325426cabd18024` |
| 54 | `lemma` | [Icc_isBoundaryPoint_bot](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-isboundarypoint-bot.md) | 472 | `result-track:c0a51d6ad933f3164d936ad52e6d08405d83b42859eb80c923b40a04c1d22680` |
| 55 | `lemma` | [Icc_isBoundaryPoint_top](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-isboundarypoint-top.md) | 477 | `result-track:dc231facc2734abf747137e1ce00f4aeb6da120bbcbf497189111f036c1d3a1c` |
| 56 | `lemma` | [Icc_isInteriorPoint_interior](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/icc-isinteriorpoint-interior.md) | 482 | `result-track:96383724e6a0633f049ce02106b6380401fd484a830d81100fa3225c59df6961` |
| 57 | `lemma` | [boundary_Icc](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/boundary-icc.md) | 488 | `result-track:6389374e58cfd2bf5332b42d1678dcb846fb4c88923fc20cae1948ef4c1fc01e` |
| 58 | `lemma` | [boundary_product](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/boundary-product.md) | 507 | `result-track:852cef382db857affd7778cf96f7be847187fa0d20907ad1ba700ed8e6044e88` |
| 59 | `instance` | [instIsManifoldIcc](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instismanifoldicc.md) | 512 | `declaration-track:ed3a9666de20d1e70697f751f2ad657ab77c9f92dbbdd1eec06a00f27beca29b` |
| 60 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance.md) | 555 | `declaration-track:0738ebcf775cffbe7dc1324636631cc73bdfa7877a9a25fb5c23e08e3578982f` |
| 61 | `instance` | [(anonymous)](../../../../DifferentialGeometry/RealNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 557 | `declaration-track:e47adf180d6943620116e81cbad7a52b12cf5427d6760bdc3b5a7595640aadd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d146d4c6c9f420016d02d80667fc46d52b9080bf664129877b92bb1ba965f636 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Real/Variant3c7c306bbc5979ccd9e027d9fff85b91c601ca8e579c7edcf1c3719bb6f46ddf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
