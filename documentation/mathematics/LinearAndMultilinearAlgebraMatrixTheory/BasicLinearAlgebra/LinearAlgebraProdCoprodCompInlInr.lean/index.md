# Linear Algebra Prod Coprod Comp Inl Inr

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**133 observed declarations and anonymous commands**, 109 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9eb725e8ffaff98a90c1b777aa46ef69320aa54e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraProdCoprodCompInlInr.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fst](declarations/fst.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [snd](declarations/snd.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fst_apply](declarations/fst-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [snd_apply](declarations/snd-apply.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [coe_fst](declarations/coe-fst.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_snd](declarations/coe-snd.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fst_surjective](declarations/fst-surjective.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [snd_surjective](declarations/snd-surjective.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [prod](declarations/prod.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_prod](declarations/coe-prod.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fst_prod](declarations/fst-prod.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [snd_prod](declarations/snd-prod.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pair_fst_snd](declarations/pair-fst-snd.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [prod_comp](declarations/prod-comp.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [prodEquiv](declarations/prodequiv.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [inl](declarations/inl.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [inr](declarations/inr.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [range_inl](declarations/range-inl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ker_snd](declarations/ker-snd.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [range_inr](declarations/range-inr.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ker_fst](declarations/ker-fst.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fst_comp_inl](declarations/fst-comp-inl.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [snd_comp_inl](declarations/snd-comp-inl.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fst_comp_inr](declarations/fst-comp-inr.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [snd_comp_inr](declarations/snd-comp-inr.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_inl](declarations/coe-inl.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inl_apply](declarations/inl-apply.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_inr](declarations/coe-inr.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inr_apply](declarations/inr-apply.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inl_eq_prod](declarations/inl-eq-prod.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inr_eq_prod](declarations/inr-eq-prod.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inl_injective](declarations/inl-injective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inr_injective](declarations/inr-injective.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coprod](declarations/coprod.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coprod_apply](declarations/coprod-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coprod_inl](declarations/coprod-inl.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coprod_inr](declarations/coprod-inr.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coprod_inl_inr](declarations/coprod-inl-inr.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coprod_zero_left](declarations/coprod-zero-left.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coprod_zero_right](declarations/coprod-zero-right.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_coprod](declarations/comp-coprod.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fst_eq_coprod](declarations/fst-eq-coprod.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [snd_eq_coprod](declarations/snd-eq-coprod.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coprod_comp_prod](declarations/coprod-comp-prod.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coprod_map_prod](declarations/coprod-map-prod.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coprod_comp_inl_inr](declarations/coprod-comp-inl-inr.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [coprodEquiv](declarations/coprodequiv.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [prod_ext_iff](declarations/prod-ext-iff.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [prod_ext](declarations/prod-ext.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [prodMap](declarations/prodmap.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_prodMap](declarations/coe-prodmap.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prodMap_comap_prod](declarations/prodmap-comap-prod.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ker_prodMap](declarations/ker-prodmap.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [prodMap_id](declarations/prodmap-id.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [prodMap_one](declarations/prodmap-one.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [prodMap_comp](declarations/prodmap-comp.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [prodMap_mul](declarations/prodmap-mul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [prodMap_add](declarations/prodmap-add.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [prodMap_zero](declarations/prodmap-zero.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [prodMap_smul](declarations/prodmap-smul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [prodMapLinear](declarations/prodmaplinear.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [prodMapRingHom](declarations/prodmapringhom.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [inl_map_mul](declarations/inl-map-mul.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inr_map_mul](declarations/inr-map-mul.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [prodMapAlgHom](declarations/prodmapalghom.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [range_coprod](declarations/range-coprod.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isCompl_range_inl_inr](declarations/iscompl-range-inl-inr.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [sup_range_inl_inr](declarations/sup-range-inl-inr.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [disjoint_inl_inr](declarations/disjoint-inl-inr.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_coprod_prod](declarations/map-coprod-prod.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [comap_prod_prod](declarations/comap-prod-prod.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prod_eq_inf_comap](declarations/prod-eq-inf-comap.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [prod_eq_sup_map](declarations/prod-eq-sup-map.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [span_inl_union_inr](declarations/span-inl-union-inr.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ker_prod](declarations/ker-prod.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [range_prod_le](declarations/range-prod-le.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [ker_prod_ker_le_ker_coprod](declarations/ker-prod-ker-le-ker-coprod.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [ker_coprod_of_disjoint_range](declarations/ker-coprod-of-disjoint-range.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sup_eq_range](declarations/sup-eq-range.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [map_inl](declarations/map-inl.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map_inr](declarations/map-inr.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [comap_fst](declarations/comap-fst.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [comap_snd](declarations/comap-snd.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [prod_comap_inl](declarations/prod-comap-inl.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [prod_comap_inr](declarations/prod-comap-inr.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [prod_map_fst](declarations/prod-map-fst.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [prod_map_snd](declarations/prod-map-snd.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [ker_inl](declarations/ker-inl.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [ker_inr](declarations/ker-inr.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [range_fst](declarations/range-fst.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [range_snd](declarations/range-snd.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [fst](declarations/fst-source-edition-2.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [fstEquiv](declarations/fstequiv.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [fst_map_fst](declarations/fst-map-fst.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [fst_map_snd](declarations/fst-map-snd.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [snd](declarations/snd-source-edition-2.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [sndEquiv](declarations/sndequiv.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [snd_map_fst](declarations/snd-map-fst.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [snd_map_snd](declarations/snd-map-snd.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [fst_sup_snd](declarations/fst-sup-snd.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [fst_inf_snd](declarations/fst-inf-snd.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [le_prod_iff](declarations/le-prod-iff.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prod_le_iff](declarations/prod-le-iff.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prod_eq_bot_iff](declarations/prod-eq-bot-iff.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [prod_eq_top_iff](declarations/prod-eq-top-iff.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [prodComm](declarations/prodcomm.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [fst_comp_prodComm](declarations/fst-comp-prodcomm.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [snd_comp_prodComm](declarations/snd-comp-prodcomm.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [prodAssoc](declarations/prodassoc.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [fst_comp_prodAssoc](declarations/fst-comp-prodassoc.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [snd_comp_prodAssoc](declarations/snd-comp-prodassoc.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [prodProdProdComm](declarations/prodprodprodcomm.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [prodProdProdComm_symm](declarations/prodprodprodcomm-symm.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [prodProdProdComm_toAddEquiv](declarations/prodprodprodcomm-toaddequiv.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [prodCongr](declarations/prodcongr.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [prodCongr_symm](declarations/prodcongr-symm.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [prodCongr_apply](declarations/prodcongr-apply.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coe_prodCongr](declarations/coe-prodcongr.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [skewProd](declarations/skewprod.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [skewProd_apply](declarations/skewprod-apply.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [skewProd_symm_apply](declarations/skewprod-symm-apply.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [uniqueProd](declarations/uniqueprod.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [prodUnique](declarations/produnique.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [range_prod_eq](declarations/range-prod-eq.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [graph](declarations/graph.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [mem_graph_iff](declarations/mem-graph-iff.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [graph_eq_ker_coprod](declarations/graph-eq-ker-coprod.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [graph_eq_range_prod](declarations/graph-eq-range-prod.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [LinearMap.exists_range_eq_graph](declarations/linearmap-exists-range-eq-graph.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [Submodule.exists_eq_graph](declarations/submodule-exists-eq-graph.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [LinearMap.exists_linearEquiv_eq_graph](declarations/linearmap-exists-linearequiv-eq-graph.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [Submodule.exists_equiv_eq_graph](declarations/submodule-exists-equiv-eq-graph.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffe13a488e1e93e6ef70b63b0d55c2d52634fad27d7d974ff821e6e20da1689f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variantcd1a4b14f27eb8b4ddd1ac832de74d36a20af381922c32b31eedc8ff62c7d0d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
