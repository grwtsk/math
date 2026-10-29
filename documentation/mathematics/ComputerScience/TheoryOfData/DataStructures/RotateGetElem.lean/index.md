# Rotate Get Elem

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**100 observed declarations and anonymous commands**, 95 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Varianta13b5c92ed19b559cf676ebac14b4bdcbb13063d2637ec8d9f7f69bd74d3c306.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a9b9d318957c8600d8aa684a91d4afa3c397c27`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/RotateGetElem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rotate_mod](declarations/rotate-mod-source-edition-2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rotate_nil](declarations/rotate-nil-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rotate_zero](declarations/rotate-zero-source-edition-2.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rotate'_nil](declarations/rotate-nil.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rotate'_zero](declarations/rotate-zero.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rotate'_cons_succ](declarations/rotate-cons-succ-source-edition-2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [length_rotate'](declarations/length-rotate.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rotate'_eq_drop_append_take](declarations/rotate-eq-drop-append-take.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rotate'_rotate'](declarations/rotate-rotate-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rotate'_length](declarations/rotate-length-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rotate'_length_mul](declarations/rotate-length-mul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rotate'_mod](declarations/rotate-mod.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rotate_eq_rotate'](declarations/rotate-eq-rotate-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rotate_cons_succ](declarations/rotate-cons-succ.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_rotate](declarations/mem-rotate.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [length_rotate](declarations/length-rotate-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rotate_replicate](declarations/rotate-replicate.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rotate_eq_drop_append_take](declarations/rotate-eq-drop-append-take-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rotate_eq_drop_append_take_mod](declarations/rotate-eq-drop-append-take-mod.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rotate_append_length_eq](declarations/rotate-append-length-eq.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rotate_rotate](declarations/rotate-rotate.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rotate_length](declarations/rotate-length.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rotate_length_mul](declarations/rotate-length-mul-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rotate_perm](declarations/rotate-perm.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nodup_rotate](declarations/nodup-rotate.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rotate_eq_nil_iff](declarations/rotate-eq-nil-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nil_eq_rotate_iff](declarations/nil-eq-rotate-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rotate_singleton](declarations/rotate-singleton.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zipWith_rotate_distrib](declarations/zipwith-rotate-distrib.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zipWith_rotate_one](declarations/zipwith-rotate-one.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem?_rotate](declarations/getelem-rotate-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [getElem_rotate](declarations/getelem-rotate.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [get?_rotate](declarations/get-rotate-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [get_rotate](declarations/get-rotate.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [head?_rotate](declarations/head-rotate.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [get_rotate_one](declarations/get-rotate-one.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [getElem_eq_getElem_rotate](declarations/getelem-eq-getelem-rotate.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [get_eq_get_rotate](declarations/get-eq-get-rotate.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rotate_eq_self_iff_eq_replicate](declarations/rotate-eq-self-iff-eq-replicate.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rotate_one_eq_self_iff_eq_replicate](declarations/rotate-one-eq-self-iff-eq-replicate.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rotate_injective](declarations/rotate-injective.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rotate_eq_rotate](declarations/rotate-eq-rotate.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rotate_eq_iff](declarations/rotate-eq-iff.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [rotate_eq_singleton_iff](declarations/rotate-eq-singleton-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [singleton_eq_rotate_iff](declarations/singleton-eq-rotate-iff.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reverse_rotate](declarations/reverse-rotate.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rotate_reverse](declarations/rotate-reverse.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_rotate](declarations/map-rotate.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Nodup.rotate_congr](declarations/nodup-rotate-congr.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Nodup.rotate_congr_iff](declarations/nodup-rotate-congr-iff.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Nodup.rotate_eq_self_iff](declarations/nodup-rotate-eq-self-iff.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [IsRotated](declarations/isrotated.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsRotated.refl](declarations/isrotated-refl.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsRotated.symm](declarations/isrotated-symm.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isRotated_comm](declarations/isrotated-comm.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsRotated.forall](declarations/isrotated-forall.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsRotated.trans](declarations/isrotated-trans.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsRotated.eqv](declarations/isrotated-eqv.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IsRotated.setoid](declarations/isrotated-setoid.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsRotated.perm](declarations/isrotated-perm.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsRotated.nodup_iff](declarations/isrotated-nodup-iff.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsRotated.mem_iff](declarations/isrotated-mem-iff.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isRotated_nil_iff](declarations/isrotated-nil-iff-source-edition-2.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isRotated_nil_iff'](declarations/isrotated-nil-iff.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isRotated_singleton_iff](declarations/isrotated-singleton-iff.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isRotated_singleton_iff'](declarations/isrotated-singleton-iff-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [isRotated_concat](declarations/isrotated-concat.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isRotated_append](declarations/isrotated-append.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsRotated.reverse](declarations/isrotated-reverse.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [isRotated_reverse_comm_iff](declarations/isrotated-reverse-comm-iff.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [isRotated_reverse_iff](declarations/isrotated-reverse-iff.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isRotated_iff_mod](declarations/isrotated-iff-mod.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [isRotated_iff_mem_map_range](declarations/isrotated-iff-mem-map-range.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsRotated.map](declarations/isrotated-map.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsRotated.cons_getLast_dropLast](declarations/isrotated-cons-getlast-droplast.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [IsRotated.dropLast_tail](declarations/isrotated-droplast-tail.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [cyclicPermutations](declarations/cyclicpermutations.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [cyclicPermutations_nil](declarations/cyclicpermutations-nil.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [cyclicPermutations_cons](declarations/cyclicpermutations-cons.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [cyclicPermutations_of_ne_nil](declarations/cyclicpermutations-of-ne-nil.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [length_cyclicPermutations_cons](declarations/length-cyclicpermutations-cons.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [length_cyclicPermutations_of_ne_nil](declarations/length-cyclicpermutations-of-ne-nil.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [cyclicPermutations_ne_nil](declarations/cyclicpermutations-ne-nil.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [getElem_cyclicPermutations](declarations/getelem-cyclicpermutations.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [get_cyclicPermutations](declarations/get-cyclicpermutations.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [head_cyclicPermutations](declarations/head-cyclicpermutations.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [head?_cyclicPermutations](declarations/head-cyclicpermutations-source-edition-2.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [cyclicPermutations_injective](declarations/cyclicpermutations-injective.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cyclicPermutations_inj](declarations/cyclicpermutations-inj.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [length_mem_cyclicPermutations](declarations/length-mem-cyclicpermutations.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [mem_cyclicPermutations_self](declarations/mem-cyclicpermutations-self.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [cyclicPermutations_rotate](declarations/cyclicpermutations-rotate.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_cyclicPermutations_iff](declarations/mem-cyclicpermutations-iff.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [cyclicPermutations_eq_nil_iff](declarations/cyclicpermutations-eq-nil-iff.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [cyclicPermutations_eq_singleton_iff](declarations/cyclicpermutations-eq-singleton-iff.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Nodup.cyclicPermutations](declarations/nodup-cyclicpermutations.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IsRotated.cyclicPermutations](declarations/isrotated-cyclicpermutations.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isRotated_cyclicPermutations_iff](declarations/isrotated-cyclicpermutations-iff.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [isRotatedDecidable](declarations/isrotateddecidable.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84e6b9a7ce7920f87aee0dd5326dd6bf26883df616c9e6867482dd5f772f2925 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Varianta13b5c92ed19b559cf676ebac14b4bdcbb13063d2637ec8d9f7f69bd74d3c306.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
