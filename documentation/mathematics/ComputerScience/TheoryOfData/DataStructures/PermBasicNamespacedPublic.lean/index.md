# Perm Basic Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f93e1a8c02c798d7bd42a3dd03f777ccde9c9b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PermBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [perm_rfl](declarations/perm-rfl.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Perm.subset_congr_left](declarations/perm-subset-congr-left.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Perm.subset_congr_right](declarations/perm-subset-congr-right.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [set_perm_cons_eraseIdx](declarations/set-perm-cons-eraseidx.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [getElem_cons_eraseIdx_perm](declarations/getelem-cons-eraseidx-perm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [perm_insertIdx_iff_of_le](declarations/perm-insertidx-iff-of-le.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [perm_insertIdx_iff](declarations/perm-insertidx-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Perm.insertIdx](declarations/perm-insertidx.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [perm_eraseIdx_of_getElem?_eq](declarations/perm-eraseidx-of-getelem-eq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [perm_comp_perm](declarations/perm-comp-perm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [perm_comp_forall₂](declarations/perm-comp-forall.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forall₂_comp_perm_eq_perm_comp_forall₂](declarations/forall-comp-perm-eq-perm-comp-forall.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_map_comp_perm](declarations/eq-map-comp-perm.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rel_perm_imp](declarations/rel-perm-imp.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rel_perm](declarations/rel-perm.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [count_eq_count_filter_add](declarations/count-eq-count-filter-add.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Perm.foldl_eq](declarations/perm-foldl-eq.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Perm.foldr_eq](declarations/perm-foldr-eq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Perm.foldl_op_eq](declarations/perm-foldl-op-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Perm.foldr_op_eq](declarations/perm-foldr-op-eq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perm_option_toList](declarations/perm-option-tolist.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [perm_replicate_append_replicate](declarations/perm-replicate-append-replicate.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_perm_map_iff](declarations/map-perm-map-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Perm.flatMap_left](declarations/perm-flatmap-left.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Perm.flatMap](declarations/perm-flatmap.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [flatMap_append_perm](declarations/flatmap-append-perm.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_append_flatMap_perm](declarations/map-append-flatmap-perm.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Perm.product_right](declarations/perm-product-right.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Perm.product_left](declarations/perm-product-left.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Perm.product](declarations/perm-product.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8010e60481b6a9d9964b364fc729ac1d8ef9d21e1ff0d6ec3ef5f66290968c27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante6b64d23867f5d17e14b609a6b49b1c8df540ebb6ec68ad9f7633baa5a77335b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
