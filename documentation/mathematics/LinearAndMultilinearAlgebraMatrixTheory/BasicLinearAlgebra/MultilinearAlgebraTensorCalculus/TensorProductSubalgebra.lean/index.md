# Tensor Product Subalgebra

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ddfb5259e9732e758e5abb0d22d438096cb3d59`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductSubalgebra.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lTensorBot](declarations/ltensorbot.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lTensorBot_tmul](declarations/ltensorbot-tmul.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lTensorBot_one_tmul](declarations/ltensorbot-one-tmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lTensorBot_symm_apply](declarations/ltensorbot-symm-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rTensorBot](declarations/rtensorbot.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rTensorBot_tmul](declarations/rtensorbot-tmul.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rTensorBot_tmul_one](declarations/rtensorbot-tmul-one.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rTensorBot_symm_apply](declarations/rtensorbot-symm-apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comm_trans_lTensorBot](declarations/comm-trans-ltensorbot.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comm_trans_rTensorBot](declarations/comm-trans-rtensorbot.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [linearEquivIncludeRange](declarations/linearequivincluderange.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [linearEquivIncludeRange_toLinearMap](declarations/linearequivincluderange-tolinearmap.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [linearEquivIncludeRange_symm_toLinearMap](declarations/linearequivincluderange-symm-tolinearmap.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [linearEquivIncludeRange_tmul](declarations/linearequivincluderange-tmul.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [linearEquivIncludeRange_symm_tmul](declarations/linearequivincluderange-symm-tmul.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [algEquivIncludeRange](declarations/algequivincluderange.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [algEquivIncludeRange_toAlgHom](declarations/algequivincluderange-toalghom.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [algEquivIncludeRange_tmul](declarations/algequivincluderange-tmul.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [algEquivIncludeRange_symm_tmul](declarations/algequivincluderange-symm-tmul.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Subalgebra.mulMap](declarations/subalgebra-mulmap.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Algebra.TensorProduct.algEquivIncludeRange_symm_toAlgHom](declarations/algebra-tensorproduct-algequivincluderange-symm-toalghom.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mulMap_tmul](declarations/mulmap-tmul.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mulMap_map_comp_eq](declarations/mulmap-map-comp-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mulMap_toLinearMap](declarations/mulmap-tolinearmap.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mulMap_comm](declarations/mulmap-comm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mulMap_range](declarations/mulmap-range.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mulMap_bot_left_eq](declarations/mulmap-bot-left-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mulMap_bot_right_eq](declarations/mulmap-bot-right-eq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mulMap'](declarations/mulmap.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [val_mulMap'_tmul](declarations/val-mulmap-tmul.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mulMap'_surjective](declarations/mulmap-surjective.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8358945fbb62e6e0cf1db3cf7958064a00bf8dff55fd93fb2f7aa5927333b168 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variant4d39a121b5c6a99c014df6ecec98e038785162d15e6ce3b561de5548f2a5fff0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
