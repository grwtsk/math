# Pullbacks Inducing Pullback To Prod

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64fdbcb58c63fc72ed92220e855d28a941b91815`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PullbacksInducingPullbackToProd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](declarations/pullbackfst.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [pullbackFst_apply](declarations/pullbackfst-apply.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [pullbackSnd](declarations/pullbacksnd.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pullbackSnd_apply](declarations/pullbacksnd-apply.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pullbackCone](declarations/pullbackcone.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pullbackIsoProdSubtype](declarations/pullbackisoprodsubtype.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](declarations/pullbackisoprodsubtype-inv-fst.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](declarations/pullbackisoprodsubtype-inv-fst-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](declarations/pullbackisoprodsubtype-inv-snd.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](declarations/pullbackisoprodsubtype-inv-snd-apply.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](declarations/pullbackisoprodsubtype-hom-fst.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](declarations/pullbackisoprodsubtype-hom-snd.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](declarations/pullbackisoprodsubtype-hom-apply.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pullback_topology](declarations/pullback-topology.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [range_pullback_to_prod](declarations/range-pullback-to-prod.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inducing_pullback_to_prod](declarations/inducing-pullback-to-prod.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [embedding_pullback_to_prod](declarations/embedding-pullback-to-prod.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [range_pullback_map](declarations/range-pullback-map.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pullback_fst_range](declarations/pullback-fst-range.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pullback_snd_range](declarations/pullback-snd-range.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pullback_map_embedding_of_embeddings](declarations/pullback-map-embedding-of-embeddings.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pullback_map_openEmbedding_of_open_embeddings](declarations/pullback-map-openembedding-of-open-embeddings.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [snd_embedding_of_left_embedding](declarations/snd-embedding-of-left-embedding.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fst_embedding_of_right_embedding](declarations/fst-embedding-of-right-embedding.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [embedding_of_pullback_embeddings](declarations/embedding-of-pullback-embeddings.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [snd_openEmbedding_of_left_openEmbedding](declarations/snd-openembedding-of-left-openembedding.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fst_openEmbedding_of_right_openEmbedding](declarations/fst-openembedding-of-right-openembedding.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [openEmbedding_of_pullback_open_embeddings](declarations/openembedding-of-pullback-open-embeddings.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fst_iso_of_right_embedding_range_subset](declarations/fst-iso-of-right-embedding-range-subset.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [snd_iso_of_left_embedding_range_subset](declarations/snd-iso-of-left-embedding-range-subset.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pullback_snd_image_fst_preimage](declarations/pullback-snd-image-fst-preimage.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pullback_fst_image_snd_preimage](declarations/pullback-fst-image-snd-preimage.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coinduced_of_isColimit](declarations/coinduced-of-iscolimit.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colimit_topology](declarations/colimit-topology.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colimit_isOpen_iff](declarations/colimit-isopen-iff.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coequalizer_isOpen_iff](declarations/coequalizer-isopen-iff.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adc5c9bb53782e881b20b84716b440081c21c9644fe59e16bfbc1aa5681ad8d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
