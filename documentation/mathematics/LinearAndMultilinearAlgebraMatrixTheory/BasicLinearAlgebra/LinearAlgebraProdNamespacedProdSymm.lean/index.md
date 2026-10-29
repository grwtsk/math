# Linear Algebra Prod Namespaced Prod Symm

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**131 observed declarations and anonymous commands**, 104 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eca3c9a17e67a231655ea81c7531716c597ab9e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdNamespacedProdSymm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fst](declarations/fst-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [snd](declarations/snd-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fst_apply](declarations/fst-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [snd_apply](declarations/snd-apply.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [fst_surjective](declarations/fst-surjective.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [snd_surjective](declarations/snd-surjective.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [prod](declarations/prod-source-edition-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_prod](declarations/coe-prod.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fst_prod](declarations/fst-prod.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [snd_prod](declarations/snd-prod.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pair_fst_snd](declarations/pair-fst-snd.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prod_comp](declarations/prod-comp.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [prodEquiv](declarations/prodequiv.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [inl](declarations/inl.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [inr](declarations/inr.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [range_inl](declarations/range-inl.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ker_snd](declarations/ker-snd.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [range_inr](declarations/range-inr.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ker_fst](declarations/ker-fst.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_inl](declarations/coe-inl.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inl_apply](declarations/inl-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_inr](declarations/coe-inr.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inr_apply](declarations/inr-apply.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inl_eq_prod](declarations/inl-eq-prod.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inr_eq_prod](declarations/inr-eq-prod.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [inl_injective](declarations/inl-injective.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inr_injective](declarations/inr-injective.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coprod](declarations/coprod.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coprod_apply](declarations/coprod-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coprod_inl](declarations/coprod-inl.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coprod_inr](declarations/coprod-inr.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coprod_inl_inr](declarations/coprod-inl-inr.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coprod_zero_left](declarations/coprod-zero-left.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coprod_zero_right](declarations/coprod-zero-right.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comp_coprod](declarations/comp-coprod.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fst_eq_coprod](declarations/fst-eq-coprod.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [snd_eq_coprod](declarations/snd-eq-coprod.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coprod_comp_prod](declarations/coprod-comp-prod.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coprod_map_prod](declarations/coprod-map-prod.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [coprodEquiv](declarations/coprodequiv.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [prod_ext_iff](declarations/prod-ext-iff.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [prod_ext](declarations/prod-ext.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [prodMap](declarations/prodmap.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_prodMap](declarations/coe-prodmap.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [prodMap_comap_prod](declarations/prodmap-comap-prod.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ker_prodMap](declarations/ker-prodmap.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [prodMap_id](declarations/prodmap-id.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [prodMap_one](declarations/prodmap-one.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [prodMap_comp](declarations/prodmap-comp.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [prodMap_mul](declarations/prodmap-mul.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [prodMap_add](declarations/prodmap-add.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prodMap_zero](declarations/prodmap-zero.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prodMap_smul](declarations/prodmap-smul.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [prodMapLinear](declarations/prodmaplinear.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [prodMapRingHom](declarations/prodmapringhom.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [inl_map_mul](declarations/inl-map-mul.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [inr_map_mul](declarations/inr-map-mul.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [prodMapAlgHom](declarations/prodmapalghom.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [range_coprod](declarations/range-coprod.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isCompl_range_inl_inr](declarations/iscompl-range-inl-inr.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [sup_range_inl_inr](declarations/sup-range-inl-inr.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [disjoint_inl_inr](declarations/disjoint-inl-inr.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_coprod_prod](declarations/map-coprod-prod.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [comap_prod_prod](declarations/comap-prod-prod.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [prod_eq_inf_comap](declarations/prod-eq-inf-comap.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prod_eq_sup_map](declarations/prod-eq-sup-map.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [span_inl_union_inr](declarations/span-inl-union-inr.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ker_prod](declarations/ker-prod.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [range_prod_le](declarations/range-prod-le.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ker_prod_ker_le_ker_coprod](declarations/ker-prod-ker-le-ker-coprod.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ker_coprod_of_disjoint_range](declarations/ker-coprod-of-disjoint-range.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sup_eq_range](declarations/sup-eq-range.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_inl](declarations/map-inl.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_inr](declarations/map-inr.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comap_fst](declarations/comap-fst.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comap_snd](declarations/comap-snd.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prod_comap_inl](declarations/prod-comap-inl.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prod_comap_inr](declarations/prod-comap-inr.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod_map_fst](declarations/prod-map-fst.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [prod_map_snd](declarations/prod-map-snd.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ker_inl](declarations/ker-inl.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ker_inr](declarations/ker-inr.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [range_fst](declarations/range-fst.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [range_snd](declarations/range-snd.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [fst](declarations/fst.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [fstEquiv](declarations/fstequiv.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [fst_map_fst](declarations/fst-map-fst.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [fst_map_snd](declarations/fst-map-snd.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [snd](declarations/snd.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [sndEquiv](declarations/sndequiv.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [snd_map_fst](declarations/snd-map-fst.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [snd_map_snd](declarations/snd-map-snd.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [fst_sup_snd](declarations/fst-sup-snd.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [fst_inf_snd](declarations/fst-inf-snd.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [le_prod_iff](declarations/le-prod-iff.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prod_le_iff](declarations/prod-le-iff.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [prod_eq_bot_iff](declarations/prod-eq-bot-iff.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_eq_top_iff](declarations/prod-eq-top-iff.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [prodComm](declarations/prodcomm.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [fst_comp_prodComm](declarations/fst-comp-prodcomm.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [snd_comp_prodComm](declarations/snd-comp-prodcomm.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [prodProdProdComm](declarations/prodprodprodcomm.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prodProdProdComm_symm](declarations/prodprodprodcomm-symm.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prodProdProdComm_toAddEquiv](declarations/prodprodprodcomm-toaddequiv.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [prod](declarations/prod.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [prod_symm](declarations/prod-symm.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [prod_apply](declarations/prod-apply.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coe_prod](declarations/coe-prod-source-edition-2.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [skewProd](declarations/skewprod.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [skewProd_apply](declarations/skewprod-apply.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [skewProd_symm_apply](declarations/skewprod-symm-apply.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [range_prod_eq](declarations/range-prod-eq.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [tunnelAux](declarations/tunnelaux.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [tunnelAux_injective](declarations/tunnelaux-injective.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [tunnel'](declarations/tunnel-source-edition-2.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [tunnel](declarations/tunnel.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [tailing](declarations/tailing.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [tailingLinearEquiv](declarations/tailinglinearequiv.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [tailing_le_tunnel](declarations/tailing-le-tunnel.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [tailing_disjoint_tunnel_succ](declarations/tailing-disjoint-tunnel-succ.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [tailing_sup_tunnel_succ_le_tunnel](declarations/tailing-sup-tunnel-succ-le-tunnel.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [tailings](declarations/tailings.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [tailings_zero](declarations/tailings-zero.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [tailings_succ](declarations/tailings-succ.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [tailings_disjoint_tunnel](declarations/tailings-disjoint-tunnel.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [tailings_disjoint_tailing](declarations/tailings-disjoint-tailing.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [graph](declarations/graph.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_graph_iff](declarations/mem-graph-iff.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [graph_eq_ker_coprod](declarations/graph-eq-ker-coprod.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [graph_eq_range_prod](declarations/graph-eq-range-prod.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=233598d42edef1a649975b35075f22a03426ce0ef4b68097bf5a79df24e0c703 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variant5c3b7650f6531f44b8b6373a8d0857792bfce5d7818b6559a50f4ec7453d3e4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
