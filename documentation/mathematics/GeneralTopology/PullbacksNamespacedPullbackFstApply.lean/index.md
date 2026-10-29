# Pullbacks Namespaced Pullback Fst Apply

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PullbacksNamespacedPullbackFstApply.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [pullbackFst](declarations/pullbackfst.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [pullbackFst_apply](declarations/pullbackfst-apply.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [pullbackSnd](declarations/pullbacksnd.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pullbackSnd_apply](declarations/pullbacksnd-apply.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pullbackCone](declarations/pullbackcone.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pullbackIsoProdSubtype](declarations/pullbackisoprodsubtype.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pullbackIsoProdSubtype_inv_fst](declarations/pullbackisoprodsubtype-inv-fst.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pullbackIsoProdSubtype_inv_fst_apply](declarations/pullbackisoprodsubtype-inv-fst-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pullbackIsoProdSubtype_inv_snd](declarations/pullbackisoprodsubtype-inv-snd.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pullbackIsoProdSubtype_inv_snd_apply](declarations/pullbackisoprodsubtype-inv-snd-apply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullbackIsoProdSubtype_hom_fst](declarations/pullbackisoprodsubtype-hom-fst.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullbackIsoProdSubtype_hom_snd](declarations/pullbackisoprodsubtype-hom-snd.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pullbackIsoProdSubtype_hom_apply](declarations/pullbackisoprodsubtype-hom-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pullback_topology](declarations/pullback-topology.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [range_pullback_to_prod](declarations/range-pullback-to-prod.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pullbackHomeoPreimage](declarations/pullbackhomeopreimage.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isInducing_pullback_to_prod](declarations/isinducing-pullback-to-prod.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isEmbedding_pullback_to_prod](declarations/isembedding-pullback-to-prod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [range_pullback_map](declarations/range-pullback-map.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pullback_fst_range](declarations/pullback-fst-range.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pullback_snd_range](declarations/pullback-snd-range.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pullback_map_isEmbedding](declarations/pullback-map-isembedding.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pullback_map_isOpenEmbedding](declarations/pullback-map-isopenembedding.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [snd_isEmbedding_of_left](declarations/snd-isembedding-of-left.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fst_isEmbedding_of_right](declarations/fst-isembedding-of-right.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isEmbedding_of_pullback](declarations/isembedding-of-pullback.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [snd_isOpenEmbedding_of_left](declarations/snd-isopenembedding-of-left.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fst_isOpenEmbedding_of_right](declarations/fst-isopenembedding-of-right.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpenEmbedding_of_pullback](declarations/isopenembedding-of-pullback.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fst_iso_of_right_embedding_range_subset](declarations/fst-iso-of-right-embedding-range-subset.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [snd_iso_of_left_embedding_range_subset](declarations/snd-iso-of-left-embedding-range-subset.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pullback_snd_image_fst_preimage](declarations/pullback-snd-image-fst-preimage.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pullback_fst_image_snd_preimage](declarations/pullback-fst-image-snd-preimage.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isOpen_iff_of_isColimit_cofork](declarations/isopen-iff-of-iscolimit-cofork.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isQuotientMap_of_isColimit_cofork](declarations/isquotientmap-of-iscolimit-cofork.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coequalizer_isOpen_iff](declarations/coequalizer-isopen-iff.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9a46e372acab216e1f8bc1b5f848a26bac3928d4116fab479414419e1ce48b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
