# Tensor Product Submodule

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29eb6303d7823fbf569daf4f65aa054e2b953d23`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductSubmodule.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulMap](declarations/mulmap.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mulMap_tmul](declarations/mulmap-tmul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mulMap_map_comp_eq](declarations/mulmap-map-comp-eq.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mulMap_op](declarations/mulmap-op.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mulMap_comm_of_commute](declarations/mulmap-comm-of-commute.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mulMap_comp_rTensor](declarations/mulmap-comp-rtensor.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mulMap_comp_lTensor](declarations/mulmap-comp-ltensor.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mulMap_comp_map_inclusion](declarations/mulmap-comp-map-inclusion.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mulMap_eq_mul'_comp_mapIncl](declarations/mulmap-eq-mul-comp-mapincl.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mulMap_range](declarations/mulmap-range.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mulMap'](declarations/mulmap-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [val_mulMap'_tmul](declarations/val-mulmap-tmul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mulMap'_surjective](declarations/mulmap-surjective.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [lTensorOne'](declarations/ltensorone-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lTensorOne'_tmul](declarations/ltensorone-tmul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lTensorOne'_one_tmul](declarations/ltensorone-one-tmul-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lTensorOne](declarations/ltensorone.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lTensorOne_tmul](declarations/ltensorone-tmul-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lTensorOne_one_tmul](declarations/ltensorone-one-tmul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lTensorOne_symm_apply](declarations/ltensorone-symm-apply.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mulMap_one_left_eq](declarations/mulmap-one-left-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rTensorOne'](declarations/rtensorone.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rTensorOne'_tmul](declarations/rtensorone-tmul-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rTensorOne'_tmul_one](declarations/rtensorone-tmul-one-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rTensorOne](declarations/rtensorone-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rTensorOne_tmul](declarations/rtensorone-tmul.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rTensorOne_tmul_one](declarations/rtensorone-tmul-one.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rTensorOne_symm_apply](declarations/rtensorone-symm-apply.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mulMap_one_right_eq](declarations/mulmap-one-right-eq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comm_trans_lTensorOne](declarations/comm-trans-ltensorone.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comm_trans_rTensorOne](declarations/comm-trans-rtensorone.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mulLeftMap_eq_mulMap_comp](declarations/mulleftmap-eq-mulmap-comp.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mulRightMap_eq_mulMap_comp](declarations/mulrightmap-eq-mulmap-comp.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mulMap_comm](declarations/mulmap-comm.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f2a6dcaf3a87283142e2a1b73ebd2f93dde0683ac57385e48c6cb6bb43c0013 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
