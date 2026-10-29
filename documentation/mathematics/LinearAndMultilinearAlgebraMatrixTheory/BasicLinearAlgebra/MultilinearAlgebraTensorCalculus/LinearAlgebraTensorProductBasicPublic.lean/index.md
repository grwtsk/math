# Linear Algebra Tensor Product Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb262b0736d668a5626b766bb7de35e5ac5fa361`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [liftAddHom](declarations/liftaddhom.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [liftAddHom_tmul](declarations/liftaddhom-tmul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [liftAux](declarations/liftaux.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [liftAux_tmul](declarations/liftaux-tmul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [liftAux.smulₛₗ](declarations/liftaux-smul-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [lift](declarations/lift.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift.tmul](declarations/lift-tmul-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lift.tmul'](declarations/lift-tmul.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift.unique](declarations/lift-unique.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_mk](declarations/lift-mk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift_compr₂ₛₗ](declarations/lift-compr-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lift_compr₂](declarations/lift-compr.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_mk_compr₂ₛₗ](declarations/lift-mk-compr.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_mk_compr₂](declarations/lift-mk-compr-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [uncurry](declarations/uncurry.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [uncurry_apply](declarations/uncurry-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [lift.equiv](declarations/lift-equiv.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lift.equiv_apply](declarations/lift-equiv-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lift.equiv_symm_apply](declarations/lift-equiv-symm-apply.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lcurry](declarations/lcurry.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lcurry_apply](declarations/lcurry-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [curry](declarations/curry.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [curry_apply](declarations/curry-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [curry_injective](declarations/curry-injective.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ext_threefold](declarations/ext-threefold.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext_threefold'](declarations/ext-threefold-source-edition-2.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ext_fourfold](declarations/ext-fourfold-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_fourfold'](declarations/ext-fourfold-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ext_fourfold''](declarations/ext-fourfold.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comm](declarations/comm.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [comm_symm](declarations/comm-symm.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comm_symm_tmul](declarations/comm-symm-tmul.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [lift_comp_comm_eq](declarations/lift-comp-comm-eq.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [comm_trans_comm](declarations/comm-trans-comm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [comm_comp_comm](declarations/comm-comp-comm.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [comm_comp_comm_assoc](declarations/comm-comp-comm-assoc.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comm_comm](declarations/comm-comm.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mapOfCompatibleSMul](declarations/mapofcompatiblesmul.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mapOfCompatibleSMul_tmul](declarations/mapofcompatiblesmul-tmul.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mapOfCompatibleSMul_surjective](declarations/mapofcompatiblesmul-surjective.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [equivOfCompatibleSMul](declarations/equivofcompatiblesmul.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Neg.aux](declarations/neg-aux.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [neg](declarations/neg.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [neg_add_cancel](declarations/neg-add-cancel.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [neg_tmul](declarations/neg-tmul.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tmul_neg](declarations/tmul-neg.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tmul_sub](declarations/tmul-sub.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sub_tmul](declarations/sub-tmul.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [CompatibleSMul.int](declarations/compatiblesmul-int.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [CompatibleSMul.unit](declarations/compatiblesmul-unit.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceb85b63cf10360a465c1a70a546521b16b051278ffb1ebc3aa982e56b67646f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2f3438c94e55027587878a013add8a1812203a63052c2390ef1a1544f791a3c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
