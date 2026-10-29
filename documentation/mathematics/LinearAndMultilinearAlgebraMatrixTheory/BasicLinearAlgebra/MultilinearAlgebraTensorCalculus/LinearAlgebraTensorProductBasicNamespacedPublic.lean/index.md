# Linear Algebra Tensor Product Basic Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a5faa086fb4732d5896296784cf7c776c1b048b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [liftAddHom](declarations/liftaddhom.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [liftAddHom_tmul](declarations/liftaddhom-tmul.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [liftAux](declarations/liftaux.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [liftAux_tmul](declarations/liftaux-tmul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [liftAux.smulₛₗ](declarations/liftaux-smul-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [lift](declarations/lift.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift.tmul](declarations/lift-tmul-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lift.tmul'](declarations/lift-tmul.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift.unique](declarations/lift-unique.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_mk](declarations/lift-mk.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift_compr₂ₛₗ](declarations/lift-compr.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lift_compr₂](declarations/lift-compr-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_mk_compr₂ₛₗ](declarations/lift-mk-compr-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_mk_compr₂](declarations/lift-mk-compr.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ext](declarations/ext.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [uncurry](declarations/uncurry.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [uncurry_apply](declarations/uncurry-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [lift.equiv](declarations/lift-equiv.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lift.equiv_apply](declarations/lift-equiv-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lift.equiv_symm_apply](declarations/lift-equiv-symm-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lcurry](declarations/lcurry.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lcurry_apply](declarations/lcurry-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [curry](declarations/curry.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [curry_apply](declarations/curry-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [curry_injective](declarations/curry-injective.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ext_threefold](declarations/ext-threefold.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext_threefold'](declarations/ext-threefold-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ext_fourfold](declarations/ext-fourfold.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_fourfold'](declarations/ext-fourfold-source-edition-3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ext_fourfold''](declarations/ext-fourfold-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comm](declarations/comm.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [comm_symm](declarations/comm-symm.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comm_symm_tmul](declarations/comm-symm-tmul.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [lift_comp_comm_eq](declarations/lift-comp-comm-eq.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [comm_trans_comm](declarations/comm-trans-comm.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [comm_comp_comm](declarations/comm-comp-comm.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [comm_comp_comm_assoc](declarations/comm-comp-comm-assoc.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comm_comm](declarations/comm-comm.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mapOfCompatibleSMul](declarations/mapofcompatiblesmul.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mapOfCompatibleSMul_tmul](declarations/mapofcompatiblesmul-tmul.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mapOfCompatibleSMul_surjective](declarations/mapofcompatiblesmul-surjective.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [equivOfCompatibleSMul](declarations/equivofcompatiblesmul.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Neg.aux](declarations/neg-aux.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [neg](declarations/neg.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [neg_add_cancel](declarations/neg-add-cancel.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [neg_tmul](declarations/neg-tmul.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tmul_neg](declarations/tmul-neg.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [tmul_sub](declarations/tmul-sub.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sub_tmul](declarations/sub-tmul.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [CompatibleSMul.int](declarations/compatiblesmul-int.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [CompatibleSMul.unit](declarations/compatiblesmul-unit.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03d990837d64a5932b6aa3b8d0c3c2751cf04dbfc807c64aba7de22b011e6aa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianta55290897f6dae25aab6e481284ef13cab0badf86f9d54003801910b8b08fc35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
