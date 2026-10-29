# Vector Measure Operations Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**67 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9205c48eb761706cc18537e786739a6673faaa89`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOperationsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toSignedMeasure](declarations/tosignedmeasure.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toSignedMeasure_apply](declarations/tosignedmeasure-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toSignedMeasure_apply_measurable](declarations/tosignedmeasure-apply-measurable.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toSignedMeasure_congr](declarations/tosignedmeasure-congr.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toSignedMeasure_zero](declarations/tosignedmeasure-zero.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toSignedMeasure_add](declarations/tosignedmeasure-add.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toSignedMeasure_smul](declarations/tosignedmeasure-smul.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toENNRealVectorMeasure](declarations/toennrealvectormeasure.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toENNRealVectorMeasure_apply](declarations/toennrealvectormeasure-apply.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toENNRealVectorMeasure_apply_measurable](declarations/toennrealvectormeasure-apply-measurable.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toENNRealVectorMeasure_zero](declarations/toennrealvectormeasure-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toENNRealVectorMeasure_add](declarations/toennrealvectormeasure-add.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toSignedMeasure_sub_apply](declarations/tosignedmeasure-sub-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ennrealToMeasure](declarations/ennrealtomeasure.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ennrealToMeasure_apply](declarations/ennrealtomeasure-apply.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ennrealToMeasure_zero](declarations/ennrealtomeasure-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Vector Measure Operations Namespaced Public](declarations/toennrealvectormeasure-ennrealtomeasure.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ennrealToMeasure_toENNRealVectorMeasure](declarations/ennrealtomeasure-toennrealvectormeasure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [equivMeasure](declarations/equivmeasure.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [map](declarations/map.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_not_measurable](declarations/map-not-measurable.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_apply](declarations/map-apply.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_id](declarations/map-id.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_zero](declarations/map-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapRange](declarations/maprange.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mapRange_apply](declarations/maprange-apply.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mapRange_id](declarations/maprange-id.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mapRange_zero](declarations/maprange-zero.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mapRange_add](declarations/maprange-add.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mapRangeHom](declarations/maprangehom.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mapRange_smul](declarations/maprange-smul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mapRangeL](declarations/maprangel.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [restrict](declarations/restrict-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [restrict_not_measurable](declarations/restrict-not-measurable.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [restrict_apply_univ](declarations/restrict-apply-univ.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrict_eq_self](declarations/restrict-eq-self.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [restrict_empty](declarations/restrict-empty.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [restrict_univ](declarations/restrict-univ.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [restrict_zero](declarations/restrict-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [restrict_dirac](declarations/restrict-dirac.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [restrict_dirac_of_mem](declarations/restrict-dirac-of-mem.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [restrict_dirac_of_notMem](declarations/restrict-dirac-of-notmem.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [restrict_singleton](declarations/restrict-singleton.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [restrict_restrict](declarations/restrict-restrict.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [restrict_map](declarations/restrict-map.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [restrict_toSignedMeasure](declarations/restrict-tosignedmeasure.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_add](declarations/map-add.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mapGm](declarations/mapgm.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [restrict_add](declarations/restrict-add.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [restrictGm](declarations/restrictgm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [restrict_add_restrict_compl](declarations/restrict-add-restrict-compl.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [restrict_inter_add_sdiff](declarations/restrict-inter-add-sdiff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [restrict_union_add_inter](declarations/restrict-union-add-inter.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [restrict_union](declarations/restrict-union.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [restrict_neg](declarations/restrict-neg.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [restrict_sub](declarations/restrict-sub.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_smul](declarations/map-smul.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [restrict_smul](declarations/restrict-smul.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mapₗ](declarations/map-source-edition-2.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [restrictₗ](declarations/restrict.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [trim](declarations/trim.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [trim_eq_self](declarations/trim-eq-self.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [zero_trim](declarations/zero-trim.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [trim_measurableSet_eq](declarations/trim-measurableset-eq.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [restrict_trim](declarations/restrict-trim.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5690c8bd8271a158d59a1248f7158a1a51cd3561eb15d2c7267288fa0c220068 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
