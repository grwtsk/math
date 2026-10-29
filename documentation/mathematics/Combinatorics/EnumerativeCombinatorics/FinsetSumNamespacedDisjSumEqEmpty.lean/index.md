# Finset Sum Namespaced Disj Sum Eq Empty

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantd739a9d612b94249d1b664061ad2f1cd0901b5138cfd7c1139b20b359a1049aa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c9e6b4f9c1cae87c0545cc3ffde0d340362a84c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetSumNamespacedDisjSumEqEmpty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [disjSum](declarations/disjsum.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [val_disjSum](declarations/val-disjsum.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [empty_disjSum](declarations/empty-disjsum.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [disjSum_empty](declarations/disjsum-empty.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [card_disjSum](declarations/card-disjsum.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [disjoint_map_inl_map_inr](declarations/disjoint-map-inl-map-inr.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_inl_disjUnion_map_inr](declarations/map-inl-disjunion-map-inr.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_disjSum](declarations/mem-disjsum.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [inl_mem_disjSum](declarations/inl-mem-disjsum.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inr_mem_disjSum](declarations/inr-mem-disjsum.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [disjSum_eq_empty](declarations/disjsum-eq-empty.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [disjSum_mono](declarations/disjsum-mono.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [disjSum_mono_left](declarations/disjsum-mono-left.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [disjSum_mono_right](declarations/disjsum-mono-right.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [disjSum_ssubset_disjSum_of_ssubset_of_subset](declarations/disjsum-ssubset-disjsum-of-ssubset-of-subset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [disjSum_ssubset_disjSum_of_subset_of_ssubset](declarations/disjsum-ssubset-disjsum-of-subset-of-ssubset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [disjSum_strictMono_left](declarations/disjsum-strictmono-left.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [disj_sum_strictMono_right](declarations/disj-sum-strictmono-right.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [disjSum_inj](declarations/disjsum-inj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Injective2_disjSum](declarations/injective2-disjsum.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toLeft](declarations/toleft.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toRight](declarations/toright.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [mem_toLeft](declarations/mem-toleft.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mem_toRight](declarations/mem-toright.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [toLeft_subset_toLeft](declarations/toleft-subset-toleft.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [toRight_subset_toRight](declarations/toright-subset-toright.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [toLeft_monotone](declarations/toleft-monotone.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [toRight_monotone](declarations/toright-monotone.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [toLeft_disjSum_toRight](declarations/toleft-disjsum-toright.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [card_toLeft_add_card_toRight](declarations/card-toleft-add-card-toright.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [card_toLeft_le](declarations/card-toleft-le.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [card_toRight_le](declarations/card-toright-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [toLeft_disjSum](declarations/toleft-disjsum.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [toRight_disjSum](declarations/toright-disjsum.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [disjSum_eq_iff](declarations/disjsum-eq-iff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [eq_disjSum_iff](declarations/eq-disjsum-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [disjSum_subset](declarations/disjsum-subset.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [subset_disjSum](declarations/subset-disjsum.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [subset_map_inl](declarations/subset-map-inl.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [subset_map_inr](declarations/subset-map-inr.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [map_inl_subset_iff_subset_toLeft](declarations/map-inl-subset-iff-subset-toleft.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_inr_subset_iff_subset_toRight](declarations/map-inr-subset-iff-subset-toright.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [gc_map_inl_toLeft](declarations/gc-map-inl-toleft.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [gc_map_inr_toRight](declarations/gc-map-inr-toright.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [toLeft_map_sumComm](declarations/toleft-map-sumcomm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [toRight_map_sumComm](declarations/toright-map-sumcomm.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [toLeft_cons_inl](declarations/toleft-cons-inl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [toLeft_cons_inr](declarations/toleft-cons-inr.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [toRight_cons_inl](declarations/toright-cons-inl.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [toRight_cons_inr](declarations/toright-cons-inr.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [toLeft_image_swap](declarations/toleft-image-swap.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [toRight_image_swap](declarations/toright-image-swap.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [toLeft_insert_inl](declarations/toleft-insert-inl.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [toLeft_insert_inr](declarations/toleft-insert-inr.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [toRight_insert_inl](declarations/toright-insert-inl.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [toRight_insert_inr](declarations/toright-insert-inr.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [toLeft_inter](declarations/toleft-inter.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [toRight_inter](declarations/toright-inter.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [toLeft_union](declarations/toleft-union.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [toRight_union](declarations/toright-union.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [toLeft_sdiff](declarations/toleft-sdiff.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toRight_sdiff](declarations/toright-sdiff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [sumEquiv](declarations/sumequiv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [sumEquiv_symm_apply](declarations/sumequiv-symm-apply.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_disjSum](declarations/map-disjsum.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [fold_disjSum](declarations/fold-disjsum.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c25be385d7207fcac0fc30ed13c94bab2469336a0b5b0fcbde85a306172f6103 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantd739a9d612b94249d1b664061ad2f1cd0901b5138cfd7c1139b20b359a1049aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
