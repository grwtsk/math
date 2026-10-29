# Bialgebra Tensor Product Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f55abe887d4104554fc5da4bfea572ad7c2c754`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BialgebraTensorProductNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](declarations/counit-eq-alghom-tolinearmap.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](declarations/comul-eq-alghom-tolinearmap.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Bialgebra Tensor Product Namespaced Public](declarations/instbialgebra.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [counitAlgHom_def](declarations/counitalghom-def.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [comulAlgHom_def](declarations/comulalghom-def.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [map](declarations/map.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_tmul](declarations/map-tmul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_toCoalgHom](declarations/map-tocoalghom.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_toAlgHom](declarations/map-toalghom.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [assoc](declarations/assoc.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [assoc_toCoalgEquiv](declarations/assoc-tocoalgequiv.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [assoc_toAlgEquiv](declarations/assoc-toalgequiv.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lid](declarations/lid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lid_toCoalgEquiv](declarations/lid-tocoalgequiv.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lid_toAlgEquiv](declarations/lid-toalgequiv.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lid_symm_apply](declarations/lid-symm-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](declarations/coalgebra-rid-eq-algebra-rid-apply.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rid](declarations/rid.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rid_toCoalgEquiv](declarations/rid-tocoalgequiv.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rid_toAlgEquiv](declarations/rid-toalgequiv.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [comm](declarations/comm.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [lTensor](declarations/ltensor.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [rTensor](declarations/rtensor.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [comulBialgHom](declarations/comulbialghom.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [comm_comp_comulBialgHom](declarations/comm-comp-comulbialghom.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mulCoalgHom](declarations/mulcoalghom.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toLinearMap_mulCoalgHom](declarations/tolinearmap-mulcoalghom.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [coe_mulCoalgHom](declarations/coe-mulcoalghom.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Bialgebra Tensor Product Namespaced Public](declarations/tmul.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Bialgebra Tensor Product Namespaced Public](declarations/mul.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [counitAlgHom_comp_includeRight](declarations/counitalghom-comp-includeright.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [comul_includeRight](declarations/comul-includeright.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mulBialgHom](declarations/mulbialghom.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mulBialgHom_toAlgHom](declarations/mulbialghom-toalghom.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [coe_mulBialgHom](declarations/coe-mulbialghom.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34b52a9fe719b2ba6f835c27a83803c83d95ec333d2ba8b6eb32ccf93c75748b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant318c2d6c5265ef6155fc006704c01da797574426c86679f76ab56a3b2c5f6127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
