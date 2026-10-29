# Bounded Variation Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c218867d84e1e39755a96ccd6d0642c52bc5181`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BoundedVariationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [stieltjesFunctionRightLim](declarations/stieltjesfunctionrightlim.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [measureAux](declarations/measureaux.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [exists_vectorMeasure_le_measureAux](declarations/exists-vectormeasure-le-measureaux.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vectorMeasure](declarations/vectormeasure.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [vectorMeasure_Ioc](declarations/vectormeasure-ioc.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [vectorMeasure_singleton](declarations/vectormeasure-singleton.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [vectorMeasure_Icc](declarations/vectormeasure-icc.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [vectorMeasure_Ioo](declarations/vectormeasure-ioo.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [vectorMeasure_Ico](declarations/vectormeasure-ico.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vectorMeasure_Ici](declarations/vectormeasure-ici.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [vectorMeasure_Ioi](declarations/vectormeasure-ioi.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vectorMeasure_Iic](declarations/vectormeasure-iic.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [vectorMeasure_Iio](declarations/vectormeasure-iio.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [vectorMeasure_univ](declarations/vectormeasure-univ.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [variationAux](declarations/variationaux.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [variation_vectorMeasure_le_variationAux](declarations/variation-vectormeasure-le-variationaux.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [variationAux_Ioc_le](declarations/variationaux-ioc-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [eVariationOn_Ioc_le_variation](declarations/evariationon-ioc-le-variation.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [variationAux_Ioc](declarations/variationaux-ioc.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [variation_vectorMeasure_Ioc](declarations/variation-vectormeasure-ioc.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [variation_vectorMeasure_singleton](declarations/variation-vectormeasure-singleton.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [variationAux_singleton](declarations/variationaux-singleton.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [variationAux_eq_variation_vectorMeasure](declarations/variationaux-eq-variation-vectormeasure.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [variation_vectorMeasure_Ioo_right](declarations/variation-vectormeasure-ioo-right.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [variation_vectorMeasure_Ioo_left](declarations/variation-vectormeasure-ioo-left.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [variation_vectorMeasure_Ico](declarations/variation-vectormeasure-ico.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [variation_vectorMeasure_Ioi](declarations/variation-vectormeasure-ioi.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [variation_vectorMeasure_Iio](declarations/variation-vectormeasure-iio.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [variation_vectorMeasure_Ioo_le](declarations/variation-vectormeasure-ioo-le.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [variation_vectorMeasure_Ioc_le](declarations/variation-vectormeasure-ioc-le.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [variation_vectorMeasure_Ico_le](declarations/variation-vectormeasure-ico-le.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [variation_vectorMeasure_Icc_le](declarations/variation-vectormeasure-icc-le.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [variation_vectorMeasure_Ioi_le](declarations/variation-vectormeasure-ioi-le.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [variation_vectorMeasure_Ici_le](declarations/variation-vectormeasure-ici-le.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [variation_vectorMeasure_Iio_le](declarations/variation-vectormeasure-iio-le.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [variation_vectorMeasure_Iic_le](declarations/variation-vectormeasure-iic-le.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [variation_vectorMeasure_univ_le](declarations/variation-vectormeasure-univ-le.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba1b140a239e53ecd4fcee1077573f77c99a34c94fbf7259ec25f3556e1288b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
