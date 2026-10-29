# Pullbacks Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `367d7864bfcf0f8c68f9edfb33aa7e2066c11321`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PullbacksPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](declarations/pullbackfst.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [pullbackFst_apply](declarations/pullbackfst-apply.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [pullbackSnd](declarations/pullbacksnd.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pullbackSnd_apply](declarations/pullbacksnd-apply.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pullbackCone](declarations/pullbackcone.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pullbackIsoProdSubtype](declarations/pullbackisoprodsubtype.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](declarations/pullbackisoprodsubtype-inv-fst.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](declarations/pullbackisoprodsubtype-inv-fst-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](declarations/pullbackisoprodsubtype-inv-snd.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](declarations/pullbackisoprodsubtype-inv-snd-apply.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](declarations/pullbackisoprodsubtype-hom-fst.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](declarations/pullbackisoprodsubtype-hom-snd.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](declarations/pullbackisoprodsubtype-hom-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pullback_topology](declarations/pullback-topology.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [range_pullback_to_prod](declarations/range-pullback-to-prod.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pullbackHomeoPreimage](declarations/pullbackhomeopreimage.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isInducing_pullback_to_prod](declarations/isinducing-pullback-to-prod.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](declarations/isembedding-pullback-to-prod.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [range_pullback_map](declarations/range-pullback-map.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pullback_fst_range](declarations/pullback-fst-range.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pullback_snd_range](declarations/pullback-snd-range.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pullback_map_isEmbedding](declarations/pullback-map-isembedding.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](declarations/pullback-map-isopenembedding.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [snd_isEmbedding_of_left](declarations/snd-isembedding-of-left.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fst_isEmbedding_of_right](declarations/fst-isembedding-of-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isEmbedding_of_pullback](declarations/isembedding-of-pullback.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](declarations/snd-isopenembedding-of-left.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](declarations/fst-isopenembedding-of-right.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](declarations/isopenembedding-of-pullback.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](declarations/fst-iso-of-right-embedding-range-subset.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](declarations/snd-iso-of-left-embedding-range-subset.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](declarations/pullback-snd-image-fst-preimage.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](declarations/pullback-fst-image-snd-preimage.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](declarations/isopen-iff-of-iscolimit-cofork.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](declarations/isquotientmap-of-iscolimit-cofork.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coequalizer_isOpen_iff](declarations/coequalizer-isopen-iff.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa6ff6ae9833b68fb16207c4ebbb48b16f0b91ccb693a0f0324e9befd3f9d2be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
