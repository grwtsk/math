# Verification target: Maps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d20e0e75335b8d80b4c7a09094162a61ab6aa544",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Maps.lean/index.md) · [Full source](../../../../GeneralTopology/Maps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d20e0e75335b8d80b4c7a09094162a61ab6aa544`.

Source path: `GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NhdsSet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Inducing](../../../../GeneralTopology/Maps.lean/declarations/inducing.md) | 60 | `declaration-track:ee968f98747b8a5f8219c96f568b0fa6dcce059d7d696261b038015737b92a75` |
| 2 | `theorem` | [inducing_induced](../../../../GeneralTopology/Maps.lean/declarations/inducing-induced.md) | 68 | `result-track:9147c92a71475b672e19747fbfaa213d416ac3faa32ab407fcdf17f9f62e1e71` |
| 3 | `theorem` | [inducing_id](../../../../GeneralTopology/Maps.lean/declarations/inducing-id.md) | 71 | `result-track:b895f75563c6823ef76e3a8b0be5db89df83e107de73a374143efc8c6864b48c` |
| 4 | `theorem` | [Inducing.comp](../../../../GeneralTopology/Maps.lean/declarations/inducing-comp.md) | 75 | `result-track:55adf48db30439d4dd88fa5c210733e7a2874d8376edba29c7610eace505b176` |
| 5 | `theorem` | [inducing_of_inducing_compose](../../../../GeneralTopology/Maps.lean/declarations/inducing-of-inducing-compose.md) | 80 | `result-track:86d994f4a449fec48075a944ad7fe79585ad0d10cd4cd99ec16b81e0852e5d3a` |
| 6 | `theorem` | [inducing_iff_nhds](../../../../GeneralTopology/Maps.lean/declarations/inducing-iff-nhds.md) | 88 | `result-track:76f5fc0b340e54df12501b1ffa8c04cc694bca6769f0cd5344b519051aaa557d` |
| 7 | `theorem` | [Inducing.nhds_eq_comap](../../../../GeneralTopology/Maps.lean/declarations/inducing-nhds-eq-comap.md) | 92 | `result-track:565c92f71d32dc4acb0215f380965438a13e24ce5decd23104aab3362ef485ef` |
| 8 | `theorem` | [Inducing.nhdsSet_eq_comap](../../../../GeneralTopology/Maps.lean/declarations/inducing-nhdsset-eq-comap.md) | 96 | `result-track:93fccf2b93a7ebb7a2d21b8a770e07aca4c092b6625c2989c13013a5edacd5ea` |
| 9 | `theorem` | [Inducing.map_nhds_eq](../../../../GeneralTopology/Maps.lean/declarations/inducing-map-nhds-eq.md) | 101 | `result-track:03e0d0dcb9a6475ea39be462647937ee047be076934df9ed7936d3b7df58fe3b` |
| 10 | `theorem` | [Inducing.map_nhds_of_mem](../../../../GeneralTopology/Maps.lean/declarations/inducing-map-nhds-of-mem.md) | 105 | `result-track:091125714e5bfa924e681bf6de3bc8d907c3be55d3188dd6fb382e1caa3b3b35` |
| 11 | `theorem` | [Inducing.mapClusterPt_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-mapclusterpt-iff.md) | 111 | `result-track:f05612e51b6d076b69f4429d47c2e4a18ee79c9b2b00ae25707831878523eadd` |
| 12 | `theorem` | [Inducing.image_mem_nhdsWithin](../../../../GeneralTopology/Maps.lean/declarations/inducing-image-mem-nhdswithin.md) | 116 | `result-track:5bbd33be2cfb9aa6b42aa8fede59039c2be27a3e7b2a3684a8bc6547bd8f4b42` |
| 13 | `theorem` | [Inducing.tendsto_nhds_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-tendsto-nhds-iff.md) | 121 | `result-track:80b9f650e5ca97905d78e70c74f83ac12731ed713fb08a6cc6c1136082135e6b` |
| 14 | `theorem` | [Inducing.continuousAt_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-continuousat-iff.md) | 126 | `result-track:388a036cdc8dcfae5bc984e49d0056c21d5ba43526a366299211c109a74518f7` |
| 15 | `theorem` | [Inducing.continuous_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-continuous-iff.md) | 131 | `result-track:facce95f42017fd014eb9d692fcab56f80b4404d4cce93baf3b2e4f23da09f53` |
| 16 | `theorem` | [Inducing.continuousAt_iff'](../../../../GeneralTopology/Maps.lean/declarations/inducing-continuousat-iff-source-edition-2.md) | 136 | `result-track:7b08067ddf3c3d715b0a487de1f071d7580e79b135722b1870caa3bbde12d121` |
| 17 | `theorem` | [Inducing.continuous](../../../../GeneralTopology/Maps.lean/declarations/inducing-continuous.md) | 141 | `result-track:169f4711e0bda97eaad34b24e78dbfd5675156533b8597ce5742e2b9e1c023f3` |
| 18 | `theorem` | [Inducing.inducing_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-inducing-iff.md) | 145 | `result-track:ab8d06748fc1eead728b104d7ee767cc2aa792bccadf679a4ddce5f2f386a649` |
| 19 | `theorem` | [Inducing.closure_eq_preimage_closure_image](../../../../GeneralTopology/Maps.lean/declarations/inducing-closure-eq-preimage-closure-image.md) | 152 | `result-track:59064b25d2d3853b91ff547da6f2032f677f26d1502140765ef557d95d190712` |
| 20 | `theorem` | [Inducing.isClosed_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-isclosed-iff.md) | 158 | `result-track:dc06755a76792dc7f774bddb4b7e7ef812d61b0c66ab9792fa9828b7630efbc0` |
| 21 | `theorem` | [Inducing.isClosed_iff'](../../../../GeneralTopology/Maps.lean/declarations/inducing-isclosed-iff-source-edition-2.md) | 162 | `result-track:ee7bc52033868a59627727f06bf966343be861aa58c24248951f6b1fc1b7d025` |
| 22 | `theorem` | [Inducing.isClosed_preimage](../../../../GeneralTopology/Maps.lean/declarations/inducing-isclosed-preimage.md) | 166 | `result-track:3de4c71c2d8e2e117556471a893234a3abb3c0eb746f36e1d0eb82dfca6cb048` |
| 23 | `theorem` | [Inducing.isOpen_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-isopen-iff.md) | 171 | `result-track:82ff956b9b850999eb5202ab7581b11fc184233bb75992bb4c8fc58e62540a32` |
| 24 | `theorem` | [Inducing.setOf_isOpen](../../../../GeneralTopology/Maps.lean/declarations/inducing-setof-isopen.md) | 175 | `result-track:5f41a793dcca7a753a751a7ffa079f84dea84ce72609f4ee55f23f95eedc0896` |
| 25 | `theorem` | [Inducing.dense_iff](../../../../GeneralTopology/Maps.lean/declarations/inducing-dense-iff.md) | 179 | `result-track:f02a0b29e96b253d9ee2b6b1af040f38482a87a48ca178b9e1d5ee6820f0e93b` |
| 26 | `structure` | [Embedding](../../../../GeneralTopology/Maps.lean/declarations/embedding.md) | 191 | `declaration-track:fdd9bb9ab53434915aaaa1b7933d35c9bad9cc32a6adffcf47810cf0d8e8e97b` |
| 27 | `theorem` | [Function.Injective.embedding_induced](../../../../GeneralTopology/Maps.lean/declarations/function-injective-embedding-induced.md) | 198 | `result-track:079ac3c49ef3825eb3aac121e718435077098076b37820a6e52b49b33facbbd0` |
| 28 | `theorem` | [Embedding.mk'](../../../../GeneralTopology/Maps.lean/declarations/embedding-mk.md) | 205 | `result-track:ff1d7461d2f24893afcfec9313cd52c35ef3f209a9ce328cd8e6e6b2820dcbb9` |
| 29 | `theorem` | [embedding_id](../../../../GeneralTopology/Maps.lean/declarations/embedding-id.md) | 210 | `result-track:8c8bebc5d3f445957dc885b802c85db506e123773477173c53bce71d7f0fe306` |
| 30 | `theorem` | [Embedding.comp](../../../../GeneralTopology/Maps.lean/declarations/embedding-comp.md) | 214 | `result-track:8d3898ad4607a2942dc2c1fbe1446e5fe519bd042bb452ba0a52bfaa365d133e` |
| 31 | `theorem` | [embedding_of_embedding_compose](../../../../GeneralTopology/Maps.lean/declarations/embedding-of-embedding-compose.md) | 219 | `result-track:e0303785a1e4f858fb4271d4f59837df3e146c5b5b53bb389e310fe954811cef` |
| 32 | `theorem` | [Function.LeftInverse.embedding](../../../../GeneralTopology/Maps.lean/declarations/function-leftinverse-embedding.md) | 225 | `result-track:613ef325d498d44bd732e6c52450082406502a7ba1553476e7b08997c45dcfc9` |
| 33 | `theorem` | [Embedding.map_nhds_eq](../../../../GeneralTopology/Maps.lean/declarations/embedding-map-nhds-eq.md) | 230 | `result-track:a93f8e09dcc97bd38f9bebd7f72c9cea990f1b453db0af66e8a746b5990054ed` |
| 34 | `theorem` | [Embedding.map_nhds_of_mem](../../../../GeneralTopology/Maps.lean/declarations/embedding-map-nhds-of-mem.md) | 235 | `result-track:0b381619c70a0a3912a8e0458eba6444c3d29024276fdb0145b6a92707720868` |
| 35 | `theorem` | [Embedding.tendsto_nhds_iff](../../../../GeneralTopology/Maps.lean/declarations/embedding-tendsto-nhds-iff.md) | 240 | `result-track:7b10c9d3221d4abb327225d63600fc399d783e1fd1c019aad59dd9304ee3ee3f` |
| 36 | `theorem` | [Embedding.continuous_iff](../../../../GeneralTopology/Maps.lean/declarations/embedding-continuous-iff.md) | 245 | `result-track:e4381b08407f1a52ef55b3f8f26273564fae37b792ae30481db39f75db04b36e` |
| 37 | `theorem` | [Embedding.continuous](../../../../GeneralTopology/Maps.lean/declarations/embedding-continuous.md) | 250 | `result-track:868f7a88c9d7a8471631a8660577fcf26b99b1552fb05a0b8901d8fb78905a55` |
| 38 | `theorem` | [Embedding.closure_eq_preimage_closure_image](../../../../GeneralTopology/Maps.lean/declarations/embedding-closure-eq-preimage-closure-image.md) | 254 | `result-track:a00001fa95c2e52389200bc0ef135ce0fbac32050b21397196df41690b150ab3` |
| 39 | `theorem` | [Embedding.discreteTopology](../../../../GeneralTopology/Maps.lean/declarations/embedding-discretetopology.md) | 261 | `result-track:8e85573e3032dd5881adca12aed497a03a64993950804d9ace0d1065e498a4a9` |
| 40 | `def` | [QuotientMap](../../../../GeneralTopology/Maps.lean/declarations/quotientmap.md) | 272 | `declaration-track:c60f10bd3a6f584e661825fcfa969464c23a576653708692fbbc04ee3228b5e4` |
| 41 | `theorem` | [quotientMap_iff](../../../../GeneralTopology/Maps.lean/declarations/quotientmap-iff.md) | 277 | `result-track:599656e931aecfbc2548a7d392acef4c6ebcc47d3c46a00293a90226d15f1de4` |
| 42 | `theorem` | [quotientMap_iff_closed](../../../../GeneralTopology/Maps.lean/declarations/quotientmap-iff-closed.md) | 282 | `result-track:c68e8f6d7152a31aebc2cd58fd23d18b192aacaef72bba348d54b2f96a6cdf41` |
| 43 | `theorem` | [id](../../../../GeneralTopology/Maps.lean/declarations/id-source-edition-3.md) | 293 | `result-track:bdb812202facaeeca23864c047bdbab0e30570bf2b1430fa683903a1339b3b70` |
| 44 | `theorem` | [comp](../../../../GeneralTopology/Maps.lean/declarations/comp-source-edition-3.md) | 297 | `result-track:ecb7302c6abb781a6462a86187c56a3c6655f98c37a73737d17ca4f60ebec37f` |
| 45 | `theorem` | [of_quotientMap_compose](../../../../GeneralTopology/Maps.lean/declarations/of-quotientmap-compose.md) | 301 | `result-track:d4b1ddbbf66a83b9b183c18524e74fd665f6a0616aca54957600b15e75be2690` |
| 46 | `theorem` | [of_inverse](../../../../GeneralTopology/Maps.lean/declarations/of-inverse.md) | 309 | `result-track:8c8f4cead5df6a2bac0e38dc97f206d4579b4e2de0025edc6cc4f0ba0bf8e747` |
| 47 | `theorem` | [continuous_iff](../../../../GeneralTopology/Maps.lean/declarations/continuous-iff.md) | 314 | `result-track:0ed361e9762b2f5e4b50d139b30a9f57f3be06faff0f2d7c99df7285b30c071a` |
| 48 | `theorem` | [continuous](../../../../GeneralTopology/Maps.lean/declarations/continuous.md) | 318 | `result-track:debd4661f44207fe3825032f621dfef2ffea43e4dec1896a94b1ba745d5fc490` |
| 49 | `theorem` | [surjective](../../../../GeneralTopology/Maps.lean/declarations/surjective.md) | 322 | `result-track:cd63b914b37d42c4f9c5af0f63106f7779a11e5b42565bbe1b5b6a2bf329cbd5` |
| 50 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/Maps.lean/declarations/isopen-preimage.md) | 326 | `result-track:da361cc215245fa8b5a4c27389c0e3da358e9941c2e6dc5308de503cf52049f1` |
| 51 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/Maps.lean/declarations/isclosed-preimage.md) | 330 | `result-track:e9eabe414cc49176518f1d24c3393bda946dabaed98104e7f80b1260c6276c45` |
| 52 | `def` | [IsOpenMap](../../../../GeneralTopology/Maps.lean/declarations/isopenmap.md) | 339 | `declaration-track:b30789eca6411281ff6abb416daaaf8c57b80f8493d5b7496175a4b2a59c1073` |
| 53 | `theorem` | [id](../../../../GeneralTopology/Maps.lean/declarations/id-source-edition-2.md) | 347 | `result-track:3c851853d2b5170b520f283317c7f8eceb2f9f102c75928c0e6f3b9025f344a7` |
| 54 | `theorem` | [comp](../../../../GeneralTopology/Maps.lean/declarations/comp-source-edition-2.md) | 350 | `result-track:df7f575fee1ca8e3de231a4b114bd4f91698b2d8e97a1c814b4957627cc575d1` |
| 55 | `theorem` | [isOpen_range](../../../../GeneralTopology/Maps.lean/declarations/isopen-range.md) | 354 | `result-track:7aa2f1baefdbb04bb65e1fc6ee72e632f434ce25de9f12e16bea2b6d2eb30a3a` |
| 56 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/Maps.lean/declarations/image-mem-nhds.md) | 359 | `result-track:07c27e2c3aaa085e6bb900553703d3ec6a7370f6ef0d895b534eea6b1b74cae5` |
| 57 | `theorem` | [range_mem_nhds](../../../../GeneralTopology/Maps.lean/declarations/range-mem-nhds.md) | 364 | `result-track:613ea3548bcf4c19a6b800b9df6e124a68fa60c4ee62eb6a73f45208c4ef709f` |
| 58 | `theorem` | [mapsTo_interior](../../../../GeneralTopology/Maps.lean/declarations/mapsto-interior.md) | 368 | `result-track:1f3057538a9ffd8571da78ee2ed557f5b63b1961e506631c4e5544b18279fa53` |
| 59 | `theorem` | [image_interior_subset](../../../../GeneralTopology/Maps.lean/declarations/image-interior-subset.md) | 374 | `result-track:de5a454236372ff98c32ca9e95c08df1879522b0f40d8740b49ec339a43add69` |
| 60 | `theorem` | [nhds_le](../../../../GeneralTopology/Maps.lean/declarations/nhds-le.md) | 379 | `result-track:b8edde6946f9de1393dc7d4cd952bfefc4aa22b67467a8ff1ebe99aa4d5e503e` |
| 61 | `theorem` | [of_nhds_le](../../../../GeneralTopology/Maps.lean/declarations/of-nhds-le.md) | 383 | `result-track:89d04bb57124921ad9741cc5abb72b6eab14a2c80e7622a111af490a1e2811e2` |
| 62 | `theorem` | [of_sections](../../../../GeneralTopology/Maps.lean/declarations/of-sections.md) | 387 | `result-track:5700e35e0756bbcf76f5beeb16871fca5a83245d086461aa95fb280113fee107` |
| 63 | `theorem` | [of_inverse](../../../../GeneralTopology/Maps.lean/declarations/of-inverse-source-edition-3.md) | 397 | `result-track:e8e85134915327660e8563048cc27fb237f910d48ca21384f2a4b648033c9e6c` |
| 64 | `theorem` | [to_quotientMap](../../../../GeneralTopology/Maps.lean/declarations/to-quotientmap.md) | 403 | `result-track:909b9a10ba0ec99caa6a62f061d56b7aea1f6e37a499cf3443e02e0656f7f004` |
| 65 | `theorem` | [interior_preimage_subset_preimage_interior](../../../../GeneralTopology/Maps.lean/declarations/interior-preimage-subset-preimage-interior.md) | 409 | `result-track:e4ee9574f32b1e5dc521f1f7f0cdf60179cc4ba6a8359fe3234534ead4a6a265` |
| 66 | `theorem` | [preimage_interior_eq_interior_preimage](../../../../GeneralTopology/Maps.lean/declarations/preimage-interior-eq-interior-preimage.md) | 414 | `result-track:2b37d54005ab776fa95168a0968d50c230a8743b4c93f8a90f26370e767fbb1f` |
| 67 | `theorem` | [preimage_closure_subset_closure_preimage](../../../../GeneralTopology/Maps.lean/declarations/preimage-closure-subset-closure-preimage.md) | 420 | `result-track:67be72b7f2d99152cefac9c210e01ef8407433dd2ee860e61831beac077fa76c` |
| 68 | `theorem` | [preimage_closure_eq_closure_preimage](../../../../GeneralTopology/Maps.lean/declarations/preimage-closure-eq-closure-preimage.md) | 426 | `result-track:66095e9fe5d1ddf84d2714eb767e6282c3436185c4a3e8f985f54197b4454d1e` |
| 69 | `theorem` | [preimage_frontier_subset_frontier_preimage](../../../../GeneralTopology/Maps.lean/declarations/preimage-frontier-subset-frontier-preimage.md) | 431 | `result-track:b2a2643f62a02dcb3d1218b7c27531f6e73aeecf050951b5bc06fdb5dd16aa94` |
| 70 | `theorem` | [preimage_frontier_eq_frontier_preimage](../../../../GeneralTopology/Maps.lean/declarations/preimage-frontier-eq-frontier-preimage.md) | 438 | `result-track:c1820d7e5de92ae7ed5698749f15fc0c418397eb6592f32adcef0997d79bdf8d` |
| 71 | `theorem` | [isOpenMap_iff_nhds_le](../../../../GeneralTopology/Maps.lean/declarations/isopenmap-iff-nhds-le.md) | 446 | `result-track:37f0cf0e5836795fd73d38a86435258f4cc2216326dc667518bebfb7466082be` |
| 72 | `theorem` | [isOpenMap_iff_interior](../../../../GeneralTopology/Maps.lean/declarations/isopenmap-iff-interior.md) | 451 | `result-track:cd90e8665b37ac0134e7933947e34aab1a2ad2adcfaac66cd2bcb6593a2d1a8a` |
| 73 | `theorem` | [Inducing.isOpenMap](../../../../GeneralTopology/Maps.lean/declarations/inducing-isopenmap.md) | 461 | `result-track:521737762ae37da03b079d88105d881df549e1ccb21307080e83495f74f3f8bf` |
| 74 | `def` | [IsClosedMap](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap.md) | 472 | `declaration-track:159e41a67c738a7324d90b5fd49b55f2c61d2f69e4fae6a6c42cbac62c821ae2` |
| 75 | `theorem` | [id](../../../../GeneralTopology/Maps.lean/declarations/id.md) | 484 | `result-track:3be8cae9735dcb174bbc4fefe34fb1bb8f25080e52e02ce48664ef288413a45d` |
| 76 | `theorem` | [comp](../../../../GeneralTopology/Maps.lean/declarations/comp.md) | 487 | `result-track:88a57c26e1a260906ce82bfdea452f7de424f5c82a75e8f6ad839f7dfad8976c` |
| 77 | `theorem` | [closure_image_subset](../../../../GeneralTopology/Maps.lean/declarations/closure-image-subset.md) | 494 | `result-track:deffb4d746414d5ad77841e328f940b38fece700bec4545ac8bb41a2225ac3d6` |
| 78 | `theorem` | [of_inverse](../../../../GeneralTopology/Maps.lean/declarations/of-inverse-source-edition-2.md) | 499 | `result-track:8f93c4461e0bd8810524bda1eeb42744ff11e1c360cc2ed0e6381f94408feb90` |
| 79 | `theorem` | [of_nonempty](../../../../GeneralTopology/Maps.lean/declarations/of-nonempty.md) | 505 | `result-track:142145be9f8127548460ef20c732450108922c9eacefed3996074cffb7fd5bae` |
| 80 | `theorem` | [closed_range](../../../../GeneralTopology/Maps.lean/declarations/closed-range.md) | 512 | `result-track:18e731502b5aee82b6aa1071f999a1a37d0b0ba65a07953c0871e43b91b4f2ce` |
| 81 | `theorem` | [to_quotientMap](../../../../GeneralTopology/Maps.lean/declarations/to-quotientmap-source-edition-2.md) | 516 | `result-track:cc783686b706c1d6e2c676d42fc84e9514d860ff60d7ad86f0ea98db291e544b` |
| 82 | `theorem` | [Inducing.isClosedMap](../../../../GeneralTopology/Maps.lean/declarations/inducing-isclosedmap.md) | 524 | `result-track:ddf7aed4cb6d7a9e85451ea5aecac1166352386056a638211dd545a3ce3b26c5` |
| 83 | `theorem` | [isClosedMap_iff_closure_image](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap-iff-closure-image.md) | 532 | `result-track:75a0e0bd8578c32b9603b7c4b498f6e0ffda1bd5518bb7a3041b3b6f13960e8b` |
| 84 | `theorem` | [isClosedMap_iff_clusterPt](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap-iff-clusterpt.md) | 545 | `result-track:ed8d05fec2e025316fb7a3570ca05a7efe01ea3c2e3beddfdcf08c352ce54163` |
| 85 | `theorem` | [IsClosedMap.closure_image_eq_of_continuous](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap-closure-image-eq-of-continuous.md) | 550 | `result-track:3062051122639fcfcd56b4b4a3aa8e0eaa75ef6d895e5fb68697123c256630b1` |
| 86 | `theorem` | [IsClosedMap.lift'_closure_map_eq](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap-lift-closure-map-eq.md) | 555 | `result-track:43adceeb9b46032404ca335637a498c0827f6f598aaf07d782967e89dcec0391` |
| 87 | `theorem` | [IsClosedMap.mapClusterPt_iff_lift'_closure](../../../../GeneralTopology/Maps.lean/declarations/isclosedmap-mapclusterpt-iff-lift-closure.md) | 563 | `result-track:e0fd568f2ebb06b610c8bbdf03317fa03c68dba6f373dfb6416dea04cf557da2` |
| 88 | `structure` | [OpenEmbedding](../../../../GeneralTopology/Maps.lean/declarations/openembedding.md) | 575 | `declaration-track:c2937c55656821c721f5c3c00c4a75381bfe627994d29e4e0b06fd454310a816` |
| 89 | `theorem` | [OpenEmbedding.isOpenMap](../../../../GeneralTopology/Maps.lean/declarations/openembedding-isopenmap.md) | 581 | `result-track:bc72b8d698147d16033459345af103f28d79e7f944d20b1102179bd1f8ef8ba1` |
| 90 | `theorem` | [OpenEmbedding.map_nhds_eq](../../../../GeneralTopology/Maps.lean/declarations/openembedding-map-nhds-eq.md) | 585 | `result-track:cedd16e623b1ff71adbb2a085da8d564f25eb32740a8387b21fe680d490b0762` |
| 91 | `theorem` | [OpenEmbedding.open_iff_image_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-open-iff-image-open.md) | 590 | `result-track:308857991b7e5605b3bf6a4ecb49e446dbc231febfdd4efed134ddfeab0ac759` |
| 92 | `theorem` | [OpenEmbedding.tendsto_nhds_iff](../../../../GeneralTopology/Maps.lean/declarations/openembedding-tendsto-nhds-iff-source-edition-2.md) | 597 | `result-track:b25bb8016f7aff1b40e86f4960a2f8eb58c28a2035d2ce26cb55a8044c04473b` |
| 93 | `theorem` | [OpenEmbedding.tendsto_nhds_iff'](../../../../GeneralTopology/Maps.lean/declarations/openembedding-tendsto-nhds-iff.md) | 602 | `result-track:2b9a82ef2247dcdaeaf37f60c6fc5fe02b5473db71dea8c9130de0befdc6542c` |
| 94 | `theorem` | [OpenEmbedding.continuous](../../../../GeneralTopology/Maps.lean/declarations/openembedding-continuous.md) | 606 | `result-track:538c423817796979b11216b2630d2fa94ff74d5a5bf8e044c1c4972a43da8169` |
| 95 | `theorem` | [OpenEmbedding.open_iff_preimage_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-open-iff-preimage-open.md) | 610 | `result-track:c99aa3dbbc1acd1aee5e95524d69246891f63b9e0e30f9d249ba603975e491ac` |
| 96 | `theorem` | [openEmbedding_of_embedding_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-of-embedding-open.md) | 615 | `result-track:84089926533b48c14a23bf393a38978ca1164fdcaea940b72d7559453152c8b1` |
| 97 | `theorem` | [openEmbedding_iff_embedding_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-iff-embedding-open.md) | 620 | `result-track:45624ba8e2e25bb695d92c02ad2a5c72eb2273b64d4357063d1ee88a25f10d78` |
| 98 | `theorem` | [openEmbedding_of_continuous_injective_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-of-continuous-injective-open.md) | 625 | `result-track:58f3e841da0b7300455ed438f467472c0af3a867ec603304912511db8ebf30de` |
| 99 | `theorem` | [openEmbedding_iff_continuous_injective_open](../../../../GeneralTopology/Maps.lean/declarations/openembedding-iff-continuous-injective-open.md) | 632 | `result-track:165a252005ca9232a16a408bcac7485a44ec2d4484c6968bfbb600e562e43757` |
| 100 | `theorem` | [openEmbedding_id](../../../../GeneralTopology/Maps.lean/declarations/openembedding-id.md) | 638 | `result-track:d448e8adfa1a94513e25b1514e293bd6a164ecaae6d0464e79a6155a317f2570` |
| 101 | `theorem` | [OpenEmbedding.comp](../../../../GeneralTopology/Maps.lean/declarations/openembedding-comp.md) | 642 | `result-track:8efbbe38a0f3349a8fe58d7a5e2d15110324d8341d45d983aee888adada4043c` |
| 102 | `theorem` | [OpenEmbedding.isOpenMap_iff](../../../../GeneralTopology/Maps.lean/declarations/openembedding-isopenmap-iff.md) | 647 | `result-track:79888d52adad876f347199e347bd654804a77e12aafa05fbe7ec7f28f7997c6b` |
| 103 | `theorem` | [OpenEmbedding.of_comp_iff](../../../../GeneralTopology/Maps.lean/declarations/openembedding-of-comp-iff.md) | 652 | `result-track:058385ff3026388c08a81e4634829dda879d4bc1af119d8173fafa2a87a12417` |
| 104 | `theorem` | [OpenEmbedding.of_comp](../../../../GeneralTopology/Maps.lean/declarations/openembedding-of-comp.md) | 658 | `result-track:4aba03efd142521123675b5314749bea73a4050eeeccf50a1b7b235ae1f4359d` |
| 105 | `structure` | [ClosedEmbedding](../../../../GeneralTopology/Maps.lean/declarations/closedembedding.md) | 671 | `declaration-track:3c4f7306796dfca74fbd36974876b55a12e0ef50f31af6f5a5cea45f7b0715c3` |
| 106 | `theorem` | [ClosedEmbedding.tendsto_nhds_iff](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-tendsto-nhds-iff.md) | 679 | `result-track:d59fd5787f168f15548321aa2980d99a9896887f93705bde62421584cb8dfb42` |
| 107 | `theorem` | [ClosedEmbedding.continuous](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-continuous.md) | 684 | `result-track:308024d07d983d70c9fc4bec34348114f81de0b6a3ee53e5d1e78c85ceefe3e9` |
| 108 | `theorem` | [ClosedEmbedding.isClosedMap](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-isclosedmap.md) | 688 | `result-track:50aa2626250b7084e6dd51c226e40e2d0231d032961a0c77f154fa1f3da78ae3` |
| 109 | `theorem` | [ClosedEmbedding.closed_iff_image_closed](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-closed-iff-image-closed.md) | 692 | `result-track:43a2aab2871d0e22f53a32671c57d86c80a41930fd371b72425aca6f4f093577` |
| 110 | `theorem` | [ClosedEmbedding.closed_iff_preimage_closed](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-closed-iff-preimage-closed.md) | 699 | `result-track:bac851f77a007cf3969bb0cf8f629d47c7f3f24dc47b58ff7d089f8aa07e1559` |
| 111 | `theorem` | [closedEmbedding_of_embedding_closed](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-of-embedding-closed.md) | 704 | `result-track:455a1c44e2252b1a3805d073665ad0cf64cfa1c23eb85b104fd743927015434d` |
| 112 | `theorem` | [closedEmbedding_of_continuous_injective_closed](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-of-continuous-injective-closed.md) | 709 | `result-track:bd53f36607439fd0724aa7780b9a40c7ddd2e443db6ea5f5433f57ea6fbd22a4` |
| 113 | `theorem` | [closedEmbedding_id](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-id.md) | 717 | `result-track:975d8757de29dba9082377b4c8110d1ea2bd6b78c680fb2da8a10aef24bff407` |
| 114 | `theorem` | [ClosedEmbedding.comp](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-comp.md) | 721 | `result-track:10f0d6cc2ba0fc2953f59e65a4e95693336f67821c114eed99361ce0e7650c9a` |
| 115 | `theorem` | [ClosedEmbedding.closure_image_eq](../../../../GeneralTopology/Maps.lean/declarations/closedembedding-closure-image-eq.md) | 726 | `result-track:a78e624f068f4771106158ff1aaeb479697e3906809bb4526fe9595c3d008ba8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0b39e0481bf04fa31432e9e9ab54d6a9dbe4288aabdeee7dba9fcf9c475b4d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Maps/Variant32d941e047fd0dbcc7179b2a5647eb5919b6aa969dd8a650d79d49d6e880d3f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
