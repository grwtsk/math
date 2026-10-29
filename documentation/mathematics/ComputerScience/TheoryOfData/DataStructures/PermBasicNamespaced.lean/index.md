# Perm Basic Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f875d2fad87f3270006f965b18bdd6503def1eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PermBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [perm_rfl](declarations/perm-rfl.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Perm.subset_congr_left](declarations/perm-subset-congr-left.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Perm.subset_congr_right](declarations/perm-subset-congr-right.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [set_perm_cons_eraseIdx](declarations/set-perm-cons-eraseidx.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [getElem_cons_eraseIdx_perm](declarations/getelem-cons-eraseidx-perm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [perm_insertIdx_iff_of_le](declarations/perm-insertidx-iff-of-le.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [perm_insertIdx_iff](declarations/perm-insertidx-iff.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Perm.insertIdx](declarations/perm-insertidx.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [perm_eraseIdx_of_getElem?_eq](declarations/perm-eraseidx-of-getelem-eq.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [perm_comp_perm](declarations/perm-comp-perm.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [perm_comp_forall₂](declarations/perm-comp-forall.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forall₂_comp_perm_eq_perm_comp_forall₂](declarations/forall-comp-perm-eq-perm-comp-forall.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_map_comp_perm](declarations/eq-map-comp-perm.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rel_perm_imp](declarations/rel-perm-imp.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rel_perm](declarations/rel-perm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [count_eq_count_filter_add](declarations/count-eq-count-filter-add.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Perm.foldl_eq](declarations/perm-foldl-eq.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Perm.foldr_eq](declarations/perm-foldr-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Perm.foldl_op_eq](declarations/perm-foldl-op-eq.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Perm.foldr_op_eq](declarations/perm-foldr-op-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [perm_option_toList](declarations/perm-option-tolist.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_replicate_append_replicate](declarations/perm-replicate-append-replicate.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_perm_map_iff](declarations/map-perm-map-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Perm.flatMap_left](declarations/perm-flatmap-left.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Perm.flatMap](declarations/perm-flatmap.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [flatMap_append_perm](declarations/flatmap-append-perm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_append_flatMap_perm](declarations/map-append-flatmap-perm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Perm.product_right](declarations/perm-product-right.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Perm.product_left](declarations/perm-product-left.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Perm.product](declarations/perm-product.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ed2598eecc787326db59cb86607875193fc8475527a6a5e665316e0e58893e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfe574fa153de7adb5a89cee335048a63cc9e2820bde5b98c824560d98636733f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
