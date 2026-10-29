# Bialgebra Tensor Product Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6235a87c6cf105324a932facaec8092ec3950480`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BialgebraTensorProductPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](declarations/counit-eq-alghom-tolinearmap.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](declarations/comul-eq-alghom-tolinearmap.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [_root_.TensorProduct.instBialgebra](declarations/root-tensorproduct-instbialgebra.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [counitAlgHom_def](declarations/counitalghom-def.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [comulAlgHom_def](declarations/comulalghom-def.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [map](declarations/map.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_tmul](declarations/map-tmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_toCoalgHom](declarations/map-tocoalghom.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_toAlgHom](declarations/map-toalghom.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [assoc](declarations/assoc.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [assoc_toCoalgEquiv](declarations/assoc-tocoalgequiv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [assoc_toAlgEquiv](declarations/assoc-toalgequiv.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lid](declarations/lid.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lid_toCoalgEquiv](declarations/lid-tocoalgequiv.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lid_toAlgEquiv](declarations/lid-toalgequiv.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lid_symm_apply](declarations/lid-symm-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](declarations/coalgebra-rid-eq-algebra-rid-apply.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rid](declarations/rid.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rid_toCoalgEquiv](declarations/rid-tocoalgequiv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rid_toAlgEquiv](declarations/rid-toalgequiv.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [comm](declarations/comm.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [lTensor](declarations/ltensor.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [rTensor](declarations/rtensor.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [comulBialgHom](declarations/comulbialghom.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [comm_comp_comulBialgHom](declarations/comm-comp-comulbialghom.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mulCoalgHom](declarations/mulcoalghom.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toLinearMap_mulCoalgHom](declarations/tolinearmap-mulcoalghom.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [coe_mulCoalgHom](declarations/coe-mulcoalghom.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [_root_.Coalgebra.Repr.tmul](declarations/root-coalgebra-repr-tmul.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [_root_.Coalgebra.Repr.mul](declarations/root-coalgebra-repr-mul.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [counitAlgHom_comp_includeRight](declarations/counitalghom-comp-includeright.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [comul_includeRight](declarations/comul-includeright.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mulBialgHom](declarations/mulbialghom.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mulBialgHom_toAlgHom](declarations/mulbialghom-toalghom.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [coe_mulBialgHom](declarations/coe-mulbialghom.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=123840dd57b877c3f22386074056d4549e4018911ba213f67a66385848b48d61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant3ccbd43b70e3d595af4d3e7d8253b26948aa0830422759fbcfbf8e0a11e427c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
